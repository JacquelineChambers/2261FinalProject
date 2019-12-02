# 1 "winGame.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "winGame.c"
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
# 2 "winGame.c" 2
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
# 3 "winGame.c" 2
# 1 "grenzlinie.h" 1
# 20 "grenzlinie.h"
extern const unsigned char grenzlinie[415842];
# 4 "winGame.c" 2
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
 int x;
 int y;
} LIVES;

typedef struct {
 int row;
 int col;
 int x;
 int y;
} SHIELD;
# 69 "game.h"
extern PLAYER player;
extern PRINCESS princess;
extern LIVES liveCount[3];
extern BULLET bullet[5];
extern SHIELD shield[3];
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
void initLifeCount();
void initLifeText();
void initShield();
void initShieldText();
void lifeText_setup();
void shieldText_setup();

void drawGame();
void drawBullet(BULLET* bullet, int j);
void drawPlayer();
void drawPrincess();
void drawAsteroids();
void drawAlien();
void drawCars();
void drawShield();
void drawLives();

void updateGame();
void updatePlayer();
void updatePrincess();
void updateBullet(BULLET* bullet);
void updateEnemies();

void fireBullet(BULLET* bullet);

void chooseSound();
# 5 "winGame.c" 2
# 1 "cutScene.h" 1


void initCutScene();

typedef struct {
 int row;
 int col;
 int width;
    int height;
    int x;
 int y;
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
void initQuoteTwo_setup();
void initQuoteTwo_letter();
void initQuoteThree_setup();
void initQuoteThree_letter();
# 6 "winGame.c" 2


PRINCESSNOOT princessNoot;
CLIFF cliff;
OBJ_ATTR shadowOAM[128];
TEXT textWin[19];
TEXT playAgain[23];

void initWinGame() {
    dispBackground();
    clearShadowOAM();
    initCliff();
    initPrincessNoot();
    initWinQuote();
    initPlayAgainQuote();
    for (int i = 0; i < 19; i++) {
        initWinQuote_setup(&textWin[i], i);
    }
    for (int i = 0; i < 23; i++) {
        initAgainQuote_setup(&playAgain[i], i);
    }
}

void clearShadowOAM() {
    for(int i = 0; i < 40; i++) {
        shadowOAM[i].attr0 = 0;
     shadowOAM[i].attr1 = 0;
        shadowOAM[i].attr2 = 0;
    }
    hideSprites();
     DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}
void initWinQuote_setup(TEXT* textWin, int i) {
    textWin->row = 20;
    textWin->col = 10 + (i * 8);
}

void initAgainQuote_setup(TEXT* playAgain, int i) {
    playAgain->row = 50;
    playAgain->col = 10 + (i * 8);
}

void initCliff() {
    princessNoot.row = 61;
 princessNoot.col = 185;
 princessNoot.width = 64;
    princessNoot.height = 64;
    princessNoot.x = 24;
    princessNoot.y = 0;

}

void initPrincessNoot() {
    cliff.row = 105;
 cliff.col = 185;
 cliff.width = 64;
    cliff.height = 32;
    cliff.x = 24;
    cliff.y = 8;
}


void initWinQuote() {
    textWin[0].letter = 19;
    textWin[1].letter = 7;
    textWin[2].letter = 0;
    textWin[3].letter = 13;
    textWin[4].letter = 10;

    textWin[5].letter = 27;

    textWin[6].letter = 24;
    textWin[7].letter = 14;
    textWin[8].letter = 20;

    textWin[9].letter = 27;

    textWin[10].letter = 13;
    textWin[11].letter = 14;
    textWin[12].letter = 14;
    textWin[13].letter = 19;

    textWin[14].letter = 27;

    textWin[15].letter = 13;
    textWin[16].letter = 14;
    textWin[17].letter = 14;
    textWin[18].letter = 19;

}

void initPlayAgainQuoteLose() {
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

void drawWinGame() {

    int j = 0;
    drawPrincessNoot(j);
    j++;
    drawCliff(j);
    j++;
    for (int i = 0; i < 19; i++) {
        drawQuoteOne(&textWin[i], j);
        j++;
    }
    for (int i = 0; i < 23; i++) {
        drawQuoteOne(&playAgain[i], j);
        j++;
    }

}
void drawCliff(int j) {
    shadowOAM[j].attr0 = cliff.row | (0<<13) | (1<<14);
 shadowOAM[j].attr1 = cliff.col | (3<<14);
    shadowOAM[j].attr2 = ((4)<<12) | ((cliff.y)*32+(cliff.x));

}
void drawPrincessNoot(int j) {
    shadowOAM[j].attr0 = princessNoot.row | (0<<13) | (0<<14);
 shadowOAM[j].attr1 = princessNoot.col | (3<<14);
    shadowOAM[j].attr2 = ((6)<<12) | ((princessNoot.y)*32+(princessNoot.x));

}
