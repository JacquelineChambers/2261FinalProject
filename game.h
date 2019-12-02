
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
	int x;
	int y;
} LIVES;

typedef struct {
	int row;
	int col;
	int x;
	int y;
} SHIELD;


// Constants

#define BULLETCOUNT 5
#define LIVECOUNT 3
#define SHEILDCOUNT 3

//variables

extern PLAYER player;
extern PRINCESS princess;
extern LIVES liveCount[LIVECOUNT];
extern BULLET bullet[BULLETCOUNT];
extern SHIELD shield[SHEILDCOUNT];
extern int livesRemaining;
extern int timer;
extern int enemiesKilled;
extern int movement;
extern int toggle;
extern int hit;
extern int playerHealth;
extern int prevMovement;
extern int princessHealth;
extern unsigned int rotTimer;
extern int immunity;
extern int immunityWait;

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
void initLifeCount();
void initLifeText();
void initShield();
void initShieldText();
void lifeText_setup();
void shieldText_setup();
//draw methods
void drawGame();
void drawBullet(BULLET* bullet, int j);
void drawPlayer();
void drawPrincess();
void drawAsteroids();
void drawAlien();
void drawCars();
void drawShield();
void drawLives();
//update methods
void updateGame();
void updatePlayer();
void updatePrincess();
void updateBullet(BULLET* bullet);
void updateEnemies();
//fire bullet methods
void fireBullet(BULLET* bullet);
//sound
void chooseSound();


