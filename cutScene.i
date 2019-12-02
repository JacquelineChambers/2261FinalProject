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
# 2 "cutScene.c" 2
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
# 4 "cutScene.c" 2
# 1 "sound.h" 1
SOUND soundA;
SOUND soundB;

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 5 "cutScene.c" 2

# 1 "bg0Space.h" 1
# 22 "bg0Space.h"
extern const unsigned short bg0SpaceTiles[3072];


extern const unsigned short bg0SpaceMap[3072];


extern const unsigned short bg0SpacePal[256];
# 7 "cutScene.c" 2
# 1 "bg1Stars.h" 1
# 22 "bg1Stars.h"
extern const unsigned short bg1StarsTiles[544];


extern const unsigned short bg1StarsMap[1024];


extern const unsigned short bg1StarsPal[256];
# 8 "cutScene.c" 2
# 1 "sprites.h" 1
# 21 "sprites.h"
extern const unsigned short spritesTiles[16384];


extern const unsigned short spritesPal[256];
# 9 "cutScene.c" 2
# 1 "grenzlinie.h" 1
# 20 "grenzlinie.h"
extern const unsigned char grenzlinie[415842];
# 10 "cutScene.c" 2

NOOT noot;
BOX boxLeftSide[22/5 - 2];
BOX boxRightSide[22/5 - 2];
BOX boxCorner[4];
BOX boxTop[22];
BOX boxBottom[22];
BOX boxBlack;
OBJ_ATTR shadowOAM[128];
ALPHABET alphabet;
TEXT text[22];
TEXT text2[22];
TEXT text3[22];

void initCutScene() {
    playSoundB(grenzlinie,415842,11025, 1);
    dispBackground();
    initBoxLeftSide();
    initBoxRightSide();
    initBoxCorner();
    initBoxEdgeTop();
    initBoxEdgeBottom();
    initQuoteOne_letter();
    initQuoteTwo_letter();
    initQuoteThree_letter();
    for (int i = 0; i< 22; i++) {
        initQuoteOne_setup(&text[i], i);
    }
    for (int i = 0; i< 22; i++) {
        initQuoteTwo_setup(&text2[i], i);
    }
    for (int i = 0; i< 22; i++) {
        initQuoteThree_setup(&text3[i], i);
    }
    initCharacter();
    hideSprites();
}
void initCharacter() {
    noot.row = 100;
 noot.col = 50;
 noot.width = 64;
    noot.height = 64;
    noot.x = 13;
    noot.y = 0;
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
    text[14].letter = 19;
    text[15].letter = 8;
    text[16].letter = 13;
    text[17].letter = 6;

    text[18].letter = 27;

    text[19].letter = 5;
    text[20].letter = 14;
    text[21].letter = 17;
}
void initQuoteTwo_letter() {
    text2[0].letter = 18;
    text2[1].letter = 15;
    text2[2].letter = 0;
    text2[3].letter = 2;
    text2[4].letter = 4;

    text2[5].letter = 27;

    text2[6].letter = 8;
    text2[7].letter = 18;

    text2[8].letter = 27;

    text2[9].letter = 18;
    text2[10].letter = 14;

    text2[11].letter = 27;

    text2[12].letter = 1;
    text2[13].letter = 4;
    text2[14].letter = 0;
    text2[15].letter = 20;
    text2[16].letter = 19;
    text2[17].letter = 8;
    text2[18].letter = 5;
    text2[19].letter = 20;
    text2[20].letter = 11;

    text2[21].letter = 27;
}
void initQuoteThree_letter() {
    text3[0].letter = 8;

    text3[1].letter = 27;

    text3[2].letter = 7;
    text3[3].letter = 14;
    text3[4].letter = 15;
    text3[5].letter = 4;

    text3[6].letter = 27;

    text3[7].letter = 22;
    text3[8].letter = 4;

    text3[9].letter = 27;

    text3[10].letter = 0;
    text3[11].letter = 17;
    text3[12].letter = 4;

    text3[13].letter = 27;

    text3[14].letter = 2;
    text3[15].letter = 11;
    text3[16].letter = 14;
    text3[17].letter = 18;
    text3[18].letter = 4;

    text3[19].letter = 27;
    text3[20].letter = 27;
    text3[21].letter = 27;
}
void initQuoteOne_setup(TEXT* text, int i) {
    text->row = 130;
    text->col = 25 + (i * 8);
}

void initQuoteTwo_setup(TEXT* text2, int i) {
    text2->row = 130;
    text2->col = 25 + (i * 8);
}

void initQuoteThree_setup(TEXT* text3, int i) {
    text3->row = 130;
    text3->col = 25 + (i * 8);
}

void initBoxLeftSide() {
        for(int i = 0; i <2; i++) {
        boxLeftSide[i].row = 130 + (i*8);
        boxLeftSide[i].col = 17;
        boxLeftSide[i].width = 8;
        boxLeftSide[i].height = 32;
        boxLeftSide[i].y = 8;
        boxLeftSide[i].x = 0;
        }
}
void initBoxRightSide() {
        for(int i = 0; i <2; i++) {
        boxRightSide[i].row = 130 + (i*8);
        boxRightSide[i].col = 202;
        boxRightSide[i].width = 8;
        boxRightSide[i].height = 32;
        boxRightSide[i].y = 8;
        boxRightSide[i].x = 4;
        }
}

void initBoxCorner() {

        boxCorner[0].row = 125;
        boxCorner[0].col = 17;
        boxCorner[0].width = 8;
        boxCorner[0].height = 8;
        boxCorner[0].x = 0;
        boxCorner[0].y = 7;

        boxCorner[1].row = 125;
        boxCorner[1].col = 202;
        boxCorner[1].width = 8;
        boxCorner[1].height = 8;
        boxCorner[1].x = 4;
        boxCorner[1].y = 7;

        boxCorner[2].row = 140;
        boxCorner[2].col = 17;
        boxCorner[2].width = 8;
        boxCorner[2].height = 8;
        boxCorner[2].x = 0;
        boxCorner[2].y = 10;

        boxCorner[3].row = 140;
        boxCorner[3].col = 202;
        boxCorner[3].width = 8;
        boxCorner[3].height = 8;
        boxCorner[3].x = 4;
        boxCorner[3].y = 10;
}


void initBoxEdgeTop() {
     for(int i = 0; i <22; i++) {
        boxTop[i].row = 122;
        boxTop[i].col = 25 + (i*8);
        boxTop[i].width = 8;
        boxTop[i].height = 8;
        boxTop[i].x = 1;
        boxTop[i].y = 7;
     }

}

void initBoxEdgeBottom() {
    for(int i = 0; i <22; i++) {
        boxBottom[i].row = 140;
        boxBottom[i].col = 25 + (i*8);
        boxBottom[i].width = 8;
        boxBottom[i].height = 8;
        boxBottom[i].x = 1;
        boxBottom[i].y = 10;
     }
}

void updateCutScene() {
    parallax();
}


void drawCutScene() {
    drawPlayer();
    drawPrincess();
    int j = 5;
    if (timer%2) {
        noot.x = 13;
        noot.y = 8;
    }
    else if (timer%3) {
        noot.x = 9;
        noot.y = 8;
    } else {
        noot.x = 13;
        noot.y = 0;
    }
    drawCharacter(j);
    j++;
    for(int i = 0; i <2; i++) {
        drawBox(&boxLeftSide[i], j);
        j++;
    }
    for(int i = 0; i <2; i++) {
        drawBox(&boxRightSide[i], j);
        j++;
    }
    for(int i = 0; i <22; i++) {
        drawBox(&boxTop[i], j);
        j++;
    }
    for(int i = 0; i <22; i++) {
        drawBox(&boxBottom[i], j);
        j++;
    }

    for(int i = 0; i <4; i++) {
        drawBox(&boxCorner[i], j);
        j++;
    }
    if (timer%2) {
        for (int i = 0; i < 22; i++) {
            drawQuoteOne(&text[i], j);
            j++;
        }
    }
    else if (timer%3) {
        for (int i = 0; i < 22; i++) {
            drawQuoteOne(&text3[i], j);
            j++;
        }
    }
    else {
        for (int i = 0; i < 22; i++) {
            drawQuoteOne(&text2[i], j);
            j++;
        }
    }
}
void drawCharacter(int j) {
    shadowOAM[j].attr0 = noot.row | (0<<13) | (0<<14);
 shadowOAM[j].attr1 = noot.col | (2<<14);
    shadowOAM[j].attr2 = ((0)<<12) | ((noot.y)*32+(noot.x));
}

void drawBox(BOX* side, int j) {

    shadowOAM[j].attr0 = side->row | (0<<13) | (0<<14);
    shadowOAM[j].attr1 = side->col | (0<<14);
    shadowOAM[j].attr2 = ((2)<<12) | ((side->y)*32+(side->x));

}
void drawQuoteOne(TEXT* text, int j) {
    shadowOAM[j].attr0 = text->row | (0<<13) | (0<<14);
 shadowOAM[j].attr1 = text->col | (0<<14);
    shadowOAM[j].attr2 = ((2)<<12) | ((14)*32+(text->letter));
}
