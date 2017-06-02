/* For the creation and manipulation of a graph representing the logic circuit
 * formed by the tiles. */

#include "main.h"
#include "tiles.h"
#include "graph.h"

#include <stdint.h>

static Node preallocNodes[MAX_NODES];

static Node *freeListHead;
static Node *freeListTail;

digiVal getNodeValue(Node *currNode, TileState *currTile) {
    digiVal retVal = INDETERMINATE;

    digiVal tempVal1, tempVal2, tempVal3;
    Node *tempNode1, *tempNode2, *tempNode3;

    if (currTile != 0 && currNode != 0) {
        TileState *neighborTile = getOtherTile(currNode, currTile);

        switch (currTile->type) {
        case EMPTY:
            //stays indeterminate
            break;
        case AND:
            if (isGateOutput(currNode, currTile)) {
                tempVal1 = getNodeValue(currTile->leftNode, currTile);
                tempVal2 = getNodeValue(currTile->rightNode, currTile);
                tempVal3 = getNodeValue(currTile->bottomNode, currTile);

                retVal = Operation_AND(tempVal1, tempVal2, tempVal3);
            }
            else {
                if (!currNode->visited) {
                    currNode->visited = 1;
                    retVal = getNodeValue(currNode, neighborTile);
                }
                else {
                    retVal = currNode->value;
                }
            }

            break;
        case OR:
            if (isGateOutput(currNode, currTile)) {
                tempVal1 = getNodeValue(currTile->leftNode, currTile);
                tempVal2 = getNodeValue(currTile->rightNode, currTile);
                tempVal3 = getNodeValue(currTile->bottomNode, currTile);

                retVal = Operation_OR(tempVal1, tempVal2, tempVal3);
            }
            else {
                if (!currNode->visited) {
                    currNode->visited = 1;
                    retVal = getNodeValue(currNode, neighborTile);
                }
                else {
                    retVal = currNode->value;
                }
            }

            break;
        case XOR:
            if (isGateOutput(currNode, currTile)) {
                tempVal1 = getNodeValue(currTile->leftNode, currTile);
                tempVal2 = getNodeValue(currTile->rightNode, currTile);
                tempVal3 = getNodeValue(currTile->bottomNode, currTile);

                retVal = Operation_XOR(tempVal1, tempVal2, tempVal3);
            }
            else {
                if (!currNode->visited) {
                    currNode->visited = 1;
                    retVal = getNodeValue(currNode, neighborTile);
                }
                else {
                    retVal = currNode->value;
                }
            }

            break;
        case NOT:
            if (isGateOutput(currNode, currTile)) {
                tempVal1 = getNodeValue(currTile->leftNode, currTile);

                retVal = Operation_NOT(tempVal1);
            }
            else {
                if (!currNode->visited) {
                    currNode->visited = 1;
                    retVal = getNodeValue(currNode, neighborTile);
                }
                else {
                    retVal = currNode->value;
                }
            }

            break;
        case SOURCE_A:
            if (isGateOutput(currNode, currTile))
                retVal = currSourceA;
            else
                retVal = INDETERMINATE;
            break;
        case SOURCE_B:
            if (isGateOutput(currNode, currTile))
                retVal = currSourceB;
            else
                retVal = INDETERMINATE;
            break;
        case SOURCE_C:
            if (isGateOutput(currNode, currTile))
                retVal = currSourceC;
            else
                retVal = INDETERMINATE;
            break;
        case SOURCE_D:
            if (isGateOutput(currNode, currTile))
                retVal = currSourceD;
            else
                retVal = INDETERMINATE;
            break;
        case PROBE_A:
            retVal = INDETERMINATE;
            break;
        case PROBE_B:
            retVal = INDETERMINATE;
            break;
        case PROBE_C:
            retVal = INDETERMINATE;
            break;
        case PROBE_D:
            retVal = INDETERMINATE;
            break;
        case HORIZONTAL:
            currNode->visited = 1;

            if (currNode == currTile->rightNode) {
                if (currTile->leftNode->visited)
                    retVal = currTile->leftNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->leftNode,
                                                            getOtherTile(currTile->leftNode, currTile));
            }
            else {
                if (currTile->rightNode->visited)
                    retVal = currTile->rightNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->rightNode,
                                                            getOtherTile(currTile->rightNode, currTile));
            }

            break;
        case VERTICAL:
            currNode->visited = 1;

            if (currNode == currTile->topNode) {
                if (currTile->bottomNode->visited)
                    retVal = currTile->bottomNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->bottomNode,
                                                            getOtherTile(currTile->bottomNode, currTile));
            }
            else {
                if (currTile->topNode->visited)
                    retVal = currTile->topNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->topNode,
                                                            getOtherTile(currTile->topNode, currTile));
            }
            break;
        case WIRE_9_12:
            currNode->visited = 1;

            if (currNode == currTile->rightNode) {
                if (currTile->bottomNode->visited)
                    retVal = currTile->bottomNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->bottomNode,
                                                            getOtherTile(currTile->bottomNode, currTile));
            }
            else {
                if (currTile->rightNode->visited)
                    retVal = currTile->rightNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->rightNode,
                                                            getOtherTile(currTile->rightNode, currTile));
            }
            break;
        case WIRE_12_3:
            currNode->visited = 1;

            if (currNode == currTile->bottomNode) {
                if (currTile->leftNode->visited)
                    retVal = currTile->leftNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->leftNode,
                                                            getOtherTile(currTile->leftNode, currTile));
            }
            else {
                if (currTile->bottomNode->visited)
                    retVal = currTile->bottomNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->bottomNode,
                                                            getOtherTile(currTile->bottomNode, currTile));
            }
            break;
        case JUMP:
            currNode->visited = 1;

            if (currNode == currTile->rightNode) {
                if (currTile->leftNode->visited)
                    retVal = currTile->leftNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->leftNode,
                                                            getOtherTile(currTile->leftNode, currTile));
            }
            else if (currNode == currTile->leftNode) {
                if (currTile->rightNode->visited)
                    retVal = currTile->rightNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->rightNode,
                                                            getOtherTile(currTile->rightNode, currTile));
            }
            else if (currNode == currTile->topNode) {
                if (currTile->bottomNode->visited)
                    retVal = currTile->bottomNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->bottomNode,
                                      getOtherTile(currTile->bottomNode, currTile));
            }
            else {
                if (currTile->topNode->visited)
                    retVal = currTile->topNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->topNode,
                                                        getOtherTile(currTile->topNode, currTile));
            }
            break;
        case ULTRA_NODE:
            currNode->visited = 1;

            if (currNode != currTile->rightNode) {
                tempNode1 = currTile->leftNode;
                tempNode2 = currTile->topNode;
                tempNode3 = currTile->bottomNode;

                if (currTile->leftNode->visited)
                    tempVal1 = currTile->leftNode->value;
                else
                    tempVal1 = getNodeValue(currTile->leftNode, currTile);

                if (currTile->topNode->visited)
                    tempVal2 = currTile->topNode->value;
                else
                    tempVal2 = getNodeValue(currTile->topNode, currTile);

                if (currTile->bottomNode->visited)
                    tempVal3 = currTile->bottomNode->value;
                else
                    tempVal3 = getNodeValue(currTile->bottomNode, currTile);
            }
            else if (currNode != currTile->leftNode) {
                tempNode1 = currTile->rightNode;
                tempNode2 = currTile->topNode;
                tempNode3 = currTile->bottomNode;

                if (currTile->rightNode->visited)
                    tempVal1 = currTile->rightNode->value;
                else
                    tempVal1 = getNodeValue(currTile->rightNode, currTile);

                if (currTile->topNode->visited)
                    tempVal2 = currTile->topNode->value;
                else
                    tempVal2 = getNodeValue(currTile->topNode, currTile);

                if (currTile->bottomNode->visited)
                    tempVal3 = currTile->bottomNode->value;
                else
                    tempVal3 = getNodeValue(currTile->bottomNode, currTile);
            }
            else if (currNode != currTile->topNode) {
                tempNode1 = currTile->rightNode;
                tempNode2 = currTile->leftNode;
                tempNode3 = currTile->bottomNode;

                if (currTile->rightNode->visited)
                    tempVal1 = currTile->rightNode->value;
                else
                    tempVal1 = getNodeValue(currTile->rightNode, currTile);

                if (currTile->leftNode->visited)
                    tempVal2 = currTile->leftNode->value;
                else
                    tempVal2 = getNodeValue(currTile->leftNode, currTile);

                if (currTile->bottomNode->visited)
                    tempVal3 = currTile->bottomNode->value;
                else
                    tempVal3 = getNodeValue(currTile->bottomNode, currTile);
            }
            else {
                tempNode1 = currTile->rightNode;
                tempNode2 = currTile->leftNode;
                tempNode3 = currTile->topNode;

                if (currTile->rightNode->visited)
                    tempVal1 = currTile->rightNode->value;
                else
                    tempVal1 = getNodeValue(currTile->rightNode, currTile);

                if (currTile->leftNode->visited)
                    tempVal2 = currTile->leftNode->value;
                else
                    tempVal2 = getNodeValue(currTile->leftNode, currTile);

                if (currTile->bottomNode->visited)
                    tempVal3 = currTile->topNode->value;
                else
                    tempVal3 = getNodeValue(currTile->topNode, currTile);
            }

            retVal = Operation_ULTRA(tempVal1, tempVal2, tempVal3, tempNode1, tempNode2, tempNode3);
            break;
        case WIRE_9_12_3:
            currNode->visited = 1;

            if (currNode == currTile->leftNode) {
                tempNode1 = currTile->rightNode;
                tempNode2 = currTile->bottomNode;

                if (currTile->rightNode->visited)
                    tempVal1 = currTile->rightNode->value;
                else
                    tempVal1 = getNodeValue(currTile->rightNode, currTile);

                if (currTile->bottomNode->visited)
                    tempVal2 = currTile->bottomNode->value;
                else
                    tempVal2 = getNodeValue(currTile->bottomNode, currTile);

                retVal = Operation_TRI_WIRE(tempVal1, tempVal2, tempNode1, tempNode2);
            }
            else if (currNode == currTile->bottomNode) {
                tempNode1 = currTile->rightNode;
                tempNode2 = currTile->leftNode;

                if (currTile->rightNode->visited)
                    tempVal1 = currTile->rightNode->value;
                else
                    tempVal1 = getNodeValue(currTile->rightNode, currTile);

                if (currTile->leftNode->visited)
                    tempVal2 = currTile->leftNode->value;
                else
                    tempVal2 = getNodeValue(currTile->leftNode, currTile);

                retVal = Operation_TRI_WIRE(tempVal1, tempVal2, tempNode1, tempNode2);
            }
            else if (currNode == currTile->rightNode) {
                tempNode1 = currTile->bottomNode;
                tempNode2 = currTile->leftNode;

                if (currTile->bottomNode->visited)
                    tempVal1 = currTile->bottomNode->value;
                else
                    tempVal1 = getNodeValue(currTile->bottomNode, currTile);

                if (currTile->leftNode->visited)
                    tempVal2 = currTile->leftNode->value;
                else
                    tempVal2 = getNodeValue(currTile->leftNode, currTile);

                retVal = Operation_TRI_WIRE(tempVal1, tempVal2, tempNode1, tempNode2);
            }
            else {
                retVal = INDETERMINATE;
            }

            break;
        case WIRE_6_9_12:
            currNode->visited = 1;

            if (currNode == currTile->leftNode) {
                tempNode1 = currTile->topNode;
                tempNode2 = currTile->bottomNode;

                if (currTile->topNode->visited)
                    tempVal1 = currTile->topNode->value;
                else
                    tempVal1 = getNodeValue(currTile->topNode, currTile);

                if (currTile->bottomNode->visited)
                    tempVal2 = currTile->bottomNode->value;
                else
                    tempVal2 = getNodeValue(currTile->bottomNode, currTile);

                retVal = Operation_TRI_WIRE(tempVal1, tempVal2, tempNode1, tempNode2);
            }
            else if (currNode == currTile->bottomNode) {
                tempNode1 = currTile->topNode;
                tempNode2 = currTile->leftNode;

                if (currTile->topNode->visited)
                    tempVal1 = currTile->topNode->value;
                else
                    tempVal1 = getNodeValue(currTile->topNode, currTile);

                if (currTile->leftNode->visited)
                    tempVal2 = currTile->leftNode->value;
                else
                    tempVal2 = getNodeValue(currTile->leftNode, currTile);

                retVal = Operation_TRI_WIRE(tempVal1, tempVal2, tempNode1, tempNode2);
            }
            else if (currNode == currTile->topNode) {
                tempNode1 = currTile->bottomNode;
                tempNode2 = currTile->leftNode;

                if (currTile->bottomNode->visited)
                    tempVal1 = currTile->bottomNode->value;
                else
                    tempVal1 = getNodeValue(currTile->bottomNode, currTile);

                if (currTile->leftNode->visited)
                    tempVal2 = currTile->leftNode->value;
                else
                    tempVal2 = getNodeValue(currTile->leftNode, currTile);

                retVal = Operation_TRI_WIRE(tempVal1, tempVal2, tempNode1, tempNode2);
            }
            else {
                retVal = INDETERMINATE;
            }

            break;
        case WIRE_9_12_DOUBLE:
            currNode->visited = 1;

            if (currNode == currTile->rightNode) {
                if (currTile->bottomNode->visited)
                    retVal = currTile->bottomNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->bottomNode,
                                                            getOtherTile(currTile->bottomNode, currTile));
            }
            else if (currNode == currTile->bottomNode) {
                if (currTile->rightNode->visited)
                    retVal = currTile->rightNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->rightNode,
                                                            getOtherTile(currTile->rightNode, currTile));
            }
            else if (currNode == currTile->topNode) {
                if (currTile->leftNode->visited)
                    retVal = currTile->leftNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->leftNode,
                                                        getOtherTile(currTile->leftNode, currTile));
            }
            else {
                if (currTile->topNode->visited)
                    retVal = currTile->topNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->topNode,
                                                        getOtherTile(currTile->topNode, currTile));
            }

            break;
        case WIRE_12_3_DOUBLE:
            currNode->visited = 1;

            if (currNode == currTile->bottomNode) {
                if (currTile->leftNode->visited)
                    retVal = currTile->leftNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->leftNode,
                                                        getOtherTile(currTile->leftNode, currTile));
            }
            else if (currNode == currTile->leftNode) {
                if (currTile->bottomNode->visited)
                    retVal = currTile->bottomNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->bottomNode,
                                                        getOtherTile(currTile->bottomNode, currTile));
            }
            else if (currNode == currTile->topNode) {
                if (currTile->rightNode->visited)
                    retVal = currTile->rightNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->rightNode,
                                                        getOtherTile(currTile->rightNode, currTile));
            }
            else {
                if (currTile->topNode->visited)
                    retVal = currTile->topNode->value;
                else
                    currNode->value = retVal = getNodeValue(currTile->topNode,
                                                        getOtherTile(currTile->topNode, currTile));
            }
            break;
        default:
            currNode->visited = 1;
            retVal = INDETERMINATE;
            //might want to signal an error here
            break;
        }
    }

    currNode->value = retVal;
    return retVal;
}

/* Unvisits all the nodes of every tile on the board. Must be called with the allocated array
 * of all the TileStates */
void unvisitAllNodes(TileState *list) {
    unsigned int i;
    for (i = 0; i < NUM_TILES; i++) {
        list[i].leftNode->visited = 0;
        list[i].rightNode->visited = 0;
        list[i].topNode->visited = 0;
        list[i].bottomNode->visited = 0;

        list[i].leftNode->value = INDETERMINATE;
        list[i].rightNode->value = INDETERMINATE;
        list[i].topNode->value = INDETERMINATE;
        list[i].bottomNode->value = INDETERMINATE;
    }
}

digiVal Operation_ULTRA(digiVal v1, digiVal v2, digiVal v3, Node *n1, Node *n2, Node *n3) {
    int validCount = 0;
    digiVal retVal = INDETERMINATE;

    validCount += (v1 != INDETERMINATE) ? 1 : 0;
    validCount += (v2 != INDETERMINATE) ? 1 : 0;
    validCount += (v3 != INDETERMINATE) ? 1 : 0;

    if (validCount == 1) {
       if (v1 != INDETERMINATE) {
           retVal = v1;
           n2->value = retVal;
           n3->value = retVal;
       }
       else if (v2 != INDETERMINATE) {
           retVal = v2;
           n1->value = retVal;
           n3->value = retVal;
       }
       else {
           retVal = v3;
           n1->value = retVal;
           n2->value = retVal;
       }
    }

    return retVal;
}

digiVal Operation_TRI_WIRE(digiVal v1, digiVal v2, Node *n1, Node *n2) {
    int validCount = 0;
    digiVal retVal = INDETERMINATE;

    validCount += (v1 != INDETERMINATE) ? 1 : 0;
    validCount += (v2 != INDETERMINATE) ? 1 : 0;

    if (validCount == 1) {
       if (v1 != INDETERMINATE) {
           retVal = v1;
           n2->value = retVal;
       }
       else if (v2 != INDETERMINATE) {
           retVal = v2;
           n1->value = retVal;
       }
    }

    return retVal;
}

digiVal Operation_AND(digiVal v1, digiVal v2, digiVal v3) {
    digiVal retVal = INDETERMINATE;
    int validCount = 0;
    uint16_t tempVal1, tempVal2, tempVal3;

    validCount += (v1 != INDETERMINATE) ? 1 : 0;
    validCount += (v2 != INDETERMINATE) ? 1 : 0;
    validCount += (v3 != INDETERMINATE) ? 1 : 0;

    if (validCount < 2)
        retVal = INDETERMINATE;
    else if (validCount < 3) {
        if (v1 == INDETERMINATE) {
            tempVal2 = (v2 == ONE) ? 1 : 0;
            tempVal3 = (v3 == ONE) ? 1 : 0;
            retVal = (tempVal2 && tempVal3) ? ONE : ZERO;
        }
        else if (v2 == INDETERMINATE) {
            tempVal1 = (v1 == ONE) ? 1 : 0;
            tempVal3 = (v3 == ONE) ? 1 : 0;
            retVal = (tempVal1 && tempVal3) ? ONE : ZERO;
        }
        else {
            tempVal1 = (v1 == ONE) ? 1 : 0;
            tempVal2 = (v2 == ONE) ? 1 : 0;
            retVal = (tempVal1 && tempVal2) ? ONE : ZERO;
        }
    }
    else {
        tempVal1 = (v1 == ONE) ? 1 : 0;
        tempVal2 = (v2 == ONE) ? 1 : 0;
        tempVal3 = (v3 == ONE) ? 1 : 0;

        retVal = (tempVal1 && tempVal2 && tempVal3) ? ONE : ZERO;
    }

    return retVal;
}

digiVal Operation_OR(digiVal v1, digiVal v2, digiVal v3) {
    digiVal retVal = INDETERMINATE;
    int validCount = 0;
    uint16_t tempVal1, tempVal2, tempVal3;

    validCount += (v1 != INDETERMINATE) ? 1 : 0;
    validCount += (v2 != INDETERMINATE) ? 1 : 0;
    validCount += (v3 != INDETERMINATE) ? 1 : 0;

    if (validCount < 2)
        retVal = INDETERMINATE;
    else if (validCount < 3) {
        if (v1 == INDETERMINATE) {
            tempVal2 = (v2 == ONE) ? 1 : 0;
            tempVal3 = (v3 == ONE) ? 1 : 0;
            retVal = (tempVal2 || tempVal3) ? ONE : ZERO;
        }
        else if (v2 == INDETERMINATE) {
            tempVal1 = (v1 == ONE) ? 1 : 0;
            tempVal3 = (v3 == ONE) ? 1 : 0;
            retVal = (tempVal1 || tempVal3) ? ONE : ZERO;
        }
        else {
            tempVal1 = (v1 == ONE) ? 1 : 0;
            tempVal2 = (v2 == ONE) ? 1 : 0;
            retVal = (tempVal1 || tempVal2) ? ONE : ZERO;
        }
    }
    else {
        tempVal1 = (v1 == ONE) ? 1 : 0;
        tempVal2 = (v2 == ONE) ? 1 : 0;
        tempVal3 = (v3 == ONE) ? 1 : 0;

        retVal = (tempVal1 || tempVal2 || tempVal3) ? ONE : ZERO;
    }

    return retVal;
}

digiVal Operation_XOR(digiVal v1, digiVal v2, digiVal v3) {
    digiVal retVal = INDETERMINATE;
    int validCount = 0;

    validCount += (v1 != INDETERMINATE) ? 1 : 0;
    validCount += (v2 != INDETERMINATE) ? 1 : 0;
    validCount += (v3 != INDETERMINATE) ? 1 : 0;

    if (validCount < 2)
        retVal = INDETERMINATE;
    else {
        int oneCount = 0;

        oneCount += (v1 == ONE) ? 1 : 0;
        oneCount += (v2 == ONE) ? 1 : 0;
        oneCount += (v2 == ONE) ? 1 : 0;

        retVal = (oneCount == 1) ? ONE : ZERO;
    }

    return retVal;
}

digiVal Operation_NOT(digiVal v) {
    digiVal retVal = INDETERMINATE;

    if (v != INDETERMINATE)
        retVal = (v == ONE) ? ZERO : ONE;

    return retVal;
}

/* Returns true if the node is the output node of the passed in gate tile, or false
 * otherwise */
int isGateOutput (Node *node, TileState *tile) {
    return (node == tile->rightNode);
}

/* Returns the 2nd tile associated with the passed in Node that isn't the passed in
 * tile, or null if none exists. Passed node must be non-null */
TileState *getOtherTile(Node *node, TileState *tile) {
    return (tile == node->tile1) ? node->tile2 : node->tile1;
}

void insertTile(unsigned int changedTile, TileState *tileStates) {
    TileState *toInsert = tileStates + changedTile;

    TileState *leftTile, *rightTile, *topTile, *bottomTile;
    leftTile = rightTile = topTile = bottomTile = 0; //initialize neighbors to null

    int leftIndex, rightIndex, bottomIndex, topIndex, horizontalCheck, verticalCheck;

    /* Calculate the tile numbers of the immediate neighbors of the tile in question.
     * No neighbor (due to edge of board) is denoted with -1. Orientation is considered,
     *  with the left/right and top/bottom neighbors being swapped if the orientation is -1. */
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
    if (leftIndex != -1)
        leftTile = tileStates + leftIndex;
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
        currProbeATile = toInsert;
        addPROBE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case PROBE_B:
        currProbeBTile = toInsert;
        addPROBE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case PROBE_C:
        currProbeCTile = toInsert;
        addPROBE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case PROBE_D:
        currProbeDTile = toInsert;
        addPROBE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case HORIZONTAL:
        addHORIZONTAL(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case VERTICAL:
        addVERTICAL(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case WIRE_9_12:
        addWIRE_9_12(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case WIRE_12_3:
        addWIRE_12_3(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case JUMP:
        addJUMP(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case ULTRA_NODE:
        addULTRA_NODE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case WIRE_9_12_3:
        addWIRE_9_12_3(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case WIRE_6_9_12:
        addWIRE_6_9_12(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case WIRE_9_12_DOUBLE:
        addWIRE_9_12_DOUBLE(toInsert, leftTile, rightTile, topTile, bottomTile);
        break;
    case WIRE_12_3_DOUBLE:
        addWIRE_12_3_DOUBLE(toInsert, leftTile, rightTile, topTile, bottomTile);
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
    /* Remove references to the probe tiles */
    if (currProbeATile == toRemove) {
        currProbeATile = 0;
        currProbeANode = 0;
    }
    else if (currProbeBTile == toRemove) {
        currProbeBTile = 0;
        currProbeBNode = 0;
    } else if (currProbeCTile == toRemove) {
        currProbeBTile = 0;
        currProbeBNode = 0;
    }
    else if (currProbeDTile == toRemove) {
        currProbeBTile = 0;
        currProbeBNode = 0;
    }

    if (toRemove->rightNode != NULL) {

        if (toRemove == toRemove->rightNode->tile1) {   //is tile1 of node
            toRemove->rightNode->tile1 = NULL;
        }
        else {                                          //is tile2 of node
            toRemove->rightNode->tile2 = NULL;
        }

        if (toRemove->rightNode->currentType == undecided) {
            freeNode(toRemove->rightNode);
        }
        else {
            toRemove->rightNode->currentType = undecided;
        }

        toRemove->rightNode = NULL;
    }

    if (toRemove->leftNode != NULL) {

        if (toRemove == toRemove->leftNode->tile1) {    //is tile1 of node
            toRemove->leftNode->tile1 = NULL;
        }
        else {                                          //is tile2 of node
            toRemove->leftNode->tile2 = NULL;
        }

        if (toRemove->leftNode->currentType == undecided) {
            freeNode(toRemove->leftNode);
        }
        else {
            toRemove->leftNode->currentType = undecided;
        }

        toRemove->leftNode = NULL;
    }

    if (toRemove->topNode != NULL) {

        if (toRemove == toRemove->topNode->tile1) {     //is tile1 of node
            toRemove->topNode->tile1 = NULL;
        }
        else {                                          //is tile2 of node
            toRemove->topNode->tile2 = NULL;
        }


        if (toRemove->topNode->currentType == undecided) {
            freeNode(toRemove->topNode);
        }
        else {
            toRemove->topNode->currentType = undecided;
        }

        toRemove->topNode = NULL;
    }

    if (toRemove->bottomNode != NULL) {

        if (toRemove == toRemove->bottomNode->tile1) {   //is tile1 of node
            toRemove->bottomNode->tile1 = NULL;
        }
        else {                                           //is tile2 of node
            toRemove->bottomNode->tile2 = NULL;
        }


        if (toRemove->bottomNode->currentType == undecided) {
            freeNode(toRemove->bottomNode);
        }
        else {
            toRemove->bottomNode->currentType = undecided;
        }

        toRemove->bottomNode = NULL;
    }


}

/*
 * Configures nodes for a 3 input, 1 output GATE tile
 */
void addGATE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    leftConfig(toInsert, notFlipped ? leftTile : rightTile);
    rightConfig(toInsert, notFlipped ? rightTile : leftTile);
    topConfig(toInsert, notFlipped ? topTile : bottomTile);
    bottomConfig(toInsert, notFlipped ? bottomTile : topTile);
}


/*
 * Configures nodes for a NOT gate tile
 */
void addNOT(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    leftConfig(toInsert, notFlipped ? leftTile : rightTile);
    rightConfig(toInsert, notFlipped ? rightTile : leftTile);

    toInsert->topNode = NULL;
    toInsert->bottomNode = NULL;
}

/*
 * Configures nodes for SOURCE tiles
 */
void addSOURCE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    if (notFlipped)
        rightConfig(toInsert, rightTile);
    else
        leftConfig(toInsert, rightTile);

    toInsert->leftNode = NULL;
    toInsert->topNode = NULL;
    toInsert->bottomNode = NULL;
}

/*
 * Configures nodes for PROBE tiles
 */
void addPROBE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    if (notFlipped)
        leftConfig(toInsert, leftTile);
    else
        rightConfig(toInsert, leftTile);

    switch (toInsert->type) {
    case PROBE_A:
        currProbeANode = toInsert->leftNode;
        break;
    case PROBE_B:
        currProbeBNode = toInsert->leftNode;
        break;
    case PROBE_C:
        currProbeCNode = toInsert->leftNode;
        break;
    case PROBE_D:
        currProbeDNode = toInsert->leftNode;
        break;
    }


    toInsert->topNode = NULL;
    toInsert->rightNode = NULL;
    toInsert->bottomNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addHORIZONTAL(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    leftConfig(toInsert, notFlipped ? leftTile : rightTile);
    rightConfig(toInsert, notFlipped ? rightTile : leftTile);

    toInsert->topNode = NULL;
    toInsert->bottomNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addVERTICAL(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    topConfig(toInsert, notFlipped ? topTile : bottomTile);
    bottomConfig(toInsert, notFlipped ? bottomTile : topTile);

    toInsert->leftNode = NULL;
    toInsert->rightNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addWIRE_9_12(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    if (notFlipped)
        rightConfig(toInsert, rightTile);
    else
        leftConfig(toInsert, rightTile);

    if (notFlipped)
        bottomConfig(toInsert, bottomTile);
    else
        topConfig(toInsert, bottomTile);

    toInsert->topNode = NULL;
    toInsert->leftNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addWIRE_12_3(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    if (notFlipped)
        bottomConfig(toInsert, bottomTile);
    else
        topConfig(toInsert, bottomTile);

    if (notFlipped)
        leftConfig(toInsert, leftTile);
    else
        rightConfig(toInsert, leftTile);

    toInsert->rightNode = NULL;
    toInsert->topNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addJUMP(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    leftConfig(toInsert, notFlipped ? leftTile : rightTile);
    rightConfig(toInsert, notFlipped ? rightTile : leftTile);
    topConfig(toInsert, notFlipped ? topTile : bottomTile);
    bottomConfig(toInsert, notFlipped ? bottomTile : topTile);
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addULTRA_NODE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    leftConfig(toInsert, notFlipped ? leftTile : rightTile);
    rightConfig(toInsert, notFlipped ? rightTile : leftTile);
    topConfig(toInsert, notFlipped ? topTile : bottomTile);
    bottomConfig(toInsert, notFlipped ? bottomTile : topTile);
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addWIRE_9_12_3(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    leftConfig(toInsert, notFlipped ? leftTile : rightTile);
    rightConfig(toInsert, notFlipped ? rightTile : leftTile);

    if (notFlipped)
        bottomConfig(toInsert, bottomTile);
    else
        topConfig(toInsert, bottomTile);

    toInsert->topNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addWIRE_6_9_12(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    topConfig(toInsert, notFlipped ? topTile : bottomTile);
    bottomConfig(toInsert, notFlipped ? bottomTile : topTile);

    if (notFlipped)
        leftConfig(toInsert, leftTile);
    else
        rightConfig(toInsert, leftTile);

    toInsert->rightNode = NULL;
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addWIRE_9_12_DOUBLE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    leftConfig(toInsert, notFlipped ? leftTile : rightTile);
    rightConfig(toInsert, notFlipped ? rightTile : leftTile);
    topConfig(toInsert, notFlipped ? topTile : bottomTile);
    bottomConfig(toInsert, notFlipped ? bottomTile : topTile);
}

/*
 * Adds and modifies corresponding nodes for the tile to be added.
 */
void addWIRE_12_3_DOUBLE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile) {
    int notFlipped = (toInsert->orientation != -1);

    leftConfig(toInsert, notFlipped ? leftTile : rightTile);
    rightConfig(toInsert, notFlipped ? rightTile : leftTile);
    topConfig(toInsert, notFlipped ? topTile : bottomTile);
    bottomConfig(toInsert, notFlipped ? bottomTile : topTile);
}

/*
 * Configures the LEFT node of a tile. BOTH PARAMETERS MUST BE NON-NULL
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
 * Finally, the tile being added is added as either as tile1 or tile2, whichever one is free
 */
void leftConfig(TileState *toInsert, TileState *leftTile) {
    Node **assignmentNode;

    if (toInsert->orientation != -1)
        assignmentNode = &(toInsert->leftNode);
    else
        assignmentNode = &(toInsert->rightNode);

    if (leftTile == 0) {                                    //null check
        *assignmentNode = 0;
    }
    else if (leftTile->orientation != -1) {                 //normal orientation
        if (leftTile->rightNode != NULL) {
            *assignmentNode = leftTile->rightNode;

            if (isActiveType(leftTile))
                (*assignmentNode)->currentType = active;
            else
                (*assignmentNode)->currentType = passive;
        }
        else {
            *assignmentNode = newNode();
            (*assignmentNode)->currentType = undecided;
        }
    }
    else {                                                  //flipped orientation
        if (leftTile->leftNode != NULL) {
            *assignmentNode = leftTile->leftNode;

            if (isActiveType(leftTile))
                (*assignmentNode)->currentType = active;
            else
                (*assignmentNode)->currentType = passive;
        }
        else {
            *assignmentNode = newNode();
            (*assignmentNode)->currentType = undecided;
        }
    }

    if (leftTile != 0) {
        if ((*assignmentNode)->tile1 == 0) {
            (*assignmentNode)->tile1 = toInsert;
        }
        else {
            (*assignmentNode)->tile2 = toInsert;
        }
    }
}

/*
 * Configures the RIGHT node of a tile. BOTH PARAMETERS MUST BE NON-NULL
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
    Node **assignmentNode;

    if (toInsert->orientation != -1)
        assignmentNode = &(toInsert->rightNode);
    else
        assignmentNode = &(toInsert->leftNode);

    if (rightTile == 0) {
        *assignmentNode = 0;
    }
    else if (rightTile->orientation != -1) {                //normal orientation
        if (rightTile->leftNode != NULL) {
            *assignmentNode = rightTile->leftNode;
            if (isActiveType(rightTile))
                (*assignmentNode)->currentType = active;
            else
                (*assignmentNode)->currentType = passive;
        }
        else {
            *assignmentNode = newNode();
            (*assignmentNode)->currentType = undecided;
        }
    }
    else {                                                  //flipped orientation
        if (rightTile->rightNode != NULL) {
            *assignmentNode = rightTile->rightNode;
            if (isActiveType(rightTile))
                (*assignmentNode)->currentType = active;
            else
                (*assignmentNode)->currentType = passive;
        }
        else {
            *assignmentNode = newNode();
            (*assignmentNode)->currentType = undecided;
        }
    }

    if (rightTile != 0) {
        if ((*assignmentNode)->tile1 == 0)
            (*assignmentNode)->tile1 = toInsert;
        else
            (*assignmentNode)->tile2 = toInsert;
    }
}

/*
 * Configures the TOP node of a tile. BOTH PARAMETERS MUST BE NON-NULL
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
    Node **assignmentNode;

    if (toInsert->orientation != -1)
        assignmentNode = &(toInsert->topNode);
    else
        assignmentNode = &(toInsert->bottomNode);

    if (topTile == 0) {
        *assignmentNode = 0;
    }
    else if (topTile->orientation != -1) {                  //normal orientation
        if (topTile->bottomNode != NULL) {
            *assignmentNode = topTile->bottomNode;

            if (isActiveType(topTile))
                (*assignmentNode)->currentType = active;
            else
                (*assignmentNode)->currentType = passive;

        }
        else {
            *assignmentNode = newNode();
            (*assignmentNode)->currentType = undecided;
        }
    }
    else {                                                  //flipped orientation
        if (topTile->topNode != NULL) {
            *assignmentNode = topTile->topNode;

            if (isActiveType(topTile))
                (*assignmentNode)->currentType = active;
            else
                (*assignmentNode)->currentType = passive;

        }
        else {
            *assignmentNode = newNode();
            (*assignmentNode)->currentType = undecided;
        }
    }

    if (topTile != 0) {
        if ((*assignmentNode)->tile1 == 0)
            (*assignmentNode)->tile1 = toInsert;
        else
            (*assignmentNode)->tile2 = toInsert;
    }
}

/*
 * Configures the BOTTOM node of a tile. BOTH PARAMETERS MUST BE NON-NULL
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
    Node **assignmentNode;

    if (toInsert->orientation != -1)
        assignmentNode = &(toInsert->bottomNode);
    else
        assignmentNode = &(toInsert->topNode);

    if (bottomTile == 0) {
        *assignmentNode = 0;
    }
    else if (bottomTile->orientation != -1) {                   //normal orientation
        if (bottomTile->topNode != NULL) {
            *assignmentNode = bottomTile->topNode;

            if (isActiveType(bottomTile))
                (*assignmentNode)->currentType = active;
            else
                (*assignmentNode)->currentType = passive;

        }
        else {
            *assignmentNode = newNode();
            (*assignmentNode)->currentType = undecided;
        }
    }
    else {                                                      //flipped orientation
        if (bottomTile->bottomNode != NULL) {
            *assignmentNode = bottomTile->bottomNode;

            if (isActiveType(bottomTile))
                (*assignmentNode)->currentType = active;
            else
                (*assignmentNode)->currentType = passive;

        }
        else {
            *assignmentNode = newNode();
            (*assignmentNode)->currentType = undecided;
        }
    }

    if (bottomTile != 0) {
        if ((*assignmentNode)->tile1 == 0)
            (*assignmentNode)->tile1 = toInsert;
        else
            (*assignmentNode)->tile2 = toInsert;
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
