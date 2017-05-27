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

/* Returns the first tile number detected as being changed with regard to the passed in,
 * current TileCodes structure, or a negative number if no changes detected. tileStates
 * must be NUM_TILES in size (one structure for each tile on board */
int pollTiles(TileCodes *tileStates) {
    int returnTileNum = -1;
    selectMag(M2); //Magnet 2 is baseline detection magnet

    int i;
    for(i = 0; i < NUM_TILES; i++) {
        selectBoardTile(i);
        magcode currCode = readTileMag();

        /* check if read code matches what is currently known */
        if (tileStates[i].mag2 != currCode) {
            tileStates[i].mag2 = currCode;
            returnTileNum = i;
            break;
        }
    }

    return returnTileNum;
}

/* Sets the correct GPIO pins to MUX out the magnets for the passed tileNum of the board as a
 * whole. Tiles are labeled starting from top-left, moving to the end of the row, and then moving
 * to next row, and so on. Don't forget to select the desired magnet as well with the selectmag() function.
 * Don't fret about the divisions and modulos, as the module dimensions are bases of 2 and will be
 * optimized to shifts and masks :) (or you can do it youself if you reeeeaaally want. So, if you redesign
 * a tile module, it's probably a good idea to keep the dimensions in base 2 numbers. That, or rework
 * this function with a lookup table. Up to you, dawg.  */
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
        P2OUT &= MAG_SEL0;
        break;
    case M1:
        P2OUT &= ~MAG_CTRL;
        P2OUT &= MAG_SEL1;
        break;
    case M2:
        P2OUT |= MAG_SEL0 | MAG_SEL1;
        break;
    default:
        break;
    }
}

/* Sets the correct MUX selection pins so that all modules have their outputs set for modTileNum.
 * Our application uses 3 consecutive pins (P4.1-P4.3) on port 4 for the TILE_SEL pins, so it's
 * fairly straightforward here. When in doubt, define TILE_SEL0-TILE_SEL2 in "main.h" and set them
 * using whatever port you need */
void selectModuleTile(int modTileNum) {
    P4OUT &= ~TILE_CTRL;
    P4OUT |= (modTileNum << 1);
}

/* Sets the correct MUX selection pins so that the ADC is receiving output from moduleNum.
 * Particular application uses pins 0-2 on port 3, so nothing fancy needed. Alternatively,
 * define MODULE_SEL0-MODULE_SEL2 in "main.h" and set them the old-fashion way */
void selectModule(int moduleNum) {
    P3OUT &= ~MODULE_CTRL;
    P3OUT |= moduleNum;
}
