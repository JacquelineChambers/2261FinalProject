#include "myLib.h"
#include "game.h"
#include "enemies.h"
#include "movement.h"

#include "bg0Space.h"
#include "bg1Stars.h"
#include "sprites.h"
#include "sine.h"
//s->spriteCol = s->baseState + (s->aniState + (s->width/8));

unsigned short hOff;
unsigned short tmphOff;
int livesRemaining;
int enemiesKilled;
PLAYER player;
PRINCESS princess;
BULLET bullet[BULLETCOUNT];
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

void initGame() {
    immunity = 0;
    immunityWait = 0;
     enemiesKilled = 1;
     princessHealth = 1;
     playerHealth = 3;
     dispBackground();
     timer = 0;
     initAliens();
     initPlayer();
     initPrincess();
     initBullet();
     bullet[0].tetherBullet = 1;
     initAliens();
     initCar();
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
        immunity = 100;
        immunityWait += 100;
    }
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
            if ((car[i].active) && collision(player.col, player.row, player.width, player.height,
                        car[i].col, car[i].row, car[i].width, car[i].height)) {

                        car[i].active = 0;
                        playerHealth--;
                        hit+=4;
                }
    }
    for(int i = 0; i < ASTEROIDCOUNT; i++ ){
            if ((asteroid[i].active) && collision(player.col, player.row, player.width, player.height,
                        asteroid[i].col, asteroid[i].row, asteroid[i].width, asteroid[i].height)) {

                        asteroid[i].active = 0;
                        playerHealth--;
                        hit+=4;
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
    shadowOAM[1].attr0 = princess.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[1].attr1 = princess.col | ATTR1_MEDIUM;
    if (immunity > 0) {
        shadowOAM[1].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(8,0);
    } else {
        shadowOAM[1].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(8,0);
    }
}

void drawBullet(BULLET* bullet, int j) {//increment loc up
    if (bullet->active) {
        shadowOAM[j].attr0 = bullet->row | ATTR0_4BPP | ATTR0_SQUARE; //| ATTR0_AFFINE;
        shadowOAM[j].attr1 = bullet->col | ATTR1_TINY;
        shadowOAM[j].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(bullet->sprite,0);
    }
    else {
        shadowOAM[j].attr0 = ATTR0_HIDE;
    }
}

void drawAlien(ALIEN* alien, int j) {//increment loc up
    if (alien->active) {
        shadowOAM[j].attr0 = alien->row | ATTR0_4BPP | ATTR0_SQUARE; //| ATTR0_AFFINE;
        shadowOAM[j].attr1 = alien->col | ATTR1_SMALL;
        shadowOAM[j].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(alien->alienAni,alien->shine);
    }
    else {
        shadowOAM[j].attr0 = ATTR0_HIDE;
    }
}

void drawCars(CAR* car, int j) {//increment loc up
    if (car->active) {
        shadowOAM[j].attr0 = car->row | ATTR0_4BPP | ATTR0_SQUARE; //| ATTR0_AFFINE;
        shadowOAM[j].attr1 = car->col | ATTR1_SMALL;
        shadowOAM[j].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(car->carAni,0);
    }
    else {
        shadowOAM[j].attr0 = ATTR0_HIDE;
    }
}
void drawAsteroids(ASTEROID* asteroid, int j) {//increment loc up
    rotTimer++;
    int deg = (rotTimer % 360);
    

    if (asteroid->active) {
        shadowAffine[0].a = sin_lut_fixed8[(deg + 90) % 360];
        shadowAffine[0].b = sin_lut_fixed8[(deg + 180) % 360];
        shadowAffine[0].c = sin_lut_fixed8[(deg) % 360];
        shadowAffine[0].d = sin_lut_fixed8[(deg + 90) % 360];
       
       
        shadowOAM[j].attr0 = asteroid->row | ATTR0_4BPP | ATTR0_SQUARE | ATTR0_DOUBLEAFFINE;
        shadowOAM[j].attr1 = asteroid->col | ATTR1_SMALL | ATTR1_AFFINEINDEX(0); 
        shadowOAM[j].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(19,0);
    }
    else {
        shadowOAM[j].attr0 = ATTR0_HIDE;
    }
}








