# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 49 "main.c"
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
# 228 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 239 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 279 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 371 "myLib.h"
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
# 50 "main.c" 2
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
# 51 "main.c" 2
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
extern BOX boxCenter[25];

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
void drawQuoteOne();
void drawBox();
# 52 "main.c" 2
# 1 "font.h" 1

extern const unsigned char fontdata_6x8[12288];
# 53 "main.c" 2
# 1 "text.h" 1

void drawChar(int, int, char, unsigned short);
void drawString(int, int, char *, unsigned short);
# 54 "main.c" 2
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
# 55 "main.c" 2


# 1 "loseScreen.h" 1
# 22 "loseScreen.h"
extern const unsigned short loseScreenTiles[720];


extern const unsigned short loseScreenMap[1024];


extern const unsigned short loseScreenPal[256];
# 58 "main.c" 2
# 1 "winScreen.h" 1
# 22 "winScreen.h"
extern const unsigned short winScreenTiles[608];


extern const unsigned short winScreenMap[1024];


extern const unsigned short winScreenPal[256];
# 59 "main.c" 2
# 1 "moonArt.h" 1
# 22 "moonArt.h"
extern const unsigned short moonArtTiles[7568];


extern const unsigned short moonArtMap[1024];


extern const unsigned short moonArtPal[256];
# 60 "main.c" 2
# 1 "bg0Space.h" 1
# 22 "bg0Space.h"
extern const unsigned short bg0SpaceTiles[1888];


extern const unsigned short bg0SpaceMap[2048];


extern const unsigned short bg0SpacePal[256];
# 61 "main.c" 2
# 1 "bg1Stars.h" 1
# 22 "bg1Stars.h"
extern const unsigned short bg1StarsTiles[544];


extern const unsigned short bg1StarsMap[1024];


extern const unsigned short bg1StarsPal[256];
# 62 "main.c" 2
# 1 "bg0SpacePause.h" 1
# 22 "bg0SpacePause.h"
extern const unsigned short bg0SpacePauseTiles[2352];


extern const unsigned short bg0SpacePauseMap[1024];


extern const unsigned short bg0SpacePausePal[256];
# 63 "main.c" 2

# 1 "keepOnKeepingOn.h" 1
# 20 "keepOnKeepingOn.h"
extern const unsigned char keepOnKeepingOn[2553696];
# 65 "main.c" 2



void initialize();

SOUND soundA;
SOUND soundB;
const unsigned char* spaceSound;
int* spaceSoundLen;
int spaceSoundToPlay = 0;

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

    enemiesKilled = 1;
 goToStart();
}

void goToStart(){
 state = START;
}

void start(){
    (*(unsigned short *)0x4000000) = 0 | (1<<8);
    DMANow(3, moonArtPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, moonArtTiles, &((charblock *)0x6000000)[0], 15136 / 2);
    DMANow(3,moonArtMap, &((screenblock *)0x6000000)[28], 1024 * 4);

    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<7) | (3<<14);


 if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToInfo();
 }
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToGame();
 }


}
void goToGame() {
    stopSound();
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<8) | (1<<12);
    playSoundA(keepOnKeepingOn,2553696,11025, 0);

    initGame();
    hOff = tmphOff;
 state = GAME;
}
void game() {


 updateGame();
    drawGame();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

 if(enemiesKilled > 20) {
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
    drawString(10, 40, "Press START to begin game", ((31) | (31)<<5 | (31)<<10));
    drawString(10, 50, "Press L and R keys to toggle", ((31) | (31)<<5 | (31)<<10));
     drawString(10, 60, " your direction to shoot", ((31) | (31)<<5 | (31)<<10));
    drawString(10, 70, "Press A to shoot", ((31) | (31)<<5 | (31)<<10));
    drawString(10, 80, "Press LEFT or RIGHT to slide", ((31) | (31)<<5 | (31)<<10));
    drawString(10, 90, "from side to side", ((31) | (31)<<5 | (31)<<10));
    drawString(10, 100, "Press SELECT to return", ((31) | (31)<<5 | (31)<<10));
    drawString(10, 110, "to splash Screen", ((31) | (31)<<5 | (31)<<10));
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
  goToGame();
 }
    if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        (*(unsigned short *)0x4000000) = 0;
        goToStart();
 }

}
void goToWin() {

    (*(unsigned short *)0x4000000) = 0 | (1<<8);
 state = WIN;
}

void win() {
     (*(unsigned short *)0x4000000) = 0 | (1<<8);
 DMANow(3, winScreenPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, winScreenTiles, &((charblock *)0x6000000)[0], 1216 / 2);
    DMANow(3, winScreenMap, &((screenblock *)0x6000000)[28], 1024 * 4);

    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<7) | (3<<14);

    if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  initialize();
 }
}
void goToLose() {
    (*(unsigned short *)0x4000000) = 0 | (1<<8);
 state = LOSE;
}

void lose() {
 DMANow(3, loseScreenPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, loseScreenTiles, &((charblock *)0x6000000)[0], 1440 / 2);
    DMANow(3, loseScreenMap, &((screenblock *)0x6000000)[28], 1024 * 4);

    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<7) | (3<<14);

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  initialize();
 }
}
