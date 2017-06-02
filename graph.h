#ifndef GRAPH_H_
#define GRAPH_H_

typedef enum {active, passive, undecided} nodeType;

typedef enum {ZERO, ONE, INDETERMINATE} digiVal;

typedef struct Node {
    /* Two tiles the node is bridging */
    TileState *tile1;
    TileState *tile2;

    /*
     * States what type of node it is:
     * -Active nodes are ones that are direct outputs of functions (i.e gates)
     * -Passive nodes are ones that connect two wires and do not produce a signal
     * but instead propagate them.
     * -Undecided nodes are only connected on one side and it is undetermined if
     * the node is active or passive.
     */
    nodeType currentType;

    struct Node *next;                 //for use in the free list
} Node;

void insertTile(unsigned int changedTile, TileState *tileStates);
void initNodes();
Node *newNode();
void freeNode(Node *toFree);

void leftConfig(TileState *toInsert, TileState *leftTile);
void rightConfig(TileState *toInsert, TileState *rightTile);
void topConfig(TileState *toInsert, TileState *topTile);
void bottomConfig(TileState *toInsert, TileState *bottomTile);

/*Add tile functions*/
void removeTile(TileState *toRemove, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);

void addGATE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addNOT(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addSOURCE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addPROBE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addHORIZONTAL(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addVERTICAL(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addWIRE_9_12(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addWIRE_12_3(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addJUMP(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addULTRA_NODE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addWIRE_9_12_3(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addWIRE_6_9_12(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addWIRE_9_12_DOUBLE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);
void addWIRE_12_3_DOUBLE(TileState *toInsert, TileState *leftTile, TileState *rightTile, TileState *topTile, TileState *bottomTile);

#endif /* GRAPH_H_ */
