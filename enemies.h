#ifndef MY_LIB_H
#define MY_LIB_H

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

#define ALIENCOUNT 15
#define ALIENLASERCOUNT 5
#define ASTEROIDCOUNT 2
#define CARCOUNT 2

extern ALIEN alien[ALIENCOUNT];
extern ALIENLASER alienLaser[ALIENLASERCOUNT];
extern ASTEROID asteroid[ASTEROIDCOUNT];
extern CAR car[CARCOUNT];
extern int enemiesRemaining;


void initAliens();
void initCars();
void initAsteroids();


void drawAlien(ALIEN* alien, int j);
void drawCar(CAR* car, int j);
void drawAsteroid(ASTEROID* asteroid, int j);
void drawAlienLasers(ALIENLASER* alienLaser, int j);

void updateAlien(ALIEN* alien, int j);
void updateCar(CAR* car, int j);
void updateAsteroid(ASTEROID* asteroid, int j);
void updateAlienLasers(ALIENLASER* alienLaser, int j); 

int fireAlienLaser(ALIENLASER* alienLaser, ALIEN* alien);


#endif