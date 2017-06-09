/*
 * The various tile selection and reading utility functions. It should be noted
 * that these are intended to work for a board comprised of a rectangular configuration
 * of module (set the dimensions in "main.h"). MAG_SEL0-MAG_SEL1 and TILE_SEL0-TILE_SEL2
 * are meant to run to the corresponding pins on each module (they all share the same
 * MAG_SEL and TILE_SEL pins). That means that selectMag() and selectModuleTile() will
 * select the magnet number and tile number for ALL modules. The single output from
 * each of those modules should then be MUXed with an auxillary board / circuit, with the
 * particular module output being selected using the MODULE_SEL pins. In summary:
 *
 * selectMag(), selectModuleTile() set the magnet and tile for EVERY MODULE AT ONCE
 * selectModule() sets which module output will be muxed to and read on the ADC
 * readTileMag() will return the value of whatever was selected with the above
 * pollTiles() and selectBoardTile() work on a board level, as long as the correct
 *  dimmensions have been defined.
 */

#include <msp430.h>
#include "main.h"
#include "tiles.h"

/* Keeps track of current module selected */
int selectedModule = 0;

/* Each call checks a new tile on the board until all have been checked, then cycles back
 * to tile 0. Returns the current tile number checked if any of the read magnets differ from
 * it's known tileStates value, or a negative number if no changes detected. tileStates
 * must be NUM_TILES in size (one structure for each tile on board */
int pollTiles(TileState *tileStates) {
    static unsigned int currTileNum = 0;
    int returnTileNum = -1;
    magcode currCode;

    selectBoardTile(currTileNum);

    /* Magnet 2 check */
    selectMag(M2);
    currCode = readTileMag();

    if (tileStates[currTileNum].mag2 != currCode) {
        tileStates[currTileNum].mag2 = currCode;
        returnTileNum = currTileNum;
    }

    /* Magnet 1 check */
//    selectMag(M1);
//    currCode = readTileMag();

//    if (tileStates[currTileNum].mag1 != currCode) {
//        tileStates[currTileNum].mag1 = currCode;
//        returnTileNum = currTileNum;
//    }

    /* Maget 0 check */
//    selectMag(M0);
//    currCode = readTileMag();

//    if (tileStates[currTileNum].mag0 != currCode) {
//        tileStates[currTileNum].mag0 = currCode;
//        returnTileNum = currTileNum;
//    }

    /* Increment tile number and wrap to 0 if needed */
    currTileNum++;
    if (currTileNum == NUM_TILES)
        currTileNum = 0;

    return returnTileNum;
}

/* Sets the correct GPIO pins to MUX out the magnets for the passed tileNum of the board as a
 * whole. Tiles are labeled starting from top-left, moving to the end of the row, and then moving
 * to next row, and so on. Don't forget to select the desired magnet as well with the selectmag() function.
 * Don't fret about the divisions and modulos, as the module dimensions are bases of 2 and will be
 * optimized to shifts and masks :) (or you can do it youself if you reeeeaaally want. So, if you redesign
 * a tile module, it's probably a good idea to keep the dimensions in base 2 numbers. That, or rework
 * this function with a lookup table. Up to you, dawg. */
void selectBoardTile(int tileNum) {
    int rowNum, colNum, moduleNum, moduleTileNum;

    /* Determine the tile row and column #s. */
    rowNum = tileNum / TILE_WIDTH;
    colNum = tileNum - (rowNum * TILE_WIDTH);

    /* Determine the Module number and set the MUX to the output of that module
     * Modules are numbered in the same type of ordering as tiles (left -> right, top->bottom) */
    moduleNum = ((rowNum / 2) * MODULE_COLUMNS) + (colNum / 4);
    selectModule(moduleNum);

    /* Determine which of the tiles on the particular selected modules needs to be selected for a read,
     * and select it with the selectModuleTile muxing function */
    moduleTileNum = ((rowNum % 2) * 4) + (colNum % 4);
    selectModuleTile(moduleTileNum);
}

/* Sets the correct GPIO pins to MUX out the passed magnet number for whatever tile is currently selected.
 * This current selection uses Port 2 pins for MAG_SEL0 and MAG_SEL1. We recommend using
 * adjacent pins, because it makes assignment potentially easier. */
void selectMag(magnet mag) {
    switch (mag) {
    case M0:
        P2OUT &= ~MAG_CTRL;
        P2OUT |= MAG_SEL0;
        break;
    case M1:
        P2OUT &= ~MAG_CTRL;
        P2OUT |= MAG_SEL1;
        break;
    case M2:
        P2OUT |= MAG_SEL0 | MAG_SEL1;
        break;
    default:
        break;
    }

    __delay_cycles(200); // to give time to the mux to switch
}

/* Sets the correct MUX selection pins so that all modules have their outputs set for modTileNum.
 * Our application uses 3 consecutive pins (P4.1-P4.3) on port 4 for the TILE_SEL pins, so it's
 * fairly straightforward here. When in doubt, define TILE_SEL0-TILE_SEL2 in "main.h" and set them
 * using whatever port you need */
void selectModuleTile(int modTileNum) {
    P4OUT &= ~TILE_CTRL;
    P4OUT |= (modTileNum << 1);
}

/* Meant to setsthe correct MUX selection pins so that the ADC is receiving output from moduleNum.
 * That's what this function WILL have, if an auxillary board is designed that muxes together multiple
 * modules. Currently, we're just feeding each module output into a different ADC pin and this function
 * sets the number of the module whose ADC pin we need for the next sensor read */
void selectModule(int moduleNum) {
    selectedModule = moduleNum;

    ADC12CTL0 &= ~ADC12ENC;
    ADC12MCTL0 &= ~ADC12INCH_5 & ~ADC12INCH_4 & ~ADC12INCH_15;

    switch (selectedModule) {
    case 0:
        ADC12MCTL0 |= ADC12INCH_5;                      // A5 ADC input select; Vref=AVCC
        break;
    case 1:
        ADC12MCTL0 |= ADC12INCH_4;                      // A4 ADC input select; Vref=AVCC
        break;
    case 2:
        ADC12MCTL0 |= ADC12INCH_15;                     // A15 ADC input select; Vref=AVCC
        break;
    }

    __delay_cycles(500);
}

/* Determines the type of the tile represented by the TileState structure pointed to by *tile, done through
 * encoding of the mag0-mag2 fields */
void determineType(TileState *tile) {
    if (tile->mag2 == S1 || tile->mag2 == N1) { /* Gates & sources have a mag2 value of magnitude X1 */
        switch (tile->mag0) {
        case U:                                 /* gates have mag0 value of U */
            switch (tile->mag1) {
            case N1:
                tile->type = AND;
                break;
            case N2:
                tile->type = OR;
                break;
            case S1:
                tile->type = XOR;
                break;
            case S2:
                tile->type = NOT;
                break;
            case U:
                tile->type = UNDEFINED;
                break;
            }
            break;
        case N1:                                /* Sources have a mag0 value of N1 */
            switch (tile->mag1) {
            case N1:
                tile->type = SOURCE_A;
                break;
            case N2:
                tile->type = SOURCE_B;
                break;
            case S1:
                tile->type = SOURCE_C;
                break;
            case S2:
                tile->type = SOURCE_D;
                break;
            case U:
                tile->type = UNDEFINED;
                break;
            }
            break;
        case S1:                                /* Probes have a mag0 value of S1 */
            switch (tile->mag1) {
            case N1:
                tile->type = PROBE_A;
                break;
            case N2:
                tile->type = PROBE_B;
                break;
            case S1:
                tile->type = PROBE_C;
                break;
            case S2:
                tile->type = PROBE_D;
                break;
            case U:
                tile->type = UNDEFINED;
                break;
            }
            break;
        default:
            tile->type = UNDEFINED;
            break;
        }
    }
    else if (tile->mag2 == S2 || tile->mag2 == N2) { /* Connectors have a mag2 value of magnitude X2 */
        switch(tile->mag0) {
        case U:
            switch (tile->mag1) {
            case N1:
                tile->type = HORIZONTAL;
                break;
            case S1:
                tile->type = VERTICAL;
                break;
            case N2:
                tile->type = WIRE_9_12;
                break;
            case S2:
                tile->type = WIRE_12_3;
                break;
            case U:
                tile->type = UNDEFINED;
                break;
            }
            break;
        case N1:
            switch (tile->mag1) {
            case N1:
                tile->type = JUMP;
                break;
            case S1:
                tile->type = ULTRA_NODE;
                break;
            case N2:
                tile->type = WIRE_9_12_3;
                break;
            default:
                tile->type = UNDEFINED;
                break;
            }
            break;
        case S1:
            switch (tile->mag1) {
            case N1:
                tile->type = WIRE_9_12_DOUBLE;
                break;
            case S1:
                tile->type = WIRE_12_3_DOUBLE;
                break;
            case S2:
                tile->type = WIRE_6_9_12;
                break;
            default:
                tile->type = UNDEFINED;
                break;
            }
            break;
        default:
            tile->type = UNDEFINED;
            break;
        }
    }
    else {
        tile->orientation = 1;
        tile->type = EMPTY;
    }
}

int isActiveType(TileState *tile) {

    int isActive = 0;

    if ((tile->mag2 == S1 || tile->mag2 == N1) && ((tile->mag0 == U) || (tile->mag0 == N1))) {
        isActive = 1;
    }

    return isActive;
}
