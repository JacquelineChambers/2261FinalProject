#include "enemies.h"
#include "game.h"
#include "myLib.h"

ALIEN alien[ALIENCOUNT];
ALIENLASER alienLaser[ALIENLASERCOUNT];
ASTEROID asteroid[ASTEROIDCOUNT];
CAR car[CARCOUNT];
int enemiesRemaining;
int timer;
int timerShine;

void initAliens() { //creates aliens
    int j = 0;
    for(int i=0; i < ALIENCOUNT; i++){
        alien[i].height = 16;
        alien[i].width = 16;
        alien[i].cdel = 1;
        alien[i].rdel = 16;
        alien[i].active = 0;
        alien[i].erased = 0;
        alien[i].alienAni = 17;
        alien[i].alienPal = 3;
        alien[i].shine = 0;
        if(j < 4) {
            alien[i].direction = j;
            switch(j) {
                case 0:
                alien[i].row = 0;//top to bottom
                alien[i].col = 10;
                continue;
                case 1:
                alien[i].row = 159;//bottom to top
                alien[i].col = 20;
                continue;
                case 2:
                alien[i].row = 10;//left to right
                alien[i].col = 0;
                continue;
                case 3:
                alien[i].row = 100;// right to left
                alien[i].col = 239;
                continue;
            }
            
            j++;
        } else {
            j = 0;
        }
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
            car[i].row = 140;
            car[i].col = 20 + (i * 20);
        
    }
       
}
void initAsteroids() {//creates asteroids
    int j = 0;
    for(int i=0; i < ASTEROIDCOUNT; i++){
        asteroid[i].height = 16;
        asteroid[i].width = 16;
        asteroid[i].cdel = 1;
        asteroid[i].rdel = 16;
        asteroid[i].active = 1;
        asteroid[i].erased = 0;
        asteroid[i].asteroidAni = 19;
        if (j == 0) {
            asteroid[i].row = 124;
            asteroid[i].col = 20 + (i * 10);
            asteroid[i].direction = j;
            j = 1;
        }
        if (j == 1) {
            asteroid[i].row = 50;
            asteroid[i].col = 224;
            asteroid[i].direction = j;
            j = 0;
        }
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
void resetAlien() {//allows the alien to move
    
}
void resetCar() {//allows the car to move
    
}
void resetAsteroid() {//allows the asteroid to move

}
void resetAlienLaser() {//allows the alien's laser to move

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
    if(timerShine%5 == 0) {
            if(alien->shine == 6) {
                alien->shine = 0;
            } else {
                alien->shine+=2;
            }
        }
     
    
    if(alien->row < 144 && alien->col < 224 && alien->active) {
        
        switch(alien->direction) {

            case 0:
                if(timer%4 == 0) {
                alien->col++; 
            
                }
                if(timer%5 == 0) {
                alien->row++;
          
                }
                break;
            case 1:
                if(timer%4 == 0) {
                alien->col++; 
                }
                if(timer%5 == 0) {
                alien->row--;
                }
                break;
            case 2:
                if(timer%4 == 0) {
                alien->col++; 
            
                }
                if(timer%3 == 0) {
                alien->row++;
          
                }
                break;
            case 3:
                if(timer%4 == 0) {
                alien->col--; 
            
                }
                
                if(timer%5 == 0) {
                alien->row--;
          
                }
                break;
        }
        
        
        
        timer++;
    } else {
        alien->active = 0;
         
            switch(alien->direction) {
                case 0:
                alien->row = 0;//top to bottom
                alien->col = 10;
                break;
                case 1:
                alien->row = 159;//bottom to top
                alien->col = 20;
                break;
                case 2:
                alien->row = 10;//left to right
                alien->col = 0;
                break;
                case 3:
                alien->row = 100;// right to left
                alien->col = 239;
                break;
        } 
    }
    if (timer%50 == 0 && !alien->active) {
        alien->active = 1;
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
    if(car->row > 0 && car->col > 0 && car->active) {
        if(timer%2 == 0) {
            car->col++;
        }
        if(timer%5 == 0) {
            car->col--;
        }
        if(timer%4 == 0) {
            car->row--;
        }
       timer++;
    } else {
        car->active = 0;
        car->row = 152;
        car->col = 60; 
            
    }
    if (timer%50 == 0 && !car->active) {
        car->active = 1;
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
    if(asteroid->row > 0 && asteroid->col > 0 && asteroid->active) {
         if(timer%3 == 0) {
            asteroid->col++;
        }
        if(timer%9 == 0) {
            asteroid->col--;
        }
        if(timer%4 == 0) {
            asteroid->row--;
        }
        timer++;
    } else {
        asteroid->active = 0;
        if (!asteroid->direction) {
            asteroid->row = 124;
            asteroid->col = 50;
        } else {
            asteroid->row = 50;
            asteroid->col = 224;
        }
       
            
    }
    if (timer%50 == 0 && !asteroid->active) {
        asteroid->active = 1;
    }
}