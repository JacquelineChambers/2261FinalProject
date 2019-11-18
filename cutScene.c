#include "myLib.h"
#include "cutScene.h"
#include "game.h"

#include "bg0Space.h"
#include "bg1Stars.h"
#include "sprites.h"
NOOT noot;
BOX boxRight;
BOX boxLeft;
BOX boxCenter[4];
OBJ_ATTR shadowOAM[128];

void initCutScene() {
    dispBackground();
    initChar();
    initDialogBox();
    hideSprites();
}
void initChar() {
    noot.row = 100;
	noot.col = 50;
	noot.width = 64;
    noot.height = 64;
    noot.aniState = 13;
}
void initDialogBox() {
        boxLeft.row = 120;
        boxLeft.col = 40;
        boxLeft.width = 32;
        boxLeft.height = 32;
        boxLeft.section = 0;
    for(int i = 0; i < 4 ; i++) {
        boxCenter[i].row = 120 ;
        boxCenter[i].col = 50+ (i*32);
        boxCenter[i].width = 32;
        boxCenter[i].height = 32;
        boxCenter[i].section = 4;
    }
        boxRight.row = 120;
        boxRight.col = 50+ (2*32) + 50;
        boxRight.width = 32;
        boxRight.height = 32;
        boxRight.section = 8;
}

void updateCutScene() {
    parallax();
}


void drawCutScene() {
    drawPlayer();
    drawPrincess();
    
    drawDialogBox();
    initCharacter();

}
void initCharacter() {
    shadowOAM[5].attr0 = noot.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[5].attr1 = noot.col | ATTR1_MEDIUM;
    shadowOAM[5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(noot.aniState,0);  
}
void drawDialogBox() {
    shadowOAM[6].attr0 = boxLeft.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[6].attr1 = boxLeft.col | ATTR1_MEDIUM;
    shadowOAM[6].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(boxLeft.section,7);
    int j = 0;
    for(int i = 7; i < 11; i++) {
    shadowOAM[i].attr0 = boxCenter[j].row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[i].attr1 = boxCenter[j].col | ATTR1_MEDIUM;
    shadowOAM[i].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(boxCenter[j].section,7);  
    j++;
    }
    
    shadowOAM[11].attr0 = boxRight.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[11].attr1 = boxRight.col | ATTR1_MEDIUM;
    shadowOAM[11].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(boxRight.section,7);  
}