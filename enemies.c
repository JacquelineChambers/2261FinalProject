#include "enemies.h"

ALIEN alien[ALIENCOUNT];
ALIENLASER alienLaser[ALIENLASERCOUNT];
ASTEROID asteroid[ASTEROIDCOUNT];
CAR car[CARCOUNT];
int enemiesRemaining;


void initAliens() {
    for(int i=0; i < ALIENCOUNT; i++){
        alien[i].height = 16;
        alien[i].width = 16;
        alien[i].cdel = 1;
        alien[i].rdel = 16;
        alien[i].active = 1;
        alien[i].erased = 0;
        alien[i].alienAni = 0;
        alien[i].row = 10;
        alien[i].col = 20 + (i*30);
    }
       
}
void initCar() {
    for(int i=0; i < CARCOUNT; i++){
        alien[i].height = 16;
        alien[i].width = 16;
        alien[i].cdel = 1;
        alien[i].rdel = 16;
        alien[i].active = 1;
        alien[i].erased = 0;
        alien[i].alienAni = 0;
        alien[i].row = 100;
        alien[i].col = 20 + (i*30);
    }
       
}