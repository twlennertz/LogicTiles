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
    TileState *leftTile, *rightTile, *topTile, *bottomTile;

    int leftIndex, rightIndex, bottomIndex, topIndex, horizontalCheck, verticalCheck;

    /* Calculate the tile numbers of the immediate neighbors of the tile in question.
     * No neighbor (due to edge of board) is denoted with -1. This is where the flipped
     * orientation is taken into consideration, with the left/right and top/bottom
     * neighbors being swapped if the orientation is -1. No further orientation consideration
     * will be needed after this step. */
    horizontalCheck = changedTile % TILE_WIDTH;
    verticalCheck = changedTile % TILE_HEIGHT;

    if (horizontalCheck == 0) { //left edge
        leftIndex = -1;
        rightIndex = changedTile + 1;
    }
    else if (horizontalCheck == TILE_WIDTH - 1) { //right edge
        rightIndex = -1;
        leftIndex = changedTile - 1;
    }
    else {
        leftIndex = changedTile - 1;
        rightIndex = changedTile + 1;
    }

    if (verticalCheck == 0) { //top edge
        topIndex = -1;
        bottomIndex = changedTile - TILE_WIDTH;
    }
    else if (verticalCheck == TILE_HEIGHT - 1) { //bottom edge
        bottomIndex = -1;
        topIndex = changedTile + TILE_WIDTH;
    }
    else {
        topIndex = changedTile + TILE_WIDTH;
        bottomIndex = changedTile - TILE_WIDTH;
    }

    /* Swap neighbors if orientation is flipped */
    if (toInsert->orientation == -1) {
        int temp = leftIndex;
        leftIndex = rightIndex;
        rightIndex = temp;

        temp = topIndex;
        topIndex = bottomIndex;
        bottomIndex = temp;
    }

    /*If it's not on a particular edge, get the neighbor tile*/
    if (leftIndex != -1) {
        leftTile = tileStates + leftIndex;
    }
    if (rightIndex != -1) {
        rightTile = tileStates + rightIndex;
    }
    if (topIndex != -1) {
        topTile = tileStates + topIndex;
    }
    if (bottomIndex != -1) {
        bottomTile = tileStates + bottomIndex;
    }


    /* Create/assign nodes to the toInsert tile based on what its type is */
    switch (toInsert->type) {
    case EMPTY:
        removeTile(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case AND:
        addGATE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case OR:
        addGATE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case XOR:
        addGATE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case NOT:
        addNOT(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case SOURCE_A:
        addSOURCE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case SOURCE_B:
        addSOURCE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case SOURCE_C:
        addSOURCE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case SOURCE_D:
        addSOURCE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case PROBE_A:
        addPROBE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case PROBE_B:
        addPROBE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case PROBE_C:
        addPROBE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case PROBE_D:
        addPROBE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case HORIZONTAL:
        addHORIZONTAL(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case VERTICAL:
        addVERTICAL(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case WIRE_9_12:
        addHORIZONTAL(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case WIRE_12_3:
        addHORIZONTAL(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case JUMP:
        addHORIZONTAL(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case ULTRA_NODE:
        addHORIZONTAL(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case WIRE_9_12_3:
        addHORIZONTAL(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case WIRE_6_9_12:
        addHORIZONTAL(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case WIRE_9_12_DOUBLE:
        addHORIZONTAL(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case WIRE_12_3_DOUBLE:
        addHORIZONTAL(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    default:
        //might want to signal an error here
        break;
    }
}

/*
 * This function handles node management and cleanup in the event that a node is removed.
 * For each node the tile is connected to, the type of the node will be changed to undecided
 * and the appropriate type field for node (the one associated with the tile being removed) will
 * be changed to null instead of pointing to the to-be-removed tile.
 *
 * If the node connected to the tile is only connected that tile (i.e it's already undecided) then
 * the node will be freed.
 */
void removeTile(TileState *toRemove, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    if (toRemove->rightNode != NULL) {

        toRemove->rightNode->sourceTile = NULL;

        if (toRemove->rightNode->currentType == undecided) {
            freeNode(toRemove->rightNode);
        }
        else {
            toRemove->rightNode->currentType = undecided;
        }

        toRemove->rightNode = NULL;

    }

    if (toRemove->leftNode != NULL) {

        toRemove->leftNode->targetTile = NULL;

        if (toRemove->leftNode->currentType == undecided) {
            freeNode(toRemove->leftNode);
        }
        else {
            toRemove->leftNode->currentType = undecided;
        }

        toRemove->leftNode = NULL;

    }

    if (toRemove->bottomNode != NULL) {

        toRemove->bottomNode->sourceTile = NULL;

        if (toRemove->bottomNode->currentType == undecided) {
            freeNode(toRemove->bottomNode);
        }
        else {
            toRemove->bottomNode->currentType = undecided;
        }

        toRemove->bottomNode = NULL;
    }

    if (toRemove->topNode != NULL) {

        toRemove->topNode->targetTile = NULL;

        if (toRemove->topNode->currentType == undecided) {
            freeNode(toRemove->topNode);
        }
        else {
            toRemove->topNode->currentType = undecided;
        }

        toRemove->topNode = NULL;

    }
}

/*
 * Configures nodes for a 3 input, 1 output GATE tile
 */
void addGATE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    leftConfig(toInsert, leftTile);
    rightConfig(toInsert, rightTile);
    topConfig(toInsert, topTile);
    bottomConfig(toInsert, bottomTile);
}


/*
 * Configures nodes for a NOT gate tile
 */
void addNOT(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    leftConfig(toInsert, leftTile);
    rightConfig(toInsert, rightTile);

    toInsert->topNode = NULL;
    toInsert->bottomNode = NULL;
}

/*
 * Configures nodes for SOURCE tiles
 */
void addSOURCE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    rightConfig(toInsert, rightTile);

    toInsert->leftNode = NULL;
    toInsert->topNode = NULL;
    toInsert->bottomNode = NULL;

}

/*
 * Configures nodes for PROBE tiles
 */
void addPROBE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    leftConfig(toInsert, leftTile);

    toInsert->topNode = NULL;
    toInsert->rightNode = NULL;
    toInsert->bottomNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addHORIZONTAL(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    leftConfig(toInsert, leftTile);
    rightConfig(toInsert, rightTile);

    toInsert->topNode = NULL;
    toInsert->bottomNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addVERTICAL(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    topConfig(toInsert, topTile);
    bottomConfig(toInsert, bottomTile);

    toInsert->leftNode = NULL;
    toInsert->rightNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addWIRE_9_12(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    leftConfig(toInsert, leftTile);
    topConfig(toInsert, topTile);

    toInsert->bottomNode = NULL;
    toInsert->rightNode = NULL;

}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addWIRE_12_3(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    topConfig(toInsert, topTile);
    rightConfig(toInsert, rightTile);

    toInsert->leftNode = NULL;
    toInsert->bottomNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addJUMP(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    leftConfig(toInsert, leftTile);
    rightConfig(toInsert, rightTile);
    topConfig(toInsert, topTile);
    bottomConfig(toInsert, bottomTile);
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addULTRA_NODE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    leftConfig(toInsert, leftTile);
    rightConfig(toInsert, rightTile);
    topConfig(toInsert, topTile);
    bottomConfig(toInsert, bottomTile);
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addWIRE_9_12_3(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    leftConfig(toInsert, leftTile);
    rightConfig(toInsert, rightTile);
    topConfig(toInsert, topTile);

    toInsert->bottomNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addWIRE_6_9_12(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    leftConfig(toInsert, leftTile);
    topConfig(toInsert, topTile);
    bottomConfig(toInsert, bottomTile);

    toInsert->rightNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addWIRE_9_12_DOUBLE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    leftConfig(toInsert, leftTile);
    rightConfig(toInsert, rightTile);
    topConfig(toInsert, topTile);
    bottomConfig(toInsert, bottomTile);
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addWIRE_12_3_DOUBLE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {

    leftConfig(toInsert, leftTile);
    rightConfig(toInsert, rightTile);
    topConfig(toInsert, topTile);
    bottomConfig(toInsert, bottomTile);
}

/*
 * Configures the LEFT node of a tile.
 *
 * This function first checks to see if there is a connected tile and
 * node on the neighbor to the appropriate side of the tile. If there is an existing
 * node then the two tiles will share that node. Furthermore, if
 * the neighboring tile is active (or the current tile is active) then
 * the type of the node will be active. Otherwise the node is typed as passive.
 *
 * If there is no neighboring node, then a new one is allocated for this side.
 * This node is typed as undecided (but will be resloved to passive or active
 * once a neighbor is added on that side).
 *
 * Finally, the tile being added is added as either by the source or target
 * tile for that node (see graph.h for more information on the source/target tiles).
 */
void leftConfig(TileState *toInsert, TileState *leftTile) {

    if (leftTile->rightNode != NULL) {
        toInsert->leftNode = leftTile->rightNode;
        if (isActiveType(leftTile))
            toInsert->leftNode->currentType = active;
        else
            toInsert->leftNode->currentType = passive;
    }
    else {
        toInsert->leftNode = newNode();
        toInsert->leftNode->currentType = undecided;
    }

    toInsert->leftNode->targetTile = toInsert;

}

/*
 * Configures the RIGHT node of a tile.
 *
 * This function first checks to see if there is a connected tile and
 * node on the neighbor to the appropriate side of the tile. If there is an existing
 * node then the two tiles will share that node. Furthermore, if
 * the neighboring tile is active (or the current tile is active) then
 * the type of the node will be active. Otherwise the node is typed as passive.
 *
 * If there is no neighboring node, then a new one is allocated for this side.
 * This node is typed as undecided (but will be resloved to passive or active
 * once a neighbor is added on that side).
 *
 * Finally, the tile being added is added as either by the source or target
 * tile for that node (see graph.h for more information on the source/target tiles).
 */
void rightConfig(TileState *toInsert, TileState *rightTile) {

    if (rightTile->leftNode != NULL) {
        toInsert->rightNode = rightTile->leftNode;
        if (isActiveType(rightTile))
            toInsert->leftNode->currentType = active;
        else
            toInsert->leftNode->currentType = passive;
    }
    else {
        toInsert->rightNode = newNode();
        toInsert->rightNode->currentType = undecided;
    }

    toInsert->rightNode->sourceTile = toInsert;

}

/*
 * Configures the TOP node of a tile.
 *
 * This function first checks to see if there is a connected tile and
 * node on the neighbor to the appropriate side of the tile. If there is an existing
 * node then the two tiles will share that node. Furthermore, if
 * the neighboring tile is active (or the current tile is active) then
 * the type of the node will be active. Otherwise the node is typed as passive.
 *
 * If there is no neighboring node, then a new one is allocated for this side.
 * This node is typed as undecided (but will be resloved to passive or active
 * once a neighbor is added on that side).
 *
 * Finally, the tile being added is added as either by the source or target
 * tile for that node (see graph.h for more information on the source/target tiles).
 */
void topConfig(TileState *toInsert, TileState *topTile) {

    if (topTile->bottomNode != NULL) {
        toInsert->topNode = topTile->bottomNode;

        if (isActiveType(topTile))
            toInsert->topNode->currentType = active;
        else
            toInsert->topNode->currentType = passive;

    }
    else {
        toInsert->topNode = newNode();
        toInsert->topNode->currentType = undecided;
    }

    toInsert->topNode->targetTile = toInsert;
}

/*
 * Configures the BOTTOM node of a tile.
 *
 * This function first checks to see if there is a connected tile and
 * node on the neighbor to the appropriate side of the tile. If there is an existing
 * node then the two tiles will share that node. Furthermore, if
 * the neighboring tile is active (or the current tile is active) then
 * the type of the node will be active. Otherwise the node is typed as passive.
 *
 * If there is no neighboring node, then a new one is allocated for this side.
 * This node is typed as undecided (but will be resloved to passive or active
 * once a neighbor is added on that side).
 *
 * Finally, the tile being added is added as either by the source or target
 * tile for that node (see graph.h for more information on the source/target tiles).
 */
void bottomConfig(TileState *toInsert, TileState *bottomTile) {

    if (bottomTile->topNode != NULL) {
        toInsert->bottomNode = bottomTile->topNode;

        if (isActiveType(bottomTile))
            toInsert->bottomNode->currentType = active;
        else
            toInsert->bottomNode->currentType = passive;

    }
    else {
        toInsert->bottomNode = newNode();
        toInsert->bottomNode->currentType = undecided;
    }

    toInsert->bottomNode->targetTile = toInsert;

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
