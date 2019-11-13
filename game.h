

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
} BULLET;


typedef struct {
	int row;
	int col;
	int height;
	int width;
	int frame;
} LIVECOUNT;

// Constants

#define BULLETCOUNT 3
#define LIVES 3

//variables
extern PLAYER player;
extern PRINCESS princess;
extern LIVECOUNT liveCount[LIVES];
extern BULLET bullet[BULLETCOUNT];
extern int livesRemaining;
extern int timer;
extern int enemiesKilled;

//methods

void dispBackground();
//initalize methods
void initGame();
void initPlayer();
void initPrincess();
void initBullet();
//draw methods
void drawGame();
void drawBullet(BULLET* bullet, int j);
void drawPlayer();
void drawPrincess();
//update methods
void updateGame();
void updatePlayer();
void updatePrincess();
void updateBullet(BULLET* bullet);
//fire bullet methods
int fireBullet(BULLET* bullet);

