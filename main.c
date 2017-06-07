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
#include "graph.h"
#include <stdint.h>
#include <string.h>

/* Uncomment in to put in debugging mode, which prints a lot of status stuff as it happens */
//#define _DEBUG_ON

/* Uncomment for massive runtime dump of every ADC read (for determining magnet value ranges */
//#define _ADC_DUMP

/* Current Values of the Source Blocks */
digiVal currSourceA = ZERO;
digiVal currSourceB = ZERO;
digiVal currSourceC = ZERO;
digiVal currSourceD = ZERO;

/* Current Nodes and Tiles of Probe Blocks */
Node *currProbeANode = 0;
Node *currProbeBNode = 0;
Node *currProbeCNode = 0;
Node *currProbeDNode = 0;

TileState *currProbeATile = 0;
TileState *currProbeBTile = 0;
TileState *currProbeCTile = 0;
TileState *currProbeDTile = 0;

/* Holds last read value of ADC (from readTileMag()) */
static volatile uint16_t lastReadADCValue = 0;

/* RX receive buffer */
#define RX_BUFFER_SIZE 300
static char uBuff[RX_BUFFER_SIZE + 1];
static volatile unsigned int buffIndex = 0;
static char lastRXChar;

/* TX ring buffer */
#define PRINT_BUFFER_SIZE 301
static char printBuff[PRINT_BUFFER_SIZE];
static unsigned int ringNdx = 0;
static unsigned int printNdx = 0;
static unsigned int numPendingTX = 0;

#define PROMPT_STRING ">: "

/*Flags*/
static volatile char rxPending = 0;
static volatile char adcRead = 0;

/* The currently known states of the tiles on the board */
static TileState tileStates[NUM_TILES];

int main(void) {
    init();
    __enable_interrupt();

    uPrint("\r\nLogic Tiles Version 0.1");
    printCmds();
    uPrint(">: ");

    /* Main state machine loop */
    state currentState = IDLE_POLL;
    for(;;) {

        switch (currentState) {

        case IDLE_POLL:
            //__disable_interrupt();
            currentState = idlePoll();
            //__enable_interrupt();
            break;

        case CMD_PARSE:
            //__disable_interrupt();
            currentState = cmdParse();
           // __enable_interrupt();
            break;

        case UPDATE_CKT:
            //__disable_interrupt();
            currentState = IDLE_POLL;
            //currentState = updateCkt();
            //__enable_interrupt();
            break;

        default:
            break;
        }
    }

    return 0;
}

/* Checks for a pending serial communication and dispatches to a processing state if detected.
 * Otherwise moves on to polling for changed tile states on the board. If a changed tile is
 * found, dispatches to an updating of the circuit state. Otherwise defaults to this state for
 * next state. */
state idlePoll() {
    int changedTile;
    state nextState = IDLE_POLL;

    if (rxPending) {
        rxPending = 0;
        nextState = CMD_PARSE;
    }
    else if ((changedTile = pollTiles(tileStates)) >= 0) {
        __delay_cycles(4000000);

#ifdef _DEBUG_ON
        char tempBuff[50];
        sprintf(tempBuff, "\r\nTile Change : %d\r\n>: ", changedTile);
        uPrint(tempBuff);
#endif

        updateTile(changedTile);
        //insertTile(changedTile, tileStates);

        //nextState = UPDATE_CKT;
    }
  
    return nextState;
}

state cmdParse() {
    char* bufPtr = uBuff;

#ifdef _DEBUG_ON
    uPrint("\r\nRead: ");
    uPrint(uBuff);
    uPrint("\r\n");
#endif

    uPrint("\r\n");

    if (*bufPtr && (*bufPtr == ' ' || *bufPtr == '\n' || *bufPtr == '\r'))
        bufPtr = nextToken(bufPtr);

    if (!strncmp(bufPtr, "set", 3)) {
       bufPtr = nextToken(bufPtr);
       setSource(*bufPtr);
    }
    else if (!strncmp(bufPtr, "clear", 4)) {
        bufPtr = nextToken(bufPtr);
        clearSource(*bufPtr);
    }
    else if (!strncmp(bufPtr, "printTiles", 10)) {
        printTiles();
    }
    else if (!strncmp(bufPtr, "run", 3)) {
        printProbes();
    }

    uPrint("\r\n>: ");

    return IDLE_POLL;
}

void printTiles() {
    unsigned int i;
    char buffer[50];

    uPrint("\r\n");

    for (i = 0; i < NUM_TILES; i++) {
        sprintf(buffer, "\tTile %d:\t", i);
        uPrint(buffer);

        char *typeStr;
        switch (tileStates[i].type) {
        case EMPTY:
            typeStr = "EMPTY";
            break;
        case AND:
            typeStr = "AND";
            break;
        case OR:
            typeStr = "OR";
            break;
        case XOR:
            typeStr = "XOR";
            break;
        case NOT:
            typeStr = "NOT";;
            break;
        case SOURCE_A:
            typeStr = "Source A";
            break;
        case SOURCE_B:
            typeStr = "Source B";
            break;
        case SOURCE_C:
            typeStr = "Source C";
            break;
        case SOURCE_D:
            typeStr = "SOURCE D";
            break;
        case PROBE_A:
            typeStr = "PROBE A";
            break;
        case PROBE_B:
            typeStr = "PROBE B";
            break;
        case PROBE_C:
            typeStr = "PROBE C";
            break;
        case PROBE_D:
            typeStr = "PROBE D";
            break;
        case HORIZONTAL:
            typeStr = "HORIZONTAL";
            break;
        case VERTICAL:
            typeStr = "VERTICAL";
            break;
        case WIRE_9_12:
            typeStr = "WIRE_9_12";
            break;
        case WIRE_12_3:
            typeStr = "WIRE_12_3";
            break;
        case JUMP:
            typeStr = "JUMP";
            break;
        case ULTRA_NODE:
            typeStr = "ULTRA_NODE";
            break;
        case WIRE_9_12_3:
            typeStr = "WIRE_9_12_3";
            break;
        case WIRE_6_9_12:
            typeStr = "WIRE_6_9_12";
            break;
        case WIRE_9_12_DOUBLE:
            typeStr = "WIRE_9_12_DOUBLE";
            break;
        case WIRE_12_3_DOUBLE:
            typeStr = "WIRE_12_3_DOUBLE";
            break;
        default:
            typeStr = "UNKNOWN";
            //might want to signal an error here
            break;
        }

        sprintf(buffer, "%s%s\r\n", typeStr, (tileStates[i].orientation == -1) ? " (flipped)" : "");
        uPrint(buffer);
    }
}

void printProbes() {
    uPrint("\r\n");

    if (currProbeATile && currProbeANode) {
        uPrint("\tProbe A:");
        switch (getNodeValue(currProbeANode, currProbeATile)) {
        case ONE:
            uPrint("1\r\n");
            break;
        case ZERO:
            uPrint("0\r\n");
            break;
        case INDETERMINATE:
            uPrint("Indeterminate -- poorly formed circuit\r\n");
            break;
        default:
            break;
        }
    }
}

void setSource(char source) {
#ifdef _DEBUG_ON
    char tempBuf[50];
    sprintf(tempBuf, "\r\nSource to set: %c", source);
    uPrint(tempBuf);
#endif

    uPrint("\r\n");

    switch (source) {
    case 'a':
    case 'A':
        uPrint("\tSource A set.\r\n");
        currSourceA = ONE;
        break;

    case 'b':
    case 'B':
        uPrint("\tSource B set.\r\n");
        currSourceB = ONE;
        break;

    default:
        uPrint("\tNo such source to set.\r\n");
        break;
    }
}

void clearSource(char source) {
    uPrint("\r\n");

    switch (source) {
    case 'a':
    case 'A':
        uPrint("\tSource A cleared.\r\n");
        currSourceA = ZERO;
        break;

    case 'b':
    case 'B':
        uPrint("\tSource B cleared.\r\n");
        currSourceB = ZERO;
        break;

    default:
        uPrint("\tNo such source to clear.\r\n");
        break;
    }
}

/* Moves char pointer to next token (after whitespace) in string, returning tht location (or null) */
char *nextToken(char *tok) {
    while(*tok && *tok != ' ' && *tok != '\n' && *tok != '\r')
        tok++;

    while (*tok) {
        if (*tok == ' ' || *tok == '\n' || *tok == '\r')
            tok++;
        else
            break;
    }

    return tok;
}

/* Copies the message into the ring buffer, potentially overwriting data that has not
 * yet been TXed if message is particularly long or buffer size too small. Message should be
 * null-terminated */
void uPrint(char *message) {
    int messageLen = strlen(message);
    unsigned int i;

    for (i = 0; i < messageLen; i++) {
        printBuff[ringNdx] = message[i];

        ringNdx++;

        if (ringNdx == PRINT_BUFFER_SIZE)
            ringNdx = 0;
    }

    if (numPendingTX == 0) {
        numPendingTX += messageLen;
        UCA0IFG |= UCTXIFG;             //Trigger TX interrupt if send isn't already happening
    }
    else
        numPendingTX += messageLen;
}

/* Adds a single char to the TX ring buffer */
void uPrintChar(char c) {
    printBuff[ringNdx] = c;

    ringNdx++;
    if (ringNdx == PRINT_BUFFER_SIZE)
        ringNdx = 0;

    if (numPendingTX == 0) {
        numPendingTX++;
        UCA0IFG |= UCTXIFG;             //Trigger TX interrupt if send isn't already happening
    }
    else
        numPendingTX++;
}

void printADC(uint16_t value) {
    char buffer[4];
    sprintf(buffer, "%x", value);

    uPrint(buffer);
}

void printCmds() {
    uPrint("\r\nCommands:");
    uPrint("\r\n\tprintTiles:\t\tList all tiles and their known states");
    uPrint("\r\n\tset <source-letter>:\tSet the given source to HIGH (1)");
    uPrint("\r\n\tclear <source-letter>:\tClear the given source to LOW (0)");
    uPrint("\r\n\trun:\t\t\tPrint the values of all the probes on the board");
    uPrint("\r\n");
}

void printPrompt() {
    uPrint(PROMPT_STRING);
}

void reportError(int errorCode) {

    switch (errorCode) {

        case BAD_CMD:
            uPrint("\r\nERROR: INPUT ERROR (preceeding input was lost) ");

            break;

        default:
            break;

    }

    uPrint("\r\n>: ");
}

/* Reads all of the magnets of a passed in board tile number, determining its type
 * and inserting it into the graph structure representing the logic circuit */
void updateTile(unsigned int tileNum) {
    selectBoardTile(tileNum);

    /* Need to determine the polarity of mag2 to know the orientation of the tile. North values values
     * mean normal orientation, South values mean orientation is flipped backwards */
    selectMag(M2);
    tileStates[tileNum].mag2 = readTileMag();

    if (tileStates[tileNum].mag2 == N1 || tileStates[tileNum].mag2 == N2) {
        tileStates[tileNum].orientation = 1; // normal orientation

        selectMag(M0);
        tileStates[tileNum].mag0 = readTileMag();

        selectMag(M1);
        tileStates[tileNum].mag1 = readTileMag();
    }
    else if (tileStates[tileNum].mag2 == S1 || tileStates[tileNum].mag2 == S2) {
        tileStates[tileNum].orientation = -1; //flipped orientation

        selectMag(M1);
        tileStates[tileNum].mag0 = readTileMag();

        selectMag(M0);
        tileStates[tileNum].mag1 = readTileMag();
    }

    determineType(&(tileStates[tileNum]));
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
    initTileState();
    initNodes();

    unvisitAllNodes(tileStates);
    selectBoardTile(0);                         //Initialize board tile selection to 0 to start w/ known state
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

    UCA0IE |= UCTXIE;                       // Enable USCI_A0 TX interrupt
}

/* Initializes the known states of each tile to U (no magnet present) */
void initTileState() {
    unsigned int i;
    for (i = 0; i < NUM_TILES; i++) {
        tileStates[i].mag0 = U;
        tileStates[i].mag1 = U;
        tileStates[i].mag2 = U;
        tileStates[i].type = EMPTY;
        tileStates[i].orientation = 1;

        tileStates[i].leftNode = 0;
        tileStates[i].rightNode = 0;
        tileStates[i].topNode = 0;
        tileStates[i].bottomNode = 0;
    }
}

/* Blocking function that initializes and waits out an ADC read and returns the magnet
 * encoding for the currently mux-selected hall-effect sensor (selected with selectBoardTile() and selectMag())
 * in tiles.c */
magcode readTileMag() {
    magcode returnCode = U;
    uint16_t adcAvg, i = 0;

    /* Average some reads together */
    for (i = 0, adcAvg = 0; i < ADC_AVG_COUNT; i++) {
        adcRead = 0;
        ADC12CTL0 |= ADC12ENC | ADC12SC;        // Start sampling/conversion

        while(!adcRead)
           ;

        adcAvg = (i == 0) ? lastReadADCValue : (adcAvg + lastReadADCValue);
    }

    adcAvg /= i;

    //__bis_SR_register(LPM0_bits | GIE);     // LPM0, ADC12_ISR will force exit
    //__no_operation();                       // For debugger

#ifdef _ADC_DUMP
    uPrint("ADC VAL: ");
    printADC(adcAvg);
    uPrint("\r\n");
    __delay_cycles(200000);
#endif

    if (adcAvg < U_MIN) {
        if (adcAvg < S2_MIN)
            returnCode = S1;
        else
            returnCode = S2;
    }
    else if (adcAvg > U_MAX) {
        if (adcAvg > N2_MAX)
            returnCode = N1;
        else
            returnCode = N2;
    }

    adcRead = 0;
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
            lastReadADCValue = ADC12MEM0;
            adcRead = 1;

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
            lastRXChar = UCA0RXBUF;

            if ((buffIndex == RX_BUFFER_SIZE)) {
                reportError(BAD_CMD);
                buffIndex = 0;
            }

            if (lastRXChar != '\r') {
                if (lastRXChar == '\bs' && buffIndex > 0) {
                    buffIndex--;
                }
                else if (!rxPending) {
                    if (lastRXChar != '\bs')
                        uBuff[buffIndex++] = lastRXChar;

                    uPrintChar(lastRXChar);
                }
            }
            else {
                uBuff[buffIndex] = '\0';
                buffIndex = 0;
                rxPending = 1;
            }

            break;

        case USCI_UART_UCTXIFG:
            UCA0IFG &= ~UCTXIFG;

            if (numPendingTX > 0) {
                UCA0TXBUF = printBuff[printNdx++];

                if (printNdx == PRINT_BUFFER_SIZE)
                    printNdx = 0;

                numPendingTX--;
            }

            break;

        case USCI_UART_UCSTTIFG: break;
        case USCI_UART_UCTXCPTIFG: break;
        default: break;
    }
}
