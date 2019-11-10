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





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 162 "myLib.h"
 void hideSprites();
# 183 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 194 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 234 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 326 "myLib.h"
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
# 3 "main.c" 2
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
# 4 "main.c" 2


# 1 "bgTest.h" 1
# 22 "bgTest.h"
extern const unsigned short bgTestTiles[64];


extern const unsigned short bgTestMap[1024];


extern const unsigned short bgTestPal[256];
# 7 "main.c" 2
# 1 "moonArt.h" 1
# 22 "moonArt.h"
extern const unsigned short moonArtTiles[7568];


extern const unsigned short moonArtMap[1024];


extern const unsigned short moonArtPal[256];
# 8 "main.c" 2
# 1 "bg0Space.h" 1
# 22 "bg0Space.h"
extern const unsigned short bg0SpaceTiles[1888];


extern const unsigned short bg0SpaceMap[2048];


extern const unsigned short bg0SpacePal[256];
# 9 "main.c" 2
# 1 "bg1Stars.h" 1
# 22 "bg1Stars.h"
extern const unsigned short bg1StarsTiles[544];


extern const unsigned short bg1StarsMap[1024];


extern const unsigned short bg1StarsPal[256];
# 10 "main.c" 2



void initialize();

unsigned short buttons;
unsigned short oldButtons;

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

 state = GAME;
}
void game() {


 updateGame();

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

 if((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  goToWin();
 }

 if((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  goToLose();
 }

 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
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

 DMANow(3, bg1StarsPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, bg1StarsTiles, &((charblock *)0x6000000)[0], 1088 / 2);
    DMANow(3, bg1StarsMap, &((screenblock *)0x6000000)[28], 1024 * 4);

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
 DMANow(3, bgTestPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, bgTestTiles, &((charblock *)0x6000000)[0], 128 / 2);
    DMANow(3, bgTestMap, &((screenblock *)0x6000000)[28], 1024 * 4);

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
 DMANow(3, bgTestPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, bgTestTiles, &((charblock *)0x6000000)[0], 128 / 2);
    DMANow(3, bgTestMap, &((screenblock *)0x6000000)[28], 1024 * 4);

    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<7) | (3<<14);

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

 }
}
