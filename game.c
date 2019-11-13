#include "myLib.h"
#include "game.h"
#include "enemies.h"
#include "movement.h"

#include "bg0Space.h"
#include "bg1Stars.h"
#include "sprites.h"
//s->spriteCol = s->baseState + (s->aniState + (s->width/8));

unsigned short hOff;
unsigned short tmphOff;
int livesRemaining;
int enemiesKilled;
PLAYER player;
PRINCESS princess;
BULLET bullet[BULLETCOUNT];
OBJ_ATTR shadowOAM[128];
enum {UP, DOWN, LEFT, RIGHT};
enum {R, L};
int movement;
int toggle;
int prevMovement;

void initGame() {
     
     dispBackground();
     initAliens();
     initPlayer();
     initPrincess();
     initBullet();
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

    DMANow(3, spritesPal, SPRITEPALETTE, 256);
	DMANow(3, spritesTiles, &CHARBLOCK[4],  spritesTilesLen/2);
    hOff = 0;
     

}

void initPlayer() {
   
    livesRemaining = 3;
    player.width = 16;
    player.height = 16;
    player.cdel = 1;
    player.rdel = 1;
	player.col = 110;
	player.row = 60;
    player.sprite = 0;
    movement = UP;
    prevMovement = movement;
    toggle = L;
    
}
void initPrincess() {
    princess.hit = 0;
    princess.row = 70 ;
    princess.col = 100;
    princess.width = 32;
    princess.height = 32;
}
void initBullet() {
    for(int i=0; i < BULLETCOUNT; i++){
        bullet[i].col = 0;
        bullet[i].row = 0;
        bullet[i].cdel = 1;
        bullet[i].rdel = 1;
        bullet[i].width = 8;
        bullet[i].height = 8;
        bullet[i].active = 0;
        bullet[i].erased = 0;
        bullet[i].sprite = 12;
     }
    
}

void updateGame() {
    parallax();
    updatePlayer();
    //updatePrincess();
    for(int i = 0; i< BULLETCOUNT; i++){
        updateBullet(&bullet[i]);
    }
}
void updateBullet(BULLET* bullet){

    if (bullet->active == 1 && bullet->row < 160 && bullet->col < 240 && bullet->row > 0 && bullet->col > 0) {
      
            switch(prevMovement) {
            case UP:
                bullet->row--;
                break;
            case RIGHT:
                bullet->col++;
                break;
            case DOWN:
                bullet->row++;
                break;
            case LEFT:
                bullet->col--;
                break;
        }
			
    }
    else {
        bullet->active = 0;
        bullet->row = 160;
    }
}

int fireBullet(BULLET* bullet) {
   
		if (bullet->active == 0) {
            switch(prevMovement) {
            case UP:
                bullet->col = player.col+8;
			    bullet->row = player.row;
                break;
            case RIGHT:
                bullet->col = player.col;
			    bullet->row = player.row+8;
                break;
            case DOWN:
                bullet->col = player.col-8;
			    bullet->row = player.row;
                break;
            case LEFT:
                bullet->col = player.col;
			    bullet->row = player.row-8;
                break;
        }
			bullet->active = 1;
            return 1;
		}
        else return 0;
}

void updatePlayer() {
    if(BUTTON_PRESSED(BUTTON_A)) { //shooty
        for(int i = 0; i< BULLETCOUNT; i++) {
            fireBullet(&bullet[i]);
        }
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
                player.col = 90;
	            player.row = 80;
                player.sprite = 2;
                movement = DOWN;
                break;
            case DOWN:
                player.col = 110;
	            player.row = 100;
                player.sprite = 4;
                movement = RIGHT;
                break;
            case RIGHT:
                player.col = 130;
	            player.row = 80;
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
                player.col = 130;
	            player.row = 80;
                player.sprite = 6;
                movement = DOWN;
                break;
            case DOWN:
                player.col = 110;
	            player.row = 100;
                player.sprite = 4;
                movement = LEFT;
                break;
            case LEFT:
                player.col = 90;
	            player.row = 80;
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
                if(player.height + player.row < 105) {
                    player.row++;
                }
               break;
            case DOWN:
                if(player.width + player.col < 140) {
                    player.col++;
                }
                break;
            case LEFT:
                if(player.height + player.row < 105) {
                    player.row++;
                }
                break;
        }
        
    }
    if(BUTTON_HELD(BUTTON_LEFT)) {//slide the player to the left
        switch(prevMovement) {
            case UP:
                if(player.col > 95) {
                    player.col--;
                }
               break;
            case RIGHT:
                if(player.row > 65) {
                    player.row--;
                }
               break;
            case DOWN:
                if(player.col > 95) {
                    player.col--;
                }
                break;
            case LEFT:
                if(player.row > 65) {
                    player.row--;
                }
                break;
        }
    }
}

void drawGame() {
    int j = 2;
    drawPlayer();
    drawPrincess();
    for(int i = 0; i< BULLETCOUNT; i++){
        drawBullet(&bullet[i], j);
        j++;
    } 

    
}

void drawPlayer() {
    shadowOAM[0].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE; //| ATTR0_AFFINE;
	shadowOAM[0].attr1 = player.col | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.sprite,0);
}

void drawPrincess() {
    shadowOAM[1].attr0 = princess.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[1].attr1 = princess.col | ATTR1_MEDIUM;
    shadowOAM[1].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(8,0);

     
}

void drawBullet(BULLET* bullet, int j) {//increment loc up
    if (bullet->active) {
        shadowOAM[j].attr0 = bullet->row | ATTR0_4BPP | ATTR0_SQUARE; //| ATTR0_AFFINE;
        shadowOAM[j].attr1 = bullet->col | ATTR1_SMALL;
        shadowOAM[j].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(bullet->sprite,0);
    }
    else {
        shadowOAM[j].attr0 = ATTR0_HIDE;
    }
}





