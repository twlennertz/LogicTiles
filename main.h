#ifndef MAIN_H
#define MAIN_H

#define NUM_TILES 8 //8 * number of modules in board

/* Hall Effect Sensor Value ranges for each magcode */
#define U_MIN
#define U_MAX
#define S1_MIN
#define N1_MAX

#define ADC1_PIN 0x06
#define TILE_CTRL 0b00001110
#define MAG_CTRL 0b01100000

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

#define LED0 0x01
#define LED1 0x02
#define ADC_5 0x06

/* function declarations */
void init();
void initADC();
void initUSART();
void initTileCodes();

state idlePoll();
int pollTiles();
void selectMag(magnet m);
void selectTile(int tileNum);
magcode readTileMag();

#endif
