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



typedef struct {
    u16 fill0[3];
    short a;
    u16 fill1[3];
    short b;
    u16 fill2[3];
    short c;
    u16 fill3[3];
    short d;

} __attribute__((aligned(4))) OBJ_AFFINE;



extern OBJ_AFFINE* shadowAffine;
# 181 "myLib.h"
 void hideSprites();
# 202 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 213 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 253 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 345 "myLib.h"
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
void goToCutScene();
void goToInfo();
void cutScene();
void info();
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

typedef struct {
 int a;
 int b;
 int c;
    int d;
    int e;
 int f;
 int g;
 int h;
 int i;
 int j;
 int k;
 int l;
 int m;
 int n;
 int o;
 int p;
 int q;
 int r;
 int s;
 int t;
 int u;
 int v;
 int w;
 int x;
 int y;
 int z;
 int space;

} ALPHABET;

typedef struct {
 int letter;
 int row;
 int col;
} TEXT;



extern BOX boxRight;
extern ALPHABET alphabet;
extern TEXT text[23];
extern BOX boxLeft;

extern NOOT noot;

void initCharacter();
void drawCutScene();
void parallax();
void drawDialogBox();
void initDialogBox();
void initChar();
void updateCutScene();
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







extern PLAYER player;
extern PRINCESS princess;
extern LIVECOUNT liveCount[3];
extern BULLET bullet[5];
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



void dispBackground();
void parallax();

void initGame();
void initPlayer();
void initPrincess();
void initBullet();
void initCar();
void initAsteroids();

void drawGame();
void drawBullet(BULLET* bullet, int j);
void drawPlayer();
void drawPrincess();
void drawAsteroids();
void drawAlien();
void drawCars();

void updateGame();
void updatePlayer();
void updatePrincess();
void updateBullet(BULLET* bullet);
void updateEnemies();

void fireBullet(BULLET* bullet);
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
ALPHABET alphabet;
TEXT text[23];

void initCutScene() {
    dispBackground();
    initDialogBox();
    initQuoteOne_letter();
    for (int i = 0; i< 23; i++) {
        initQuoteOne_setup(&text[i], i);
    }
    initAlphabet();
    initCharacter();
    hideSprites();
}
void initCharacter() {
    noot.row = 100;
 noot.col = 50;
 noot.width = 64;
    noot.height = 64;
    noot.aniState = 13;
}
void initAlphabet() {
    alphabet.a = 0;
 alphabet.b = 1;
 alphabet.c = 2;
    alphabet.d = 3;
 alphabet.e = 4;
 alphabet.f = 5;
    alphabet.g = 6;
 alphabet.h = 7;
 alphabet.i = 8;
    alphabet.j = 9;
 alphabet.k = 10;
 alphabet.l = 11;
    alphabet.m = 12;
 alphabet.n = 13;
 alphabet.o = 14;
    alphabet.p = 15;
 alphabet.q = 16;
 alphabet.r = 17;
    alphabet.s = 18;
 alphabet.t = 19;
 alphabet.u = 20;
    alphabet.v = 21;
 alphabet.w = 22;
 alphabet.x = 23;
    alphabet.y = 24;
 alphabet.z = 25;
    alphabet.space = 27;
}
void initQuoteOne_letter() {
    text[0].letter = 22;
    text[1].letter = 7;
    text[2].letter = 0;
    text[3].letter = 19;
    text[4].letter = 27;
    text[5].letter = 0;
    text[6].letter = 12;
    text[7].letter = 27;
    text[8].letter = 8;
    text[9].letter = 27;
    text[10].letter = 5;
    text[11].letter = 8;
    text[12].letter = 6;
    text[13].letter = 7;
    text[14].letter = 8;
    text[15].letter = 13;
    text[16].letter = 6;
    text[17].letter = 27;
}
void initQuoteOne_setup(TEXT* text, int i) {
    text->row = 130;
    text->col = 50 + (i * 2);
}

void initDialogBox() {
        boxLeft.row = 120;
        boxLeft.col = 40;
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
    for (int i = 0; i < 23; i++) {
        drawQuoteOne(&text[i], i);
    }
    drawCharacter();


}
void drawCharacter() {
    shadowOAM[5].attr0 = noot.row | (0<<13) | (0<<14);
 shadowOAM[5].attr1 = noot.col | (2<<14);
    shadowOAM[5].attr2 = ((0)<<12) | ((0)*32+(noot.aniState));
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
void drawQuoteOne(TEXT* text, int i) {
    shadowOAM[i + 12].attr0 = text->row | (0<<13) | (0<<14);
 shadowOAM[i + 12].attr1 = text->col | (0<<14);
    shadowOAM[i + 12].attr2 = ((0)<<12) | ((0)*32+(text->letter));
}
