# 1 "loseGame.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "loseGame.c"
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
# 179 "myLib.h"
 void hideSprites();
# 231 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 242 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 282 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 374 "myLib.h"
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
# 2 "loseGame.c" 2
# 1 "loseGame.h" 1
typedef struct {
 int row;
 int col;
 int width;
    int height;
    int x;
    int y;
} DEADPRINCESS;




extern DEADPRINCESS deadPrincess;

void drawLoseGame();
void initDeadPrincess();
void initLoseQuote();
void drawDeadPrincess(int j);
void initLoseQuote_setup();
void initLoseGame();

void initPlayAgainQuoteLose();
# 3 "loseGame.c" 2
# 1 "grenzlinie.h" 1
# 20 "grenzlinie.h"
extern const unsigned char grenzlinie[415842];
# 4 "loseGame.c" 2
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
extern int movement;
extern int toggle;
extern int hit;
extern int playerHealth;
extern int prevMovement;
extern int princessHealth;
extern unsigned int rotTimer;
extern int immunity;
extern int immunityWait;



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

void chooseSound();
# 5 "loseGame.c" 2
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
    int x;
 int y;
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






extern ALPHABET alphabet;
extern TEXT text[22];
extern BOX boxSide[2];
extern BOX boxCorner[4];
extern BOX boxTop[22];
extern BOX boxBottom[22];
extern NOOT noot;

void initCharacter();
void drawCutScene();
void parallax();
void drawDialogBox();
void initDialogBox();
void initChar();
void initBoxCorner();
void drawCharacter();
void initAlphabet();
void updateCutScene();
void initBoxLeftSide();
void initBoxRightSide();
void initQuoteOne_letter();
void initQuoteOne_setup();
void initBoxEdgeTop();
void drawQuoteOne();
void drawBox();
void initBoxEdgeBottom();
# 6 "loseGame.c" 2
# 1 "winGame.h" 1
typedef struct {
 int row;
 int col;
 int width;
    int height;
    int x;
    int y;
} PRINCESSNOOT;

typedef struct {
 int row;
 int col;
 int width;
    int height;
    int x;
    int y;
} CLIFF;






extern PRINCESSNOOT princessNoot;
extern CLIFF cliff;


void initWinGame();
void initCliff();
void initPrincessNoot();

void drawWinGame();
void drawCliff();
void drawPrincessNoot();


void initWinQuote();

void clearShadowOAM();

void initWinQuote_setup();
void initAgainQuote_setup();

void initPlayAgainQuote();
# 7 "loseGame.c" 2


DEADPRINCESS deadPrincess;
OBJ_ATTR shadowOAM[128];
TEXT textLose[8];
TEXT playAgain[23];

void initLoseGame() {
    clearShadowOAM();
    dispBackground();
    initDeadPrincess();
    initLoseQuote();
    initPlayAgainQuote();
    for (int i = 0; i < 22; i++) {
        initLoseQuote_setup(&textLose[i], i);
    }
    for (int i = 0; i < 23; i++) {
        initAgainQuote_setup(&playAgain[i], i);
    }
}

void initLoseQuote_setup(TEXT* textLose, int i) {
    textLose->row = 20;
    textLose->col = 10 + (i * 8);
}

void initDeadPrincess() {
    deadPrincess.row = 100;
 deadPrincess.col = 190;
 deadPrincess.width = 32;
    deadPrincess.height = 64;
    deadPrincess.x = 0;
    deadPrincess.y = 17;

}

void initLoseQuote() {
    textLose[0].letter = 18;
    textLose[1].letter = 7;
    textLose[2].letter = 4;

    textLose[3].letter = 27;

    textLose[4].letter = 3;
    textLose[5].letter = 8;
    textLose[6].letter = 4;
    textLose[7].letter = 3;

}

void initPlayAgainQuote() {
    playAgain[0].letter = 7;
    playAgain[1].letter = 8;
    playAgain[2].letter = 19;

    playAgain[3].letter = 27;

    playAgain[4].letter = 18;
    playAgain[5].letter = 19;
    playAgain[6].letter = 0;
    playAgain[7].letter = 17;
    playAgain[8].letter = 19;

    playAgain[9].letter = 27;

    playAgain[10].letter = 19;
    playAgain[11].letter = 14;

    playAgain[12].letter = 27;

    playAgain[13].letter = 15;
    playAgain[14].letter = 11;
    playAgain[15].letter = 0;
    playAgain[16].letter = 24;

    playAgain[17].letter = 27;

    playAgain[18].letter = 0;
    playAgain[19].letter = 6;
    playAgain[20].letter = 0;
    playAgain[21].letter = 8;
    playAgain[22].letter = 13;
}

void drawLoseGame() {

    int j = 0;
    drawDeadPrincess(j);
    j++;
    for (int i = 0; i < 8; i++) {
        drawQuoteOne(&textLose[i], j);
        j++;
    }
    for (int i = 0; i < 23; i++) {
        drawQuoteOne(&playAgain[i], j);
        j++;
    }


}
void drawDeadPrincess(int j) {
    shadowOAM[j].attr0 = 80 | (0<<13) | (0<<14);
 shadowOAM[j].attr1 = 90 | (3<<14);
    shadowOAM[j].attr2 = ((6)<<12) | ((17)*32+(0));

}
