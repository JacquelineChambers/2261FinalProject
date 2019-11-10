#include "myLib.h"
#include "game.h"
#include "enemies.h"

#include "bg0Space.h"
#include "bg1Stars.h"
#include "sprites.h"

unsigned short hOff;
unsigned short tmphOff;
int livesRemaining;
PLAYER player;
OBJ_ATTR shadowOAM[128];

void initGame() {
   
     dispBackground();
     initAliens();
     initPlayer();
    
}

void dispBackground() {

 
    
   REG_DISPCTL =  MODE0 | BG1_ENABLE | BG0_ENABLE;
    DMANow(3, bg0SpacePal, PALETTE, 256);

    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    DMANow(3,  bg0SpaceTiles, &CHARBLOCK[0],  bg0SpaceTilesLen/2);
    DMANow(3,  bg0SpaceMap, &SCREENBLOCK[31],  bg0SpaceMapLen/2);

    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    DMANow(3, bg1StarsTiles, &CHARBLOCK[1], bg1StarsTilesLen / 2);
    DMANow(3, bg1StarsMap, &SCREENBLOCK[28], bg1StarsMapLen/2);

    hOff = 0;
     

}

void initPlayer() {
    DMANow(3, spritesPal, SPRITEPALETTE, 256);
	DMANow(3, spritesTiles, &CHARBLOCK[4],  spritesTilesLen/2);
    
    livesRemaining = 3;
    player.width = 16;
    player.height = 16;
    player.cdel = 1;
    player.rdel = 1;
	player.col = 120;
	player.row = 50;
}

void updateGame() {
    parallax();
    updatePlayer();
}

void updatePlayer() {

}

void drawGame() {
    drawPlayer();
}

void drawPlayer() {
    shadowOAM[0].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[0].attr1 = player.col | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,0);
}



