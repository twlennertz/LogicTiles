//***************************************************************************************
// MSP430 Logic Tile State Machine
// Spring 2017 Senior Project
// Cal Poly CPE Department
//
// Tristan Lennertz & Andrew Wheeler
//***************************************************************************************

#include <msp430.h>
#include "main.h"
#include "tiles.h"
#include <stdint.h>

/*Current States*/
static tile curTile = T0;
static magnet curMagnet = M0;

/* Holds last read value of ADC (from readTileMag()) */
static volatile uint16_t lastReadADCValue = 0;

/*Major Data structures*/
const char magList[3] = { MAG_0, MAG_1, MAG_2 };
const char tileList[8] = { TILE_0, TILE_1, TILE_2, TILE_3, TILE_4, TILE_5, TILE_6, TILE_7 };
char uBuff[51];
static int buffIndex = 0;

/*Flags*/
static volatile char rxPending = 0;

/* The currently known states of the magnets for each tile on the board */
static TileCodes tileStates[NUM_TILES];

/*
 * NOTE: Function mainly for Debugging Purposes
 *
 * Cycles all magnets for each tile
 */
void cycleAllMag() {

    if (curTile == T7) {
        curTile = T0;
        if (curMagnet == M2) {
            curMagnet = M0;
        }
        else {
            curMagnet++;
        }
        P2OUT = magList[curMagnet];
    }
    else {
        curTile++;
    }

    P4OUT = tileList[curTile];
}

/*
 * Cycles through all tiles, and performs
 * and A-D conversion on Magnet 1 (Detector Magnet).
 * The appropriate IRQ will determine if a new tile is
 * detected.
 */
void findNewTile() {

    P2OUT = M1;

    if (curTile == T7) {
        curTile = T0;
    }
    else {
        curTile++;
    }

    P4OUT = tileList[curTile];

}

/*
 * Given the current layout of tiles on the board, this
 * function will create the corresponding logic circuit.
 */
void constructCircuit() {

}

/*
 * Adds a new tile to the list of running tiles.
 * The other sensors of the tile are to be read, resulting
 * into a 3 byte code that identifies a unique tile.
 */
void addTile(int tile) {


}

void uPrint(char * message) {

    while(*message) {
        while(!(UCA0IFG&UCTXIFG));
        UCA0TXBUF = *message;
        message++;
    }
}

void printCmds() {

    uPrint("\r\nCommands:");
    uPrint("\r\n1: Print Commands");
    uPrint("\r\n2: Change Inputs");
    uPrint("\r\n3: I dunno, something else?");
    uPrint("\n");
}

int main(void) {
    init();


    /* Testing code */
    //P1OUT &= ~0x02;
    P1OUT |= 0x02 | BIT0;
    P4OUT = TILE_0;                             //Select Tile 0
    P2OUT = MAG_2;                              //Select Mag 0

    uPrint("\r\nLogic Tiles Version 0.1");
    printCmds();
    uPrint("\r\n>: ");

    /* Main state machine loop */
    state currentState = IDLE_POLL;
    __enable_interrupt();

    for(;;) {

        switch (currentState) {

        case IDLE_POLL:
            __disable_interrupt();
            currentState = idlePoll();
            __enable_interrupt();
            break;

        case CMD_PARSE:
            __disable_interrupt();
            currentState = cmdParse();
            __enable_interrupt();
            break;

        default:
            break;
        }

        ADC12CTL0 |= ADC12ENC | ADC12SC;        // Start sampling/conversion

        //__bis_SR_register(LPM0_bits | GIE);     // LPM0,
        __no_operation();                       // For debugger



    }

    return 0;
}

/* Checks for a pending serial communication and dispatches to a processing state if detected.
 * Otherwise moves on to polling for changed tile states on the board. If a changed tile is
 * found, dispatches to an updating of the circuit state. Otherwise defaults to this state for
 * next state. */
state idlePoll() {

    state nextState = IDLE_POLL;

    if (rxPending) {

        uPrint("\r\nGoing to CMD_PARSE");
        rxPending = 0;

        nextState = CMD_PARSE;
    }
    else if (pollTiles(tileStates) > 0) {
        //may need to grab the above return value of pollTiles() in order to change. Might not.
        nextState = UPDATE_CKT;
    }
  
    return nextState;
}

/* One-time configuration for I/O and various features */
void init() {
    WDTCTL = WDTPW | WDTHOLD;                   // Stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;                       // Disable the GPIO power-on default high-impedance mode
                                                // to activate previously configured port settings

    P1DIR |= LED0 | LED1;                       //Set LEDs as output
    P4DIR |= TILE_CTRL;                         //Set Tile select pins as outputs
    P2DIR |= MAG_CTRL;                          //Set Mag select pins as outputs
    P3DIR |= MODULE_CTRL;                       //Set Module select pins as outputs

    initADC();
    initUSART();
    initTileCodes();
}

/*
 * Initializes ADC1 with input P1.5
 */
void initADC() {

    P1SEL1 |= BIT5;                         // Configure P1.5 for ADC
    P1SEL0 |= BIT5;

    // Configure ADC12
    ADC12CTL0 = ADC12SHT0_2 | ADC12ON;      // Sampling time, S&H=16, ADC12 on
    ADC12CTL1 = ADC12SHP;                   // Use sampling timer
    ADC12CTL2 |= ADC12RES_2;                // 12-bit conversion results
    ADC12MCTL0 |= ADC12INCH_5;              // A1 ADC input select; Vref=AVCC
    ADC12IER0 |= ADC12IE0;                  // Enable ADC conv complete interrupt

}

/*
 * Initializes USART 01
 * NOTE: This function has not been tested yet!
 */
void initUSART() {

    P2SEL0 &= ~(BIT0 | BIT1);
    P2SEL1 |= BIT0 | BIT1;                  // USCI_A0 UART operation

    // Startup clock system with max DCO setting ~8MHz
    CSCTL0_H = CSKEY_H;                     // Unlock CS registers
    CSCTL1 = DCOFSEL_3 | DCORSEL;           // Set DCO to 8MHz
    CSCTL2 = SELA__VLOCLK | SELS__DCOCLK | SELM__DCOCLK;
    CSCTL3 = DIVA__1 | DIVS__1 | DIVM__1;   // Set all dividers
    CSCTL0_H = 0;                           // Lock CS registers

    // Configure USCI_A0 for UART mode
    UCA0CTLW0 = UCSWRST;                    // Put eUSCI in reset
    UCA0CTLW0 |= UCSSEL__SMCLK;             // CLK = SMCLK
    // Baud Rate calculation
    // 8000000/(16*9600) = 52.083
    // Fractional portion = 0.083
    // User's Guide Table 21-4: UCBRSx = 0x04
    // UCBRFx = int ( (52.083-52)*16) = 1
    UCA0BRW = 52;                           // 8000000/16/9600
    UCA0MCTLW |= UCOS16 | UCBRF_1 | 0x4900;
    UCA0CTLW0 &= ~UCSWRST;                  // Initialize eUSCI
    UCA0IE |= UCRXIE;                       // Enable USCI_A0 RX interrupt
}

/* Initializes the known states of each tile to U (no magnet present) */
void initTileCodes() {
    int i;
    for (i = 0; i < NUM_TILES; i++) {
        tileStates[i].mag0 = U;
        tileStates[i].mag1 = U;
        tileStates[i].mag2 = U;
    }
}

state cmdParse() {

    //char buf[5];

    uPrint("\n\rI Read: ");
    uPrint(uBuff);
    uPrint("\r\n>:");

    uBuff[0] = '\0';

    return IDLE_POLL;
}

void reportError(int errorCode) {

    switch (errorCode) {

        case BAD_CMD:
            uPrint("\r\nERROR: INPUT ERROR");
            uPrint("\r\n>:");
            break;

        default:
            break;
        
    }
}

/* Blocking function that initializes and waits out an ADC read and returns the magnet
 * encoding for the currently mux-selected hall-effect sensor (selected with selectBoardTile() and selectMag())
 * in tiles.c */
magcode readTileMag() {
    magcode returnCode = U;

    ADC12CTL0 |= ADC12ENC | ADC12SC;        // Start sampling/conversion
    __bis_SR_register(LPM0_bits | GIE);     // LPM0, ADC12_ISR will force exit
    __no_operation();                       // For debugger

    if (lastReadADCValue < U_MIN) {
        if (lastReadADCValue < S1_MIN)
            returnCode = S2;
        else
            returnCode = S1;
    }
    else if (lastReadADCValue > U_MAX) {
        if (lastReadADCValue > N1_MAX)
            returnCode = N2;
        else
            returnCode = N1;
    }

    return returnCode;
}

/*
 * ADC INTERRUPT VECTOR
 */
#if defined(__TI_COMPILER_VERSION__) || defined(__IAR_SYSTEMS_ICC__)
#pragma vector = ADC12_B_VECTOR
__interrupt void ADC12_ISR(void)
#elif defined(__GNUC__)
void __attribute__ ((interrupt(ADC12_B_VECTOR))) ADC12_ISR (void)
#else
#error Compiler not supported!
#endif
{
    switch(__even_in_range(ADC12IV, ADC12IV__ADC12RDYIFG))
    {
        case ADC12IV__NONE:        break;   // Vector  0:  No interrupt
        case ADC12IV__ADC12OVIFG:  break;   // Vector  2:  ADC12MEMx Overflow
        case ADC12IV__ADC12TOVIFG: break;   // Vector  4:  Conversion time overflow
        case ADC12IV__ADC12HIIFG:  break;   // Vector  6:  ADC12BHI
        case ADC12IV__ADC12LOIFG:  break;   // Vector  8:  ADC12BLO
        case ADC12IV__ADC12INIFG:  break;   // Vector 10:  ADC12BIN
        case ADC12IV__ADC12IFG0:            // Vector 12:  ADC12MEM0 Interrupt
            //test code
            /*if (ADC12MEM0 >= 0x7ff)         // ADC12MEM0 = A1 > 0.5AVcc?
                P1OUT |= BIT0;              // P1.0 = 1
            else
                P1OUT &= ~BIT0;             // P1.0 = 0 */

            lastReadADCValue = ADC12MEM0;

            // Exit from LPM0 and continue executing main
            __bic_SR_register_on_exit(LPM0_bits);

            break;
        case ADC12IV__ADC12IFG1:   break;   // Vector 14:  ADC12MEM1
        case ADC12IV__ADC12IFG2:   break;   // Vector 16:  ADC12MEM2
        case ADC12IV__ADC12IFG3:   break;   // Vector 18:  ADC12MEM3
        case ADC12IV__ADC12IFG4:   break;   // Vector 20:  ADC12MEM4
        case ADC12IV__ADC12IFG5:   break;   // Vector 22:  ADC12MEM5
        case ADC12IV__ADC12IFG6:   break;   // Vector 24:  ADC12MEM6
        case ADC12IV__ADC12IFG7:   break;   // Vector 26:  ADC12MEM7
        case ADC12IV__ADC12IFG8:   break;   // Vector 28:  ADC12MEM8
        case ADC12IV__ADC12IFG9:   break;   // Vector 30:  ADC12MEM9
        case ADC12IV__ADC12IFG10:  break;   // Vector 32:  ADC12MEM10
        case ADC12IV__ADC12IFG11:  break;   // Vector 34:  ADC12MEM11
        case ADC12IV__ADC12IFG12:  break;   // Vector 36:  ADC12MEM12
        case ADC12IV__ADC12IFG13:  break;   // Vector 38:  ADC12MEM13
        case ADC12IV__ADC12IFG14:  break;   // Vector 40:  ADC12MEM14
        case ADC12IV__ADC12IFG15:  break;   // Vector 42:  ADC12MEM15
        case ADC12IV__ADC12IFG16:  break;   // Vector 44:  ADC12MEM16
        case ADC12IV__ADC12IFG17:  break;   // Vector 46:  ADC12MEM17
        case ADC12IV__ADC12IFG18:  break;   // Vector 48:  ADC12MEM18
        case ADC12IV__ADC12IFG19:  break;   // Vector 50:  ADC12MEM19
        case ADC12IV__ADC12IFG20:  break;   // Vector 52:  ADC12MEM20
        case ADC12IV__ADC12IFG21:  break;   // Vector 54:  ADC12MEM21
        case ADC12IV__ADC12IFG22:  break;   // Vector 56:  ADC12MEM22
        case ADC12IV__ADC12IFG23:  break;   // Vector 58:  ADC12MEM23
        case ADC12IV__ADC12IFG24:  break;   // Vector 60:  ADC12MEM24
        case ADC12IV__ADC12IFG25:  break;   // Vector 62:  ADC12MEM25
        case ADC12IV__ADC12IFG26:  break;   // Vector 64:  ADC12MEM26
        case ADC12IV__ADC12IFG27:  break;   // Vector 66:  ADC12MEM27
        case ADC12IV__ADC12IFG28:  break;   // Vector 68:  ADC12MEM28
        case ADC12IV__ADC12IFG29:  break;   // Vector 70:  ADC12MEM29
        case ADC12IV__ADC12IFG30:  break;   // Vector 72:  ADC12MEM30
        case ADC12IV__ADC12IFG31:  break;   // Vector 74:  ADC12MEM31
        case ADC12IV__ADC12RDYIFG: break;   // Vector 76:  ADC12RDY
        default: break;
    }
}

/*
 * USART INTERRUPT VECTOR
 */
#if defined(__TI_COMPILER_VERSION__) || defined(__IAR_SYSTEMS_ICC__)
#pragma vector=EUSCI_A0_VECTOR
__interrupt void USCI_A0_ISR(void)
#elif defined(__GNUC__)
void __attribute__ ((interrupt(EUSCI_A0_VECTOR))) USCI_A0_ISR (void)
#else
#error Compiler not supported!
#endif
{
    switch(__even_in_range(UCA0IV, USCI_UART_UCTXCPTIFG))
    {
        case USCI_NONE: break;
        case USCI_UART_UCRXIFG:

            if ((buffIndex == 50)) {
                reportError(BAD_CMD);
                buffIndex = 0;
            }

            if (UCA0RXBUF != '\r') {
                if (UCA0RXBUF == '\bs' && buffIndex > 0) {
                    buffIndex--;
                }
                else
                    uBuff[buffIndex++] = UCA0RXBUF;

                while(!(UCA0IFG&UCTXIFG));
                UCA0TXBUF = UCA0RXBUF;
            }
            else {
                uBuff[buffIndex] = '\0';
                buffIndex = 0;
                rxPending = 1;
            }

            break;
        case USCI_UART_UCTXIFG: break;
        case USCI_UART_UCSTTIFG: break;
        case USCI_UART_UCTXCPTIFG: break;
        default: break;
    }
}
