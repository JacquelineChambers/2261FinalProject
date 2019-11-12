# 1 "movement.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "movement.c"
# 1 "movement.h" 1
# 2 "movement.c" 2
# 1 "myLib.h" 1
# 3 "movement.c" 2
# 1 "game.h" 1


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
} BULLET;


typedef struct {
 int row;
 int col;
 int height;
 int width;
 int frame;
} LIVECOUNT;







extern PLAYER player;
extern PRINCESS princess;
extern LIVECOUNT liveCount[3];
extern BULLET bullet[3];
extern int livesRemaining;
extern int timer;



void dispBackground();

void initGame();
void initPlayer();
void initPrincess();

void drawGame();
void drawBullets(BULLET* bullet, int j);
void drawPlayer();
void drawPrincess();

void updateGame();
void updatePlayer();
void updatePrincess();
void updateBullet(BULLET* bullet);

int fireBullet(BULLET* bullet);
# 4 "movement.c" 2
