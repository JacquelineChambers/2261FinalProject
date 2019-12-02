# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 42 "main.c"
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
# 43 "main.c" 2
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
# 44 "main.c" 2
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
# 45 "main.c" 2
# 1 "font.h" 1

extern const unsigned char fontdata_6x8[12288];
# 46 "main.c" 2
# 1 "text.h" 1

void drawChar(int, int, char, unsigned short);
void drawString(int, int, char *, unsigned short);
# 47 "main.c" 2
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
# 48 "main.c" 2
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
# 49 "main.c" 2
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
# 50 "main.c" 2


# 1 "titleScreen.h" 1
# 22 "titleScreen.h"
extern const unsigned short titleScreenTiles[6512];


extern const unsigned short titleScreenMap[1024];


extern const unsigned short titleScreenPal[256];
# 53 "main.c" 2
# 1 "bg0Space.h" 1
# 22 "bg0Space.h"
extern const unsigned short bg0SpaceTiles[3072];


extern const unsigned short bg0SpaceMap[3072];


extern const unsigned short bg0SpacePal[256];
# 54 "main.c" 2
# 1 "bg1Stars.h" 1
# 22 "bg1Stars.h"
extern const unsigned short bg1StarsTiles[544];


extern const unsigned short bg1StarsMap[1024];


extern const unsigned short bg1StarsPal[256];
# 55 "main.c" 2
# 1 "bg0SpacePause.h" 1
# 22 "bg0SpacePause.h"
extern const unsigned short bg0SpacePauseTiles[2352];


extern const unsigned short bg0SpacePauseMap[1024];


extern const unsigned short bg0SpacePausePal[256];
# 56 "main.c" 2

# 1 "keepOnKeepingOn.h" 1
# 20 "keepOnKeepingOn.h"
extern const unsigned char keepOnKeepingOn[2553696];
# 58 "main.c" 2
# 1 "endThemeSong.h" 1
# 20 "endThemeSong.h"
extern const unsigned char endThemeSong[1164744];
# 59 "main.c" 2


void initialize();

SOUND soundA;

unsigned short buttons;
unsigned short oldButtons;

unsigned short hOff;

OBJ_ATTR shadowOAM[128];

enum {START, GAME, PAUSE, WIN, LOSE, CUTSCENE, INFO};
int state;
int enemiesKilled;

int main() {

    initialize();

 while(1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);


        switch(state) {

            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case INFO:
                info();
                break;
            case CUTSCENE:
                cutScene();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
 }
 return 0;
}


void initialize() {
    playSoundA(keepOnKeepingOn,2553696,11025, 1);
    setupSounds();
 setupInterrupts();
    enemiesKilled = 1;
 goToStart();
}

void goToStart(){
 state = START;
}

void start() {

    (*(unsigned short *)0x4000000) = 0 | (1<<8);
    DMANow(3, titleScreenPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, titleScreenTiles, &((charblock *)0x6000000)[0], 13024 / 2);
    DMANow(3,titleScreenMap, &((screenblock *)0x6000000)[28], 1024 * 4);

    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<7) | (3<<14);


 if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToInfo();
 }
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToGame();
 }


}
void goToGame() {

    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<8) | (1<<12);




    initGame();
    hOff = tmphOff;
 state = GAME;
}
void game() {


 updateGame();
    drawGame();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

 if(enemiesKilled > 34) {
        (*(volatile unsigned short *)0x04000010) = 0;
        (*(volatile unsigned short *)0x04000014) = 0;
        stopSound();
  goToWin();
 }


 if(princessHealth == 0 || playerHealth == 0) {
        (*(volatile unsigned short *)0x04000010) = 0;
        (*(volatile unsigned short *)0x04000014) = 0;
        stopSound();
  goToLose();
 }

    if(enemiesKilled%8 == 0) {
        enemiesKilled++;
        tmphOff = hOff;
        (*(volatile unsigned short *)0x04000010) = 0;
        (*(volatile unsigned short *)0x04000014) = 0;
        pauseSound();
  goToCutScene();
 }

 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        tmphOff = hOff;
        (*(volatile unsigned short *)0x04000010) = 0;
        (*(volatile unsigned short *)0x04000014) = 0;
        pauseSound();
  goToPause();
 }


}
void goToInfo() {
    (*(unsigned short *)0x4000000) = 3| (1<<10);
    fillScreen3(((0) | (0)<<5 | (0)<<10));
    state = INFO;
    info();
}
void info() {
    drawString(20, 10, "Press START to begin game", ((31) | (31)<<5 | (31)<<10));
    drawString(20, 20, "Press SELECT to return", ((31) | (31)<<5 | (31)<<10));
     drawString(20, 30, "    to splash Screen", ((31) | (31)<<5 | (31)<<10));
    drawString(20, 40, "Press L and R keys to toggle", ((31) | (31)<<5 | (0)<<10));
    drawString(20, 50, "   your direction to shoot", ((31) | (31)<<5 | (0)<<10));
    drawString(20, 60, "Press A to shoot", ((31) | (31)<<5 | (0)<<10));
    drawString(20, 70, "Press LEFT or RIGHT to slide", ((31) | (31)<<5 | (0)<<10));
    drawString(20, 80, "    from side to side", ((31) | (31)<<5 | (0)<<10));
    drawString(20, 90, "YOU have 3 lives, however, the ", ((31) | (0)<<5 | (0)<<10));
     drawString(20, 100, " princess can NEVER get hit", ((31) | (0)<<5 | (0)<<10));

    oldButtons = buttons;
    buttons = (*(volatile unsigned short *)0x04000130);
    if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
  goToStart();
 }
     if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  goToGame();
 }
}
void goToCutScene() {
     initCutScene();
    state = CUTSCENE;
}
void cutScene() {

    updateCutScene();

    drawCutScene();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);


    if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        tmphOff = hOff;
        (*(volatile unsigned short *)0x04000010) = 0;
        (*(volatile unsigned short *)0x04000014) = 0;
        dispBackground();
        unpauseSound();
  goToGame();
 }
}
void goToPause() {
 state = PAUSE;
}

void pause() {
    (*(unsigned short *)0x4000000) = 0 | (1<<8);

 DMANow(3, bg0SpacePausePal, ((unsigned short *)0x5000000), 256);
    DMANow(3, bg0SpacePauseTiles, &((charblock *)0x6000000)[0], 4704 / 2);
    DMANow(3, bg0SpacePauseMap, &((screenblock *)0x6000000)[28], 1024 * 4);

    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<7) | (3<<14);


 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

  dispBackground();
        unpauseSound();
  goToGame();
 }
    if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        (*(unsigned short *)0x4000000) = 0;
        goToStart();
 }

}
void goToWin() {
    playSoundB(endThemeSong,1164744,11025, 1);
    initWinGame();
 state = WIN;
}

void win() {
    drawWinGame();
    parallax();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);


    if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  (*(unsigned short *)0x4000000) = 0;
        stopSound();
        initialize();
        goToStart();
        tmphOff = 0;
        (*(volatile unsigned short *)0x04000010) = 0;
        (*(volatile unsigned short *)0x04000014) = 0;
 }
}
void goToLose() {
    initLoseGame();
 state = LOSE;
}

void lose() {
 drawLoseGame();
    parallax();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  (*(unsigned short *)0x4000000) = 0;
        initialize();
        goToStart();
        tmphOff = 0;
        (*(volatile unsigned short *)0x04000010) = 0;
        (*(volatile unsigned short *)0x04000014) = 0;
 }
}
