#include "myLib.h"
#include "game.h"
#include "enemies.h"
#include "movement.h"
#include "cutScene.h"

#include "bg0Space.h"
#include "bg1Stars.h"
#include "sprites.h"
#include "sine.h"
#include "sound.h"
#include "noot5.h"
#include "noot7.h"
#include "fucking-noot-noot.h"
//s->spriteCol = s->baseState + (s->aniState + (s->width/8));

unsigned short hOff;
unsigned short tmphOff;
int livesRemaining;
int enemiesKilled;
PLAYER player;
PRINCESS princess;
BULLET bullet[BULLETCOUNT];
LIVES liveCount[LIVECOUNT];
SHIELD shield[SHEILDCOUNT];

TEXT text3[DESCRPLENGTH];
TEXT text4[DESCRPLENGTH];

OBJ_ATTR shadowOAM[128];
OBJ_AFFINE* shadowAffine = (OBJ_AFFINE*)(shadowOAM);
int shotDirection;
int princessHealth;
int playerHealth;
int shootAni;
int timerShooting;
unsigned int rotTimer;
int hit;
int immunity;
int immunityWait;
enum {UP, DOWN, LEFT, RIGHT};
enum {R, L};
SOUND soundB;

void initGame() {
     REG_BLDCNT = BLD_BDa | BLD_BG0b | BLD_BG1b | BLD_STD;
     
     immunity = 0;
     immunityWait = 0;
     princessHealth = 1;
     playerHealth = 3;
     dispBackground();
     timer = 0;
     initAliens();
     initAsteroids();
     initCar();
     initPlayer();
     initPrincess();
     initBullet();
     initLifeCount();
     initShield();
     initLifeText();
     initShieldText();
     for( int i = 0; i < DESCRPLENGTH; i++) {
        lifeText_setup(&text3[i], i);
     }
     for( int i = 0; i < DESCRPLENGTH; i++) {
        shieldText_setup(&text4[i], i);
     }
     bullet[0].tetherBullet = 1;
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
        bullet[i].shotDirection = UP;
        bullet[i].tetherBullet = 0;

     }
    
}

void initLifeCount() {
    for (int i = 0; i < LIVECOUNT; i++) {
        liveCount[i].row = 150 ;
        liveCount[i].col = 20 + (i * 8);
        liveCount[i].x = 5;
        liveCount[i].y = 9;
    }
}

void initShield() {
    for (int i = 0; i < SHEILDCOUNT; i++) {
        shield[i].row = 150;
        shield[i].col = 100 + (i * 8);
        shield[i].x = 5;
        shield[i].y = 10;
    }
}

void initLifeText() {
    text3[0].letter = 11;//l
    text3[1].letter = 8;//i
    text3[2].letter = 21;//v
    text3[3].letter = 4;//e
    text3[4].letter = 18;//s
    text3[5].letter = 27;//space
     
}
void initShieldText() {
    text4[0].letter = 18;//s
    text4[1].letter = 7;//h
    text4[2].letter = 8;//i
    text4[3].letter = 4;//e
    text4[4].letter = 11;//l   
    text4[5].letter = 3;//d  
    
}

void lifeText_setup(TEXT* text3, int i) {
    text3->row = 140;
    text3->col = 10 + (i * 8);
}

void shieldText_setup(TEXT* text4, int i) {
    text4->row = 140;
    text4->col = 90 + (i * 8);
}

void updateGame() {

    parallax();
    updatePlayer();
    updatePrincess();
    updateEnemies();
   
   
    for(int i = 0; i< BULLETCOUNT; i++){
        updateBullet(&bullet[i]);
    }
}

void updateEnemies() {//collissions with alien
    for(int i = 0; i< ALIENCOUNT; i++){
        updateAlien(&alien[i]);
     }
     timerShine++;
    for(int i = 0; i< CARCOUNT; i++) {
        updateCar(&car[i]);
    }
    timerShine2++;
    for(int i = 0; i< ASTEROIDCOUNT; i++) {
        updateAsteroid(&asteroid[i]);
    }
    
}
void updateBullet(BULLET* bullet){//player's bullet movement is updated
        
    if (bullet->active == 1 && bullet->row < 160 && bullet->col < 240 
    && bullet->row > 0 && bullet->col > 0 && bullet->tetherBullet == 1) {
            switch(bullet->shotDirection) {
            case UP:
                bullet->row-=2;
                break;
            case RIGHT:
                bullet->col+=2;
                break;
            case DOWN:
                bullet->row+=2;
                break;
            case LEFT:
                bullet->col-=2;
                break;
        }	
    }
    if (bullet->active == 1 && bullet->row < 160 && bullet->col < 240 
    && bullet->row > 0 && bullet->col > 0 && bullet->tetherBullet == 0) {
            switch(prevMovement) {
            case UP:
                bullet->row-=2;
                break;
            case RIGHT:
                bullet->col+=2;
                break;
            case DOWN:
                bullet->row+=2;
                break;
            case LEFT:
                bullet->col-=2;
                break;
        }
    }
    else {
        bullet->active = 0;
    }
}

void fireBullet(BULLET* bullet) {//player can fire bullet
        

		if (bullet->active == 0 && bullet->tetherBullet == 0) {
            chooseSound();
            switch(bullet->shotDirection) {
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
         shootAni = 4;
		}
        if (bullet->active == 0 && bullet->tetherBullet == 1) {
             chooseSound();
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
		}
     
}

void chooseSound() {
    playSoundB(noot5,NOOT5LEN,NOOT5FREQ, 0);
}

void updatePlayer() {//updates player's movement and actions based on user input
    if(BUTTON_PRESSED(BUTTON_A)) { //shooty
    bullet->shotDirection = prevMovement;
        for(int i = 0; i< BULLETCOUNT; i++) {
            fireBullet(&bullet[i]);
        }
    }
    if(BUTTON_PRESSED(BUTTON_L)) { // rotate player to the left
        rotateLeft(); 
    }
    if(BUTTON_PRESSED(BUTTON_R)) { // rotate the player to the right
        rotateRight();
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) { //slide player to the right
        slideRight();
    }
    if(BUTTON_HELD(BUTTON_LEFT)) {//slide the player to the left
        slideLeft();
    }
    if(BUTTON_PRESSED(BUTTON_B) && immunityWait == 0) {//slide the player to the left
        immunity = 800;
        immunityWait += 800;
    }
    if (immunity == 0) {
        for(int i = 0; i < ALIENCOUNT; i++ ){
                    if ((alien[i].active) && collision(player.col, player.row, player.width, player.height,
                                alien[i].col, alien[i].row, alien[i].width, alien[i].height)) {

                                alien[i].active = 0;
                                playerHealth--;
                                hit+=4;
                                playSoundB(fucking_noot_noot,FUCKING_NOOT_NOOTLEN,FUCKING_NOOT_NOOTFREQ, 0);
                        }
        }
        for(int i = 0; i < CARCOUNT; i++ ){
                if ((car[i].active) && collision(player.col, player.row, player.width, player.height,
                            car[i].col, car[i].row, car[i].width, car[i].height)) {

                            car[i].active = 0;
                            playerHealth--;
                            hit+=4;
                            playSoundB(fucking_noot_noot,FUCKING_NOOT_NOOTLEN,FUCKING_NOOT_NOOTFREQ, 0);
                    }
        }
        for(int i = 0; i < ASTEROIDCOUNT; i++ ){
                if ((asteroid[i].active) && collision(player.col, player.row, player.width, player.height,
                            asteroid[i].col, asteroid[i].row, asteroid[i].width, asteroid[i].height)) {

                            asteroid[i].active = 0;
                            playerHealth--;
                            hit+=4;
                            playSoundB(fucking_noot_noot,FUCKING_NOOT_NOOTLEN,FUCKING_NOOT_NOOTFREQ, 0);
                    }
        }
    }
}

void updatePrincess() {
    if (immunity == 0) {
        for(int i = 0; i < ALIENCOUNT; i++ ){
                if ((alien[i].active) && collision(player.col, player.row, player.width, player.height,
                            alien[i].col, alien[i].row, alien[i].width, alien[i].height)) {

                            alien[i].active = 0;
                            playerHealth--;
                            hit+=4;
                    }
        }
        for(int i = 0; i < CARCOUNT; i++ ){
                if ((car[i].active) && collision(princess.col, princess.row, princess.width, princess.height,
                            car[i].col, car[i].row, car[i].width, car[i].height)) {

                            car[i].active = 0;
                            princessHealth--;
                            hit+=4;
                    }
        }
        for(int i = 0; i < ASTEROIDCOUNT; i++ ){
                if ((asteroid[i].active) && collision(princess.col, princess.row, princess.width, princess.height,
                            asteroid[i].col, asteroid[i].row, asteroid[i].width, asteroid[i].height)) {

                            asteroid[i].active = 0;
                            princessHealth--;
                            hit+=4;
                    }
        }
    }
}

void drawGame() {//draws all sprite in the game
    int j = 2;
    drawPlayer();
    if(timerShooting%5 == 0 && shootAni != 0) {
        shootAni-=2;
        timerShooting = 0;
    }
    timerShooting++;
    drawPrincess();
    for(int i = 0; i< BULLETCOUNT; i++){
        drawBullet(&bullet[i], j);
        j++;
    } 
    
    for(int i = 0; i< CARCOUNT; i++){
        drawCars(&car[i], j);
        j++;
    } 
    
    for(int i = 0; i< ALIENCOUNT; i++){
        drawAlien(&alien[i], j);
        j++;
    }

    for(int i = 0; i< ASTEROIDCOUNT; i++){
        drawAsteroids(&asteroid[i], j);
        j++;
    }
    int x = 0;
    if (playerHealth >= 3) {
        drawLives(&liveCount[x], j);
       x++;
        
    } else {
         shadowOAM[j].attr0 = ATTR0_HIDE; 
    } 
    j++;
    if (playerHealth >= 2) {
        drawLives(&liveCount[x], j);
        x++;
        
    } else {
         shadowOAM[j].attr0 = ATTR0_HIDE; 
    }
    j++;
    if (playerHealth >= 1) {
        drawLives(&liveCount[x], j);
       
    } else {
         shadowOAM[j].attr0 = ATTR0_HIDE; 
    }
    j++;
    int i = 0;
    if (immunity > 600) {
            drawShield(&shield[i], j);
            
            i++;
    } else {
       shadowOAM[j].attr0 = ATTR0_HIDE; 
    }
    j++;
    if (immunity > 400) {
            drawShield(&shield[i], j);
            
            i++;
    }  else {
        shadowOAM[j].attr0 = ATTR0_HIDE;
        
    }
    j++;
    if (immunity > 100) {
            drawShield(&shield[i], j);
            
    } else {
        shadowOAM[j].attr0 = ATTR0_HIDE;
        
    }
    j++;
    for (int i = 0; i< DESCRPLENGTH; i++) {
        drawQuoteOne(&text3[i],  j);
        j++;
    }
    for (int i = 0; i< DESCRPLENGTH; i++) {
        drawQuoteOne(&text4[i],  j);
        j++;
    }
    if(hit != 0) {
        hit--;
    }
    if (immunity != 0) {
        immunity--;
    }
    if (immunityWait != 0) {
        immunityWait--;
    }
    
}

void drawPlayer() {//draws player sprite
    shadowOAM[0].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE; //| ATTR0_AFFINE;
	shadowOAM[0].attr1 = player.col | ATTR1_SMALL;
    if (hit > 0) {
        shadowOAM[0].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(player.sprite, shootAni);
    } else {
         shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.sprite, shootAni);
    }
}

void drawPrincess() {//draws princess sprite
    REG_BLDALPHA = BLD_EVA(10) | BLD_EVB(0);
    REG_BLDY = BLD_EY(10);
	shadowOAM[1].attr1 = princess.col | ATTR1_MEDIUM;
    if (immunity > 0) {
        shadowOAM[1].attr0 = princess.row | ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND;
        shadowOAM[1].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(8,0);
    } else {
        shadowOAM[1].attr0 = princess.row | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[1].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(8,0);
    }
}

void drawBullet(BULLET* bullet, int j) {//increment loc up
    if (bullet->active) {
        shadowOAM[j].attr0 = (ROWMASK & bullet->row) | ATTR0_4BPP | ATTR0_SQUARE; //| ATTR0_AFFINE;
        shadowOAM[j].attr1 = (COLMASK & bullet->col) | ATTR1_TINY;
        shadowOAM[j].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(bullet->sprite,0);
    }
    else {
        shadowOAM[j].attr0 = ATTR0_HIDE;
    }
}

void drawAlien(ALIEN* alien, int j) {//increment loc up
    if (alien->active) {
        shadowOAM[j].attr0 = (ROWMASK & alien->row) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[j].attr1 = (COLMASK & alien->col) | ATTR1_SMALL;
        shadowOAM[j].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(alien->alienAni,alien->shine);
    }
    else {
        shadowOAM[j].attr0 = ATTR0_HIDE;
    }
}

void drawCars(CAR* car, int j) {//increment loc up
    if (car->active) {
        shadowOAM[j].attr0 = (ROWMASK & car->row) | ATTR0_4BPP | ATTR0_SQUARE; 
        shadowOAM[j].attr1 = (COLMASK & car->col) | ATTR1_SMALL;
        shadowOAM[j].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(car->carAni,car->carShine);
    }
    else {
        shadowOAM[j].attr0 = ATTR0_HIDE;
    }
}
void drawAsteroids(ASTEROID* asteroid, int j) {//increment loc up
    rotTimer++;
    int deg = (rotTimer % 360);
        shadowAffine[0].a = sin_lut_fixed8[(deg + 90) % 360];
        shadowAffine[0].b = sin_lut_fixed8[(deg + 180) % 360];
        shadowAffine[0].c = sin_lut_fixed8[(deg) % 360];
        shadowAffine[0].d = sin_lut_fixed8[(deg + 90) % 360];
    if (asteroid->active) {
        shadowOAM[j].attr0 = asteroid->row | ATTR0_4BPP | ATTR0_SQUARE | ATTR0_DOUBLEAFFINE;
        shadowOAM[j].attr1 = asteroid->col | ATTR1_SMALL | ATTR1_AFFINEINDEX(0); 
        shadowOAM[j].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(19,0);
    }
    else {
        shadowOAM[j].attr0 = ATTR0_HIDE;
    }
}
void drawLives(LIVES* liveCount, int j) {//increment loc up
   
        shadowOAM[j].attr0 = (ROWMASK & liveCount->row) | ATTR0_4BPP | ATTR0_SQUARE; 
        shadowOAM[j].attr1 = (COLMASK & liveCount->col) | ATTR1_TINY;
        shadowOAM[j].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(liveCount->x,liveCount->y);
   
}
void drawShield(SHIELD* shield, int j) {//increment loc up
   
        shadowOAM[j].attr0 = (ROWMASK & shield->row) | ATTR0_4BPP | ATTR0_SQUARE; 
        shadowOAM[j].attr1 = (COLMASK & shield->col) | ATTR1_TINY;
        shadowOAM[j].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(shield->x,shield->y);
   
}








