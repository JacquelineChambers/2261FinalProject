# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"


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
# 4 "main.c" 2
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
# 5 "main.c" 2


# 1 "loseScreen.h" 1
# 22 "loseScreen.h"
extern const unsigned short loseScreenTiles[720];


extern const unsigned short loseScreenMap[1024];


extern const unsigned short loseScreenPal[256];
# 8 "main.c" 2
# 1 "winScreen.h" 1
# 22 "winScreen.h"
extern const unsigned short winScreenTiles[608];


extern const unsigned short winScreenMap[1024];


extern const unsigned short winScreenPal[256];
# 9 "main.c" 2
# 1 "moonArt.h" 1
# 22 "moonArt.h"
extern const unsigned short moonArtTiles[7568];


extern const unsigned short moonArtMap[1024];


extern const unsigned short moonArtPal[256];
# 10 "main.c" 2
# 1 "bg0Space.h" 1
# 22 "bg0Space.h"
extern const unsigned short bg0SpaceTiles[1888];


extern const unsigned short bg0SpaceMap[2048];


extern const unsigned short bg0SpacePal[256];
# 11 "main.c" 2
# 1 "bg1Stars.h" 1
# 22 "bg1Stars.h"
extern const unsigned short bg1StarsTiles[544];


extern const unsigned short bg1StarsMap[1024];


extern const unsigned short bg1StarsPal[256];
# 12 "main.c" 2
# 1 "bg0SpacePause.h" 1
# 22 "bg0SpacePause.h"
extern const unsigned short bg0SpacePauseTiles[2352];


extern const unsigned short bg0SpacePauseMap[1024];


extern const unsigned short bg0SpacePausePal[256];
# 13 "main.c" 2


void initialize();

unsigned short buttons;
unsigned short oldButtons;

unsigned short hOff;

OBJ_ATTR shadowOAM[128];

enum {START, GAME, PAUSE, WIN, LOSE, CUTSCENE};
int state;

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
  initGame();

  goToGame();
 }

}
void goToGame() {
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<8) | (1<<12);
    hOff = tmphOff;
 state = GAME;
}
void game() {

 updateGame();
    drawGame();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
# 109 "main.c"
 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        tmphOff = hOff;
        (*(volatile unsigned short *)0x04000010) = 0;
        (*(volatile unsigned short *)0x04000014) = 0;
  goToPause();
 }

}
void goToCutScene() {
    state = CUTSCENE;
}
void cutScene() {

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
}
void goToWin() {

    (*(unsigned short *)0x4000000) = 0 | (1<<8);
 state = WIN;
}

void win() {
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
