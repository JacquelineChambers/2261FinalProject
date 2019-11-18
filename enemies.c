#include "enemies.h"
#include "game.h"
#include "myLib.h"

ALIEN alien[ALIENCOUNT];
ALIENLASER alienLaser[ALIENLASERCOUNT];
ASTEROID asteroid[ASTEROIDCOUNT];
CAR car[CARCOUNT];
int enemiesRemaining;
int timer;


void initAliens() { //creates aliens
    for(int i=0; i < ALIENCOUNT; i++){
        alien[i].height = 16;
        alien[i].width = 16;
        alien[i].cdel = 1;
        alien[i].rdel = 16;
        alien[i].active = 1;
        alien[i].erased = 0;
        alien[i].alienAni = 17;
        alien[i].shine = 0;
        alien[i].row = 0;
        alien[i].col = 20 + (i*30);
    }
       
}
void initCar() {//creates cars
    for(int i=0; i < CARCOUNT; i++){
        car[i].height = 16;
        car[i].width = 16;
        car[i].cdel = 1;
        car[i].rdel = 16;
        car[i].active = 1;
        car[i].erased = 0;
        car[i].carAni = 21;
        car[i].row = 0;
        car[i].col = 20 + (i*30);
    }
       
}
void initAsteroids() {//creates asteroids
    for(int i=0; i < ASTEROIDCOUNT; i++){
        asteroid[i].height = 16;
        asteroid[i].width = 16;
        asteroid[i].cdel = 1;
        asteroid[i].rdel = 16;
        asteroid[i].active = 1;
        asteroid[i].erased = 0;
        asteroid[i].asteroidAni = 19;
        asteroid[i].row = 0;
        asteroid[i].col = 20 + (i*30);
    }
       
}

void initAlienLaser() {//creates alien's lasers
    for(int i=0; i < ALIENLASERCOUNT; i++){
        alienLaser[i].height = 16;
        alienLaser[i].width = 16;
        alienLaser[i].cdel = 1;
        alienLaser[i].rdel = 16;
        alienLaser[i].active = 1;
        alienLaser[i].erased = 0;
        alienLaser[i].row = 0;
        alienLaser[i].col = 20 + (i*30);
    }
       
}
void alienMovement() {//allows the alien to move
    
}
void carMovement() {//allows the car to move
    
}
void asteroidMovement() {//allows the asteroid to move

}
void alienLaserMovement() {//allows the alien's laser to move

}

void updateAlien(ALIEN *alien) {
    for(int i = 0 ;i< BULLETCOUNT;i++ ){
            if ((bullet[i].active && alien->active) && collision(alien->col, alien->row, alien->width, alien->height,
                        bullet[i].col, bullet[i].row, bullet[i].width, bullet[i].height)) {

                        bullet[i].active = 0;
                        alien->active = 0;
                        enemiesKilled++;

                }
    }
    
    if(alien->row < 160 || alien->col < 240 && timer%2 == 0) {
        if(timer%6 == 0) {
        alien->col++; 
            
        }
        if(timer%5 == 0) {
            if(alien->shine == 6) {
                alien->shine = 0;
            } else {
                alien->shine+=2;
            }
        } 
        if(timer%5 == 0) {
        alien->row++;
          
        }
        timer++;
    } else {
        initAliens();
    }

}

void updateCar(CAR *car) {
    for(int i = 0 ;i< BULLETCOUNT;i++ ){
            if ((bullet[i].active && car->active) && collision(car->col, car->row, car->width, car->height,
                        bullet[i].col, bullet[i].row, bullet[i].width, bullet[i].height)) {

                        bullet[i].active = 0;
                        car->active = 0;
                        enemiesKilled++;

                }
    }
    if(car->row < 160 || car->col < 240) {
         if(timer%2 == 0) {
            car->col++;
        }
        if(timer%3 == 0) {
            car->row++;
        }
        timer++;
    } else {
        initCar();
    }
}

void updateAsteroid(ASTEROID *asteroid) {
    for(int i = 0 ;i< BULLETCOUNT;i++ ){
            if ((bullet[i].active && asteroid->active) && collision(asteroid->col, asteroid->row, asteroid->width, asteroid->height,
                        bullet[i].col, bullet[i].row, bullet[i].width, bullet[i].height)) {

                        bullet[i].active = 0;
                        asteroid->active = 0;
                        enemiesKilled++;

                }
    }
    if(asteroid->row < 160 || asteroid->col < 240) {
         if(timer%4 == 0) {
            asteroid->col++;
        }
        if(timer%3 == 0) {
            asteroid->row++;
        }
        timer++;
    } else {
        initAsteroids();
    }
}