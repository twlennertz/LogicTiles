/* For the creation and manipulation of a graph representing the logic circuit
 * formed by the tiles. */

#include "main.h"
#include "tiles.h"
#include "graph.h"

static Node preallocNodes[MAX_NODES];

static Node *freeListHead;
static Node *freeListTail;

void insertTile(unsigned int changedTile, TileState *tileStates) {
    TileState *toInsert = tileStates + changedTile;

    int leftTile, rightTile, bottomTile, topTile, horizontalCheck, verticalCheck;

    /* Calculate the tile numbers of the immediate neighbors of the tile in question.
     * No neighbor (due to edge of board) is denoted with -1. This is where the flipped
     * orientation is taken into consideration, with the left/right and top/bottom
     * neighbors being swapped if the orientation is -1. No further orientation consideration
     * will be needed after this step. */
    horizontalCheck = changedTile % TILE_WIDTH;
    verticalCheck = changedTile % TILE_HEIGHT;

    if (horizontalCheck == 0) { //left edge
        leftTile = -1;
        rightTile = changedTile + 1;
    }
    else if (horizontalCheck == TILE_WIDTH - 1) { //right edge
        rightTile = -1;
        leftTile = changedTile - 1;
    }
    else {
        leftTile = changedTile - 1;
        rightTile = changedTile + 1;
    }

    if (verticalCheck == 0) { //top edge
        topTile = -1;
        bottomTile = changedTile - 1;
    }
    else if (verticalCheck == TILE_HEIGHT - 1) { //bottom edge
        bottomTile = -1;
        topTile = changedTile + 1;
    }
    else {
        topTile = changedTile + 1;
        bottomTile = changedTile - 1;
    }

    /* Swap neighbors if orientation is flipped */
    if (toInsert->orientation == -1) {
        int temp = leftTile;
        leftTile = rightTile;
        rightTile = temp;

        temp = topTile;
        topTile = bottomTile;
        bottomTile = temp;
    }

    /* Create/assign nodes to the toInsert tile based on what its type is */
    switch (toInsert->type) {
    case EMPTY:
        ; //call remove-from-graph function here
        break;
    case AND:
        break;
    case OR:
        break;
    case XOR:
        break;
    case NOT:
        break;
    case SOURCE_A:
        break;
    case SOURCE_B:
        break;
    case SOURCE_C:
        break;
    case SOURCE_D:
        break;
    case PROBE_A:
        break;
    case PROBE_B:
        break;
    case PROBE_C:
        break;
    case PROBE_D:
        break;
    case HORIZONTAL:
        break;
    case VERTICAL:
        break;
    case WIRE_9_12:
        break;
    case WIRE_12_3:
        break;
    case JUMP:
        break;
    case ULTRA_NODE:
        break;
    case WIRE_9_12_3:
        break;
    case WIRE_6_9_12:
        break;
    case WIRE_9_12_DOUBLE:
        break;
    case WIRE_12_3_DOUBLE:
        break;
    default:
        //might want to signal an error here
        break;
    }
}

/* Constructs the freeList of Nodes for the graph */
void initNodes() {
    unsigned int i;
    Node *currNode = preallocNodes;

    for (i = 0; i < MAX_NODES; i++) {
        if (i == 0) {
            currNode = preallocNodes + 0;

            freeListHead = preallocNodes + 0;
        }
        else if (i == MAX_NODES - 1) {
            currNode->next = preallocNodes + i;

            freeListTail = preallocNodes + i;
            freeListTail->next = 0;
        }
        else {
            currNode->next = preallocNodes + i;
            currNode = currNode->next;
        }
    }
}

/* Removes and returns a pointer to an allocated Node from the freeList.
 * ASSUME THAT THE FIELDS ARE NOT INITIALIZED TO ANYTHING, and must be done
 * so by the caller. */
Node *newNode() {
    Node *retNode = freeListHead;

    if (freeListHead != 0)
        freeListHead = freeListHead->next;
    else
        /* Occurs when there's nothing more in the freeList to return. Can do
         * something like report an error, malloc, etc... Hopefully never happens */
        ;

    return retNode;
}

/* Returns a node to the freeList (at the tail). The caller should consider the Node
 * passed in as deallocated after the completion of the this function */
void freeNode(Node *toFree) {
    if (freeListHead == 0) {
        freeListHead = freeListTail = toFree;
    }
    else {
        toFree->next = 0;
        freeListTail->next = toFree;
        freeListTail = toFree;
    }
}
