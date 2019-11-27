#include "myLib.h"
#include "winGame.h"
#include "cutScene.h"
#include "grenzlinie.h"
#include "game.h"


PRINCESSNOOT princessNoot;
CLIFF cliff;
OBJ_ATTR shadowOAM[128];

void initWinGame() {
    dispBackground();
    clearShadowOAM();
    initCliff();
    initPrincessNoot();
}

void clearShadowOAM() {
    for(int i = 0; i < 129; i++) {
        shadowOAM[i].attr0 = 0;
	    shadowOAM[i].attr1 = 0;
        shadowOAM[i].attr2 = 0;
    }
    hideSprites();
     DMANow(3, shadowOAM, OAM, 128*4);
}


void initCliff() {
    princessNoot.row = 61;
	princessNoot.col = 185;
	princessNoot.width = 64;
    princessNoot.height = 64;
    princessNoot.x = 24;
    princessNoot.y = 0;

}
void initPrincessNoot() {
    cliff.row = 105;
	cliff.col = 185;
	cliff.width = 64;
    cliff.height = 32;
    cliff.x = 24;
    cliff.y = 8;
}
void drawWinGame() {
    
    int j = 0;
    drawPrincessNoot(j);
    j++;
    drawCliff(j);
    j++;
    
}
void drawCliff(int j) {
    shadowOAM[j].attr0 = cliff.row | ATTR0_4BPP | ATTR0_WIDE; //| ATTR0_AFFINE;
	shadowOAM[j].attr1 = cliff.col | ATTR1_LARGE;
    shadowOAM[j].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(cliff.x,cliff.y);
    
}
void drawPrincessNoot(int j) {
    shadowOAM[j].attr0 = princessNoot.row | ATTR0_4BPP | ATTR0_SQUARE; //| ATTR0_AFFINE;
	shadowOAM[j].attr1 = princessNoot.col | ATTR1_LARGE;
    shadowOAM[j].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(princessNoot.x,princessNoot.y);
    
}

