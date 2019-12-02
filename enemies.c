#include "enemies.h"
#include "game.h"
#include "myLib.h"

ALIEN alien[ALIENCOUNT];
//ALIENLASER alienLaser[ALIENLASERCOUNT];
ASTEROID asteroid[ASTEROIDCOUNT];
CAR car[CARCOUNT];
int enemiesRemaining;
int timer;
int timerShine;
int timerShine2;
enum {UP, DOWN, LEFT, RIGHT};
enum {R, L};

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
                alien[i].row = 1;//top to bottom
                alien[i].col = 10;
                j++;
                continue;
                case 1:
                alien[i].row = 159;//bottom to top
                alien[i].col = 20;
                j++;
                continue;
                case 2:
                alien[i].row = 10;//left to right
                alien[i].col = 1;
                j++;
                continue;
                case 3:
                alien[i].row = 100;// right to left
                alien[i].col = 239;
                j++;
                continue;
            }
            
            
        } else {
            j = 0;
        }
    }
       
}

void initCar() {//creates cars
int j = 0;
    for(int i=0; i < CARCOUNT; i++){
        car[i].height = 16;
        car[i].width = 16;
        car[i].cdel = 1;
        car[i].rdel = 16;
        car[i].active = 1;
        car[i].erased = 0;
        car[i].carAni = 21;
        car[i].carShine = 0;
        if(j < 4) {
            car[i].direction = j;
            switch(j) {
                case 0:
                car[i].row = 140;//bottom to top
                car[i].col = 20;
                 j++;
                continue;
                case 1:
                car[i].row = 100;// right to left
                car[i].col = 210;
                 j++;
                continue;
                case 2:
                car[i].row = 10;//left to right
                car[i].col = 1;
                 j++;
                continue;
                case 3:
                car[i].row = 0;//top to bottom
                car[i].col = 10;
                 j++;
                continue;
            }
            
           
        } else {
            j = 0;
        }
        
    }
       
}

void initAsteroids() {//creates asteroids
    int j = 0;
    for(int i=0; i < ASTEROIDCOUNT; i++){
        asteroid[i].height = 16;
        asteroid[i].width = 16;
        asteroid[i].cdel = 1;
        asteroid[i].rdel = 1;
        asteroid[i].active = 1;
        asteroid[i].erased = 0;
        asteroid[i].asteroidAni = 19;
        if(j < 4) {
            asteroid[i].direction = j;
        switch(j) {
                case 0:
                asteroid[i].row = 159;//bottom to top
                asteroid[i].col = 20;
                j++;
                continue;
                case 1:
                asteroid[i].row = 10;//left to right
                asteroid[i].col = 1;
                j++;
                continue;
                case 2:
                asteroid[i].row = 100;// right to left
                asteroid[i].col = 239;
                j++;
                continue;
                case 3:
                asteroid[i].row = 1;//top to bottom
                asteroid[i].col = 10;
                j++;
                continue;
            }
            
        } else {
            j = 0;
        }
    }
       
}

/*
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
*/
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
                alien->row = 1;//top to bottom
                alien->col = 10;
                break;
                case 1:
                alien->row = 159;//bottom to top
                alien->col = 20;
                break;
                case 2:
                alien->row = 10;//left to right
                alien->col = 1;
                break;
                case 3:
                alien->row = 100;// right to left
                alien->col = 239;
                break;
        } 
        alien->row>>=2;
        alien->col>>=2;
        if (timer%5 == 0) {
            alien->active = 1;
                if (alien->direction == 4) {
                alien->direction = 0;
                } else {
                    alien->direction++;
                }
        
        }
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
    if(timerShine2%5 == 0) {
            if(car->carShine == 6) {
                car->carShine = 0;
            } else {
                car->carShine+=2;
            }
        }
    if((car->row > 0 && car->col > 0) && (car->row < 160 && car->col < 240)&& car->active) {
        
        switch(car->direction) {
            case 0:
                if(timer%4 == 0) {
                car->col++; 
                }
                if(timer%5 == 0) {
                car->row--;
                }
                break;
             case 1:
                if(timer%4 == 0) {
                car->col--; 
            
                }
                
                if(timer%5 == 0) {
                car->row--;
          
                }
                break;
            case 2:
                if(timer%4 == 0) {
                car->col++; 
            
                }
                if(timer%3 == 0) {
                car->row++;
          
                }
                break;
           

            case 3:
                if(timer%4 == 0) {
                car->col++; 
                }
                if(timer%5 == 0) {
                car->row++;
                }
                break;
            
        }
        
        
        
        timer++;
    } else {
        car->active = 0;
         
            switch(car->direction) {
                 case 0:
                car->row = 159;//bottom to top
                car->col = 20;
                break;
                case 1:
                car->row = 100;// right to left
                car->col = 239;
                break;
                case 2:
                car->row = 10;//left to right
                car->col = 1;
                break;
                case 3:
                car->row = 1;//top to bottom
                car->col = 10;
                break;
        } 
        car->row>>=2;
        car->col>>=2;
            if (timer%5 == 0 ) {
            car->active = 1;
                if (car->direction == 4) {
                car->direction = 0;
                } else {
                car->direction++;
                }
        }
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
    if((asteroid->row > 0 && asteroid->col > 0) && (asteroid->row < 160 && asteroid->col<240) && asteroid->active) {
        
        switch(asteroid->direction) {

            case 0:
                if(timer%4 == 0) {
                asteroid->col++; 
                }
                if(timer%5 == 0) {
                asteroid->row--;
                }
                break;
            case 1:
                if(timer%4 == 0) {
                asteroid->col++; 
                }
                if(timer%5 == 0) {
                asteroid->row++;
                }
                break;
            case 2:
                if(timer%4 == 0) {
                asteroid->col--; 
            
                }
                
                if(timer%5 == 0) {
                asteroid->row--;
          
                }
                break;
            case 3:
                if(timer%4 == 0) {
                asteroid->col++; 
            
                }
                if(timer%3 == 0) {
                asteroid->row++;
          
                }
                break;
            
        }
        
        
        
        timer++;
    } else {
        asteroid->active = 0;
         
            switch(asteroid->direction) {
                case 0:
                asteroid->row = 159;//bottom to top
                asteroid->col = 20;
                break;
                case 1:
                asteroid->row = 10;//left to right
                asteroid->col = 1;
                break;
                case 2:
                asteroid->row = 100;// right to left
                asteroid->col = 239;
                break;
                case 3:
                asteroid->row = 1;//top to bottom
                asteroid->col = 10;
                break;
        } 
        asteroid->row>>=2;
        asteroid->col>>=2;

        if (timer%5 == 0) {
        asteroid->active = 1;
        if (asteroid->direction == 4) {
            asteroid->direction = 0;
        } else {
            asteroid->direction++;
        }
    }
    }
    
    
    
}