#ifndef GRAPH_H_
#define GRAPH_H_

typedef struct Node {
    TileState *sourceTile;      //The one (and only one) tile that defines the value (0 or 1) of this node
    TileState *targetTiles;     //The list of tiles that receive the value of this node

    struct Node *next;                 //for use in the free list
} Node;

void insertTile(unsigned int changedTile, TileState *tileStates);
void initNodes();
Node *newNode();
void freeNode(Node *toFree);

#endif /* GRAPH_H_ */
