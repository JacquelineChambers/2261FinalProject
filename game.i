# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
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
# 2 "game.c" 2
# 1 "game.h" 1


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







extern PLAYER player;
extern LIVECOUNT liveCount[3];
extern BULLET bullet[3];
extern int livesRemaining;
extern int timer;



void dispBackground();

void initGame();
void initPlayer();

void drawGame();
void drawBullets(BULLET* bullet, int j);
void drawPlayer();

void updateGame();
void updatePlayer();
void updateBullet(BULLET* bullet);

int fireBullet(BULLET* bullet);
# 3 "game.c" 2
# 1 "enemies.h" 1
# 4 "game.c" 2
# 1 "movement.h" 1
# 5 "game.c" 2

# 1 "bg0Space.h" 1
# 22 "bg0Space.h"
extern const unsigned short bg0SpaceTiles[1888];


extern const unsigned short bg0SpaceMap[2048];


extern const unsigned short bg0SpacePal[256];
# 7 "game.c" 2
# 1 "bg1Stars.h" 1
# 22 "bg1Stars.h"
extern const unsigned short bg1StarsTiles[544];


extern const unsigned short bg1StarsMap[1024];


extern const unsigned short bg1StarsPal[256];
# 8 "game.c" 2
# 1 "sprites.h" 1
# 21 "sprites.h"
extern const unsigned short spritesTiles[16384];


extern const unsigned short spritesPal[256];
# 9 "game.c" 2

unsigned short hOff;
unsigned short tmphOff;
int livesRemaining;
PLAYER player;
OBJ_ATTR shadowOAM[128];

void initGame() {

     dispBackground();
     initAliens();
     initPlayer();
     hideSprites();

}

void dispBackground() {

    DMANow(3, bg0SpacePal, ((unsigned short *)0x5000000), 256);

    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    DMANow(3, bg0SpaceTiles, &((charblock *)0x6000000)[0], 3776/2);
    DMANow(3, bg0SpaceMap, &((screenblock *)0x6000000)[31], 4096/2);

    (*(volatile unsigned short*)0x4000008) = ((1)<<2) | ((28)<<8) | (0<<14);
    DMANow(3, bg1StarsTiles, &((charblock *)0x6000000)[1], 1088 / 2);
    DMANow(3, bg1StarsMap, &((screenblock *)0x6000000)[28], 2048/2);

    hOff = 0;


}

void initPlayer() {
    DMANow(3, spritesPal, ((unsigned short *)0x5000200), 256);
 DMANow(3, spritesTiles, &((charblock *)0x6000000)[4], 32768/2);

    livesRemaining = 3;
    player.width = 16;
    player.height = 16;
    player.cdel = 1;
    player.rdel = 1;
 player.col = 120;
 player.row = 80;
}

void updateGame() {
    parallax();
    updatePlayer();
}

void updatePlayer() {

}

void drawGame() {
    drawPlayer();


}

void drawPlayer() {
    shadowOAM[0].attr0 = player.row | (0<<13) | (0<<14) ;
 shadowOAM[0].attr1 = player.col | (1<<14);
    shadowOAM[0].attr2 = ((0)<<12) | ((0)*32+(0));


}
