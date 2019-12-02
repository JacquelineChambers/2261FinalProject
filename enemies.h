


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
	int alienPal;
	int active;
	int erased;
	int shine;
	int alienAni;
	int direction;
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
	int carAni;
	int carShine;
	int direction;
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
	int asteroidAni;
	int direction;
} ASTEROID;

#define ALIENCOUNT 2
//#define ALIENLASERCOUNT 5
#define ASTEROIDCOUNT 2
#define CARCOUNT 2


extern ALIEN alien[ALIENCOUNT];
//extern ALIENLASER alienLaser[ALIENLASERCOUNT];
extern ASTEROID asteroid[ASTEROIDCOUNT];
extern CAR car[CARCOUNT];
extern int enemiesRemaining;
extern int timer;
extern int timerShine;
extern int timerShine2;

void initAliens();
void initCars();
void initAsteroids();


void drawAlien(ALIEN* alien, int j);
void drawCar(CAR* car, int j);
void drawAsteroid(ASTEROID* asteroid, int j);
void drawAlienLasers(ALIENLASER* alienLaser, int j);

void updateAlien(ALIEN* alien);
void updateCar(CAR* car);
void updateAsteroid(ASTEROID* asteroid);
void updateAlienLasers(ALIENLASER* alienLaser); 

int fireAlienLaser(ALIENLASER* alienLaser, ALIEN* alien);

