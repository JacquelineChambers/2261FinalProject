# 1 "enemies.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "enemies.c"
# 1 "enemies.h" 1



typedef struct {
 int col;
 int row;
 int cdel;
 int rdel;
 int width;
 int height;
 int active;
 int erased;
} ALIENLASER;

typedef struct {
 int cdel;
 int rdel;
 int row;
 int col;
 int height;
 int width;
 int alienType;
 int alienPal;
 int active;
 int erased;
 int alienAni;
} ALIEN;

typedef struct {
 int cdel;
 int rdel;
 int row;
 int col;
 int height;
 int width;
 int enemyType;
 int enemyPal;
 int active;
 int erased;
 int num;
 int enemyAni;
} CAR;

typedef struct {
 int cdel;
 int rdel;
 int row;
 int col;
 int height;
 int width;
 int enemyType;
 int enemyPal;
 int active;
 int erased;
 int num;
 int enemyAni;
} ASTEROID;






extern ALIEN alien[15];
extern ALIENLASER alienLaser[5];
extern ASTEROID asteroid[2];
extern CAR car[2];
extern int enemiesRemaining;


void initAliens();
void initCars();
void initAsteroids();


void drawAlien(ALIEN* alien, int j);
void drawCar(CAR* car, int j);
void drawAsteroid(ASTEROID* asteroid, int j);
void drawAlienLasers(ALIENLASER* alienLaser, int j);

void updateAlien(ALIEN* alien);
void updateCar(CAR* car, int j);
void updateAsteroid(ASTEROID* asteroid, int j);
void updateAlienLasers(ALIENLASER* alienLaser, int j);

int fireAlienLaser(ALIENLASER* alienLaser, ALIEN* alien);
# 2 "enemies.c" 2

ALIEN alien[15];
ALIENLASER alienLaser[5];
ASTEROID asteroid[2];
CAR car[2];
int enemiesRemaining;


void initAliens() {
    for(int i=0; i < 15; i++){
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
    for(int i=0; i < 2; i++){
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
