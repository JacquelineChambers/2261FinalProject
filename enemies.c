#include "enemies.h"

ALIEN alien[ALIENCOUNT];
ALIENLASER alienLaser[ALIENLASERCOUNT];
ASTEROID asteroid[ASTEROIDCOUNT];
CAR car[CARCOUNT];
int enemiesRemaining;


void initAliens() {
    int beg = 1;
    int colSwitch = 0;
    int rowInc = 5;
    int reset = 0;
    for(int i=0; i < ALIENCOUNT; i++){
        alien[i].height = 16;
        alien[i].width = 16;
        alien[i].cdel = 1;
        alien[i].rdel = 16;
        alien[i].active = 1;
        alien[i].erased = 0;
        alien[i].alienAni = 0;
        
        if((i)%3 == 0 && beg == 0){
           reset = 0;
           rowInc += 20;
        }
       
        alien[i].col = (reset*20);
        alien[i].row = rowInc;
        reset++;
        if(colSwitch == 3) {
            colSwitch = 0;
        }
        if(colSwitch == 0) {
        alien[i].alienType = 4;
        alien[i].alienPal = 1;
        }
        else if(colSwitch == 1) {
        alien[i].alienType = 6;
        alien[i].alienPal = 2;
        }
        else if(colSwitch == 2) {
        alien[i].alienType = 8;
        alien[i].alienPal = 3;
        }
        
        colSwitch++;
        beg = 0;
    }
       
}