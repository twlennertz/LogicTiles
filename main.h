/* Contains most of the application-specific defines for the tiles, including
 * specific pins used, ADC threshholds, and configuration of the modules making
 * up the board. */

#ifndef MAIN_H
#define MAIN_H

#include <stdio.h>
#include <stdint.h>
#include "tiles.h"

/* Defines for the number and layout of modules. Must be in a rectangular layout
 * for the modules, but works with any particular dimmension of such. */
#define NUM_TILES (8)       //8 * number of modules comprising the board

#define MODULE_COLUMNS (1)  //The number of modules making up the board's width
#define MODULE_ROWS (1)     //The number of modules making up the board's height

#define TILE_WIDTH (4)      //4 * MODULE_COLUMNS
#define TILE_HEIGHT (2)     //2 * MODULE_ROWS

/* The maximum possible nodes that could exist in a graph produced by this board.
 * Alternatively, just calculate it and put that as a straight define. Can also
 * set this value to something lower and malloc if the number of needed nodes exceeds
 * what's pre-allocated. We have opted to avoid malloc altogether in this implementation */
#define MAX_NODES ((10 * MODULE_COLUMNS * MODULE_ROWS) + \
                   (2 * (MODULE_COLUMNS - 1) * MODULE_ROWS) + \
                   (4 * (MODULE_ROWS - 1) * MODULE_COLUMNS))

/* Hall Effect Sensor Value ranges for each magcode. May need to be adjusted for
 * the particular ADC and the application's distance of the magnet from each sensor
 * Note that S2 and N2 correspond to the values closer to the U range, being in
 * the deeper tile holes. N1 and S1 are the shallower tile holes with values
 * that range further from U than N2 and S2 */
#define U_MIN 0x4D2     //Min of the no-magnet-detected range
#define U_MAX 0x542     //Max of the no-magnet-detected range
#define S2_MIN 0x43A    //Min of the "weak" south magnet range.
#define N2_MAX 0x5EC    //Max of the "weak" north magnet range

/* The various states of the main loop state machine */
typedef enum{IDLE_POLL, CMD_PARSE, UPDATE_CKT} state;

/* Specific Pins used for ADC, Tile Muxing, and Magnet Muxing */
#define ADC1_PIN 0x06 //Port 1, Pin 5 (A5)

#define TILE_CTRL 0b00001110 //Pins 1-3 on Port 4
#define TILE_SEL0 (BIT1)
#define TILE_SEL1 (BIT2)
#define TILE_SEL2 (BIT3)

#define MAG_CTRL 0b01100000 //Pins 5 & 6 on Port 2
#define MAG_SEL0 (BIT5)
#define MAG_SEL1 (BIT6)

#define MODULE_CTRL 0b00000111 //Pins 0 - 2 on Port 3
#define MODULE_SEL0 (BIT0);
#define MODULE_SEL1 (BIT1);
#define MODULE_SEL2 (BIT2);

/* Error Codes */
#define BAD_CMD 1

/* function declarations */
void init();

void initADC();
void initUSART();
void initTileState();

state idlePoll();
state cmdParse();

void uPrint(char * message);
void printCmds();

void updateTile(unsigned int tileNum);
magcode readTileMag();

/* Quick and dirty defines from our specific applications */
//Tile Bit Masks
#define TILE_0 0b00000000
#define TILE_1 0b00000010
#define TILE_2 0b00000100
#define TILE_3 0b00000110
#define TILE_4 0b00001000
#define TILE_5 0b00001010
#define TILE_6 0b00001100
#define TILE_7 0b00001110

//Magnet Bit Masks
#define MAG_0 0b00100000
#define MAG_1 0b01000000
#define MAG_2 0b01100000

//PIN DEFINITIONS
#define LED0 0x01
#define LED1 0x02
#define ADC_5 0x06
#endif
