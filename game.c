#include "myLib.h"
#include "game.h"
#include "enemies.h"
#include "movement.h"

#include "bg0Space.h"
#include "bg1Stars.h"
#include "sprites.h"

unsigned short hOff;
unsigned short tmphOff;
int livesRemaining;
PLAYER player;
PRINCESS princess;
OBJ_ATTR shadowOAM[128];
enum {UP, DOWN, LEFT, RIGHT};
enum {R, L};
int movement;
int toggle;
int prevMovement;

void initGame() {
     DMANow(3, spritesPal, SPRITEPALETTE, 256);
	 DMANow(3, spritesTiles, &CHARBLOCK[4],  spritesTilesLen/2);
        
     dispBackground();
     initAliens();
     initPlayer();
     initPrincess();
     hideSprites();
    
}

void dispBackground() {

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
    
    livesRemaining = 3;
    player.width = 16;
    player.height = 16;
    player.cdel = 1;
    player.rdel = 1;
	player.col = 110;
	player.row = 80;
    player.sprite = 0;
    movement = UP;
    prevMovement = movement;
    toggle = L;
}
void initPrincess() {
    princess.hit = 0;
    princess.row = 110;
    princess.col = 70;
    princess.width = 16;
    princess.height = 16;
}

void updateGame() {
    parallax();
    updatePlayer();
}

void updatePlayer() {
    if(BUTTON_PRESSED(BUTTON_A)) { //shooty
        
    }

    if(BUTTON_PRESSED(BUTTON_L)) { // rotate player to the left
         if(toggle == R) {
             switch(movement) {
            case UP:
                movement = DOWN;
                break;
            case RIGHT:
                movement = LEFT;
                break;
            case DOWN:
                movement = UP;
                break;
            case LEFT:
                movement = RIGHT;
                break;
            } 
        }
        prevMovement = movement;
        switch(movement) {
            case UP:
                player.col = 110;
	            player.row = 60;
                player.sprite = 0;
                movement = LEFT;
                break;
            case LEFT:
                player.col = 100;
	            player.row = 70;
                player.sprite = 2;
                movement = DOWN;
                break;
            case DOWN:
                player.col = 110;
	            player.row = 80;
                player.sprite = 4;
                movement = RIGHT;
                break;
            case RIGHT:
                player.col = 120;
	            player.row = 70;
                player.sprite = 6;
                movement = UP;
                break;
        }
        toggle = L;
        
    }
    if(BUTTON_PRESSED(BUTTON_R)) { // rotate the player to the right
        if(toggle == L) {
           switch(movement) {
            case UP:
                movement = DOWN;
                break;
            case RIGHT:
                movement = LEFT;
                break;
            case DOWN:
                movement = UP;
                break;
            case LEFT:
                movement = RIGHT;
                break;
            } 
        }
        prevMovement = movement;
        switch(movement) {
            case UP:
                player.col = 110;
	            player.row = 60;
                player.sprite = 0;
                movement = RIGHT;
                break;
            case RIGHT:
                player.col = 120;
	            player.row = 70;
                player.sprite = 6;
                movement = DOWN;
                break;
            case DOWN:
                player.col = 110;
	            player.row = 80;
                player.sprite = 4;
                movement = LEFT;
                break;
            case LEFT:
                player.col = 100;
	            player.row = 70;
                player.sprite = 2;
                movement = UP;
                break;
        }
        toggle = R;
    }

    if(BUTTON_HELD(BUTTON_RIGHT)) { //slide player to the right
         switch(prevMovement) {
            case UP:
                if(player.width + player.col < 140) {
                    player.col++;
                }
               break;
            case RIGHT:
                if(player.height + player.row < 100) {
                    player.row++;
                }
               break;
            case DOWN:
                if(player.width + player.col < 140) {
                    player.col++;
                }
                break;
            case LEFT:
                if(player.height + player.row < 100) {
                    player.row++;
                }
                break;
        }
        
    }
    if(BUTTON_HELD(BUTTON_LEFT)) {//slide the player to the left
        switch(prevMovement) {
            case UP:
                if(player.col > 100) {
                    player.col--;
                }
               break;
            case RIGHT:
                if(player.row > 60) {
                    player.row--;
                }
               break;
            case DOWN:
                if(player.col > 100) {
                    player.col--;
                }
                break;
            case LEFT:
                if(player.row > 60) {
                    player.row--;
                }
                break;
        }
    }
   
}

void drawGame() {
    drawPlayer();
    drawPrincess();
    
}

void drawPlayer() {
    shadowOAM[0].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE; //| ATTR0_AFFINE;//big yellow sqaure is because of this affine
	shadowOAM[0].attr1 = player.col | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.sprite,0);
 
}

void drawPrincess() {
    shadowOAM[1].attr0 = princess.row | ATTR0_4BPP | ATTR0_SQUARE; //| ATTR0_AFFINE;//big yellow sqaure is because of this affine
	shadowOAM[1].attr1 = princess.col | ATTR1_SMALL;
    shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8,0);
    
}



