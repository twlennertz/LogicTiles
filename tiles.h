/* Various typedefs and function declarations concerning the tile encodings
 * and actions with them */

#ifndef TILES_H_
#define TILES_H_

typedef enum{M0, M1, M2} magnet;
typedef enum{T0, T1, T2, T3, T4, T5, T6, T7} tile;
typedef enum{START, IDLE_POLL, CMD_PARSE, UPDATE_CKT} state;
typedef enum{N1, N2, S1, S2, U} magcode;

typedef struct TileCodes {
    magcode mag0;
    magcode mag1;
    magcode mag2;
} TileCodes;

#endif /* TILES_H_ */
