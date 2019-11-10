

typedef struct {
	int row;
	int col;
    int rdel;
    int cdel;
	int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
	int bulletTimer;
} PLAYER;

typedef struct {
	int col;
	int row;
	int cdel;
	int rdel;
	int width;
	int height;
	int active;
	int erased;
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
extern LIVECOUNT liveCount[LIVES];
extern BULLET bullet[BULLETCOUNT];
extern int livesRemaining;
extern int timer;

//methods

void dispBackground();
//initalize methods
void initGame();
void initPlayer();
//draw methods
void drawGame();
void drawBullets(BULLET* bullet, int j);
void drawPlayer();
//update methods
void updateGame();
void updatePlayer();
void updateBullet(BULLET* bullet);
//fire bullet methods
int fireBullet(BULLET* bullet);

