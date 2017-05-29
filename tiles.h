/* Various typedefs and function declarations concerning the tile encodings
 * and actions with them, regardless of the number of modules or particular pins used.
 *
 * See "main.h" for implementation-specific defines.
 */

#ifndef TILES_H_
#define TILES_H_

typedef enum{M0, M1, M2} magnet;
typedef enum{N1, N2, S1, S2, U} magcode;

/* Different types of tiles possible on the board, each with a unique magnet encoding.
 * Note that the WIRE_X_X naming scheme indicates how the wires are laid on the tile
 * like hands on a clock (e.g. 9_12 being hands pointing at 9 & 12 on a clock face) */
typedef enum {EMPTY, AND, OR, XOR, NOT, SOURCE_A, SOURCE_B, SOURCE_C, SOURCE_D, PROBE_A,
              PROBE_B, PROBE_C, PROBE_D, HORIZONTAL, VERTICAL, WIRE_9_12, WIRE_12_3,
              JUMP, ULTRA_NODE, WIRE_9_12_3, WIRE_6_9_12, WIRE_9_12_DOUBLE, WIRE_12_3_DOUBLE,
              UNDEFINED} tileType;

struct Node; //Needed because TileState and Node are mutually referential (Node in "graph.h")
typedef struct TileState {
    magcode mag0;
    magcode mag1;
    magcode mag2;

    tileType type;          // determined by the encoding of mag0-mag2
    int orientation;        // 1 is normal orientation, -1 is flipped (upside-down)

    Node *leftNode;         // not all will be used for each tile type
    Node *rightNode;
    Node *topNode;
    Node *bottomNode;

    struct *TileState next; //for targets list of a Node
} TileState;

/* Function Declarations */
int pollTiles(TileState *tileStates);
void selectMag(magnet m);
void selectBoardTile(int tileNum);
void selectModuleTile(int modTileNum);
void selectModule(int moduleNum);
void determineType(TileState *tile);

/* Might not need - from testing phase */
typedef enum{T0, T1, T2, T3, T4, T5, T6, T7} tile;

#endif /* TILES_H_ */
