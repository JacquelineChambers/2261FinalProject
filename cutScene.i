# 1 "cutScene.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "cutScene.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();



extern unsigned short hOff;
extern unsigned short tmphOff;





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 163 "myLib.h"
 void hideSprites();
# 184 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 195 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 235 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 327 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

typedef struct
{
 int row;
 int col;
 int rdel;
 int cdel;
 int size;
 u16 color;
 int AI_STATE;
} MOVOBJ;




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);

void start();
void pause();
void game();
void win();
void lose();

void goToStart();
void goToPause();
void goToGame();
void goToWin();
void goToPause();
void goToLose();
# 2 "cutScene.c" 2
# 1 "cutScene.h" 1


void initCutScene();

typedef struct {
 int row;
 int col;
 int width;
    int height;
    int aniState;
} NOOT;

typedef struct {
 int row;
 int col;
 int width;
    int height;
    int section;
} BOX;

extern BOX boxRight;

extern BOX boxLeft;

extern NOOT noot;

void initCharacter();
void drawCutScene();
# 3 "cutScene.c" 2
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
 int sprite;
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
extern int enemiesKilled;
extern enum {UP, DOWN, LEFT, RIGHT};
extern enum {R, L};
extern int movement;
extern int toggle;
extern int prevMovement;



void dispBackground();

void initGame();
void initPlayer();
void initPrincess();
void initBullet();

void drawGame();
void drawBullet(BULLET* bullet, int j);
void drawPlayer();
void drawPrincess();

void updateGame();
void updatePlayer();
void updatePrincess();
void updateBullet(BULLET* bullet);

int fireBullet(BULLET* bullet);
# 4 "cutScene.c" 2

# 1 "bg0Space.h" 1
# 22 "bg0Space.h"
extern const unsigned short bg0SpaceTiles[1888];


extern const unsigned short bg0SpaceMap[2048];


extern const unsigned short bg0SpacePal[256];
# 6 "cutScene.c" 2
# 1 "bg1Stars.h" 1
# 22 "bg1Stars.h"
extern const unsigned short bg1StarsTiles[544];


extern const unsigned short bg1StarsMap[1024];


extern const unsigned short bg1StarsPal[256];
# 7 "cutScene.c" 2
# 1 "sprites.h" 1
# 21 "sprites.h"
extern const unsigned short spritesTiles[16384];


extern const unsigned short spritesPal[256];
# 8 "cutScene.c" 2
NOOT noot;
BOX boxRight;
BOX boxLeft;
BOX boxCenter[4];
OBJ_ATTR shadowOAM[128];

void initCutScene() {
    dispBackground();
    initChar();
    initDialogBox();
    hideSprites();
}
void initChar() {
    noot.row = 100;
 noot.col = 50;
 noot.width = 64;
    noot.height = 64;
    noot.aniState = 0;;
}
void initDialogBox() {
        boxLeft.row = 120;
        boxLeft.col = 50;
        boxLeft.width = 32;
        boxLeft.height = 32;
        boxLeft.section = 0;
    for(int i = 0; i < 4 ; i++) {
        boxCenter[i].row = 120 ;
        boxCenter[i].col = 50+ (i*32);
        boxCenter[i].width = 32;
        boxCenter[i].height = 32;
        boxCenter[i].section = 4;
    }
        boxRight.row = 120;
        boxRight.col = 50+ (2*32) + 50;
        boxRight.width = 32;
        boxRight.height = 32;
        boxRight.section = 8;
}

void updateCutScene() {
    parallax();
}


void drawCutScene() {
    drawPlayer();
    drawPrincess();

    drawDialogBox();
    initCharacter();

}
void initCharacter() {
    shadowOAM[5].attr0 = noot.row | (0<<13) | (0<<14);
 shadowOAM[5].attr1 = noot.col | (2<<14);
    shadowOAM[5].attr2 = ((0)<<12) | ((2)*32+(0));
}
void drawDialogBox() {
    shadowOAM[6].attr0 = boxLeft.row | (0<<13) | (0<<14);
 shadowOAM[6].attr1 = boxLeft.col | (2<<14);
    shadowOAM[6].attr2 = ((2)<<12) | ((7)*32+(boxLeft.section));
    int j = 0;
    for(int i = 7; i < 11; i++) {
    shadowOAM[i].attr0 = boxCenter[j].row | (0<<13) | (0<<14);
 shadowOAM[i].attr1 = boxCenter[j].col | (2<<14);
    shadowOAM[i].attr2 = ((2)<<12) | ((7)*32+(boxCenter[j].section));
    j++;
    }

    shadowOAM[11].attr0 = boxRight.row | (0<<13) | (0<<14);
 shadowOAM[11].attr1 = boxRight.col | (2<<14);
    shadowOAM[11].attr2 = ((2)<<12) | ((7)*32+(boxRight.section));
}
