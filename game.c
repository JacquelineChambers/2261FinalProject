#include "myLib.h"
#include "game.h"

#include "bg0Space.h"
#include "bg1Stars.h"

unsigned short hOff;
unsigned short hOff_2;

OBJ_ATTR shadowOAM[128];

void initGame() {
   
     dispBackground();
    
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

void updateGame() {
    parallax();
}



