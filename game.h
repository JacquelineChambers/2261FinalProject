
typedef struct {
	int row;
	int col;
    int rdel;
    int cdel;
	int width;
    int height;
    int aniCounter;
	int sprite;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
	int bulletTimer;
	int 
} PLAYER;

typedef struct {
	int row;
	int col;
	int width;
    int height;
    int aniCounter;
	int sprite;
    int aniState;
    int curFrame;
    int numFrames;
	int hit;
} PRINCESS;

typedef struct {
	int col;
	int row;
	int cdel;
	int rdel;
	int width;
	int height;
	int active;
	int erased;
	int sprite;
	int shotDirection;
	int tetherBullet;
} BULLET;


typedef struct {
	int row;
	int col;
	int height;
	int width;
	int frame;
} LIVECOUNT;

// Constants

#define BULLETCOUNT 5
#define LIVES 3

//variables
extern PLAYER player;
extern PRINCESS princess;
extern LIVECOUNT liveCount[LIVES];
extern BULLET bullet[BULLETCOUNT];
extern int livesRemaining;
extern int timer;
extern int enemiesKilled;
extern enum {UP, DOWN, LEFT, RIGHT};
extern enum {R, L};
extern int movement;
extern int toggle;
extern int prevMovement;
extern int princessHealth;
extern unsigned int rotTimer;

//methods

void dispBackground();
void parallax();
//initalize methods
void initGame();
void initPlayer();
void initPrincess();
void initBullet();
void initCar();
void initAsteroids();
//draw methods
void drawGame();
void drawBullet(BULLET* bullet, int j);
void drawPlayer();
void drawPrincess();
void drawAsteroids();
void drawAlien();
void drawCars();
//update methods
void updateGame();
void updatePlayer();
void updatePrincess();
void updateBullet(BULLET* bullet);
void updateEnemies();
//fire bullet methods
void fireBullet(BULLET* bullet);


