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
int enemiesKilled;
PLAYER player;
PRINCESS princess;
BULLET bullet[3];
OBJ_ATTR shadowOAM[128];
enum {UP, DOWN, LEFT, RIGHT};
enum {R, L};
int movement;
int toggle;
int prevMovement;

void initGame() {

     dispBackground();
     initAliens();
     initPlayer();
     initPrincess();
     initBullet();
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

    DMANow(3, spritesPal, ((unsigned short *)0x5000200), 256);
 DMANow(3, spritesTiles, &((charblock *)0x6000000)[4], 32768/2);
    hOff = 0;


}

void initPlayer() {

    livesRemaining = 3;
    player.width = 16;
    player.height = 16;
    player.cdel = 1;
    player.rdel = 1;
 player.col = 110;
 player.row = 60;
    player.sprite = 0;
    movement = UP;
    prevMovement = movement;
    toggle = L;

}
void initPrincess() {
    princess.hit = 0;
    princess.row = 70 ;
    princess.col = 100;
    princess.width = 32;
    princess.height = 32;
}
void initBullet() {
    for(int i=0; i < 3; i++){
        bullet[i].col = 0;
        bullet[i].row = 0;
        bullet[i].cdel = 1;
        bullet[i].rdel = 1;
        bullet[i].width = 8;
        bullet[i].height = 8;
        bullet[i].active = 0;
        bullet[i].erased = 0;
        bullet[i].sprite = 12;
     }

}

void updateGame() {
    parallax();
    updatePlayer();

    for(int i = 0; i< 3; i++){
        updateBullet(&bullet[i]);
    }
}
void updateBullet(BULLET* bullet){

    if (bullet->active == 1 && bullet->row < 160 && bullet->col < 240 && bullet->row > 0 && bullet->col > 0) {

            switch(prevMovement) {
            case UP:
                bullet->row--;
                break;
            case RIGHT:
                bullet->col++;
                break;
            case DOWN:
                bullet->row++;
                break;
            case LEFT:
                bullet->col--;
                break;
        }

    }
    else {
        bullet->active = 0;
        bullet->row = 160;
    }
}

int fireBullet(BULLET* bullet) {

  if (bullet->active == 0) {
            switch(prevMovement) {
            case UP:
                bullet->col = player.col+8;
       bullet->row = player.row;
                break;
            case RIGHT:
                bullet->col = player.col;
       bullet->row = player.row+8;
                break;
            case DOWN:
                bullet->col = player.col-8;
       bullet->row = player.row;
                break;
            case LEFT:
                bullet->col = player.col;
       bullet->row = player.row-8;
                break;
        }
   bullet->active = 1;
            return 1;
  }
        else return 0;
}

void updatePlayer() {
    if((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        for(int i = 0; i< 3; i++) {
            fireBullet(&bullet[i]);
        }
    }
    if((!(~(oldButtons)&((1<<9))) && (~buttons & ((1<<9))))) {
         if(toggle == R) {
             switch(movement) {
            case UP:
                movement = DOWN;
                break;
            case RIGHT:
                movement = LEFT;
                break;
            case DOWN:
                movement = UP;
                break;
            case LEFT:
                movement = RIGHT;
                break;
            }
        }
        prevMovement = movement;
        switch(movement) {
            case UP:
                player.col = 110;
             player.row = 60;
                player.sprite = 0;
                movement = LEFT;
                break;
            case LEFT:
                player.col = 90;
             player.row = 80;
                player.sprite = 2;
                movement = DOWN;
                break;
            case DOWN:
                player.col = 110;
             player.row = 100;
                player.sprite = 4;
                movement = RIGHT;
                break;
            case RIGHT:
                player.col = 130;
             player.row = 80;
                player.sprite = 6;
                movement = UP;
                break;
        }
        toggle = L;

    }
    if((!(~(oldButtons)&((1<<8))) && (~buttons & ((1<<8))))) {
        if(toggle == L) {
           switch(movement) {
            case UP:
                movement = DOWN;
                break;
            case RIGHT:
                movement = LEFT;
                break;
            case DOWN:
                movement = UP;
                break;
            case LEFT:
                movement = RIGHT;
                break;
            }
        }
        prevMovement = movement;
        switch(movement) {
            case UP:
                player.col = 110;
             player.row = 60;
                player.sprite = 0;
                movement = RIGHT;
                break;
            case RIGHT:
                player.col = 130;
             player.row = 80;
                player.sprite = 6;
                movement = DOWN;
                break;
            case DOWN:
                player.col = 110;
             player.row = 100;
                player.sprite = 4;
                movement = LEFT;
                break;
            case LEFT:
                player.col = 90;
             player.row = 80;
                player.sprite = 2;
                movement = UP;
                break;
        }
        toggle = R;
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
         switch(prevMovement) {
            case UP:
                if(player.width + player.col < 140) {
                    player.col++;
                }
               break;
            case RIGHT:
                if(player.height + player.row < 105) {
                    player.row++;
                }
               break;
            case DOWN:
                if(player.width + player.col < 140) {
                    player.col++;
                }
                break;
            case LEFT:
                if(player.height + player.row < 105) {
                    player.row++;
                }
                break;
        }

    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        switch(prevMovement) {
            case UP:
                if(player.col > 95) {
                    player.col--;
                }
               break;
            case RIGHT:
                if(player.row > 65) {
                    player.row--;
                }
               break;
            case DOWN:
                if(player.col > 95) {
                    player.col--;
                }
                break;
            case LEFT:
                if(player.row > 65) {
                    player.row--;
                }
                break;
        }
    }
}

void drawGame() {
    int j = 2;
    drawPlayer();
    drawPrincess();
    for(int i = 0; i< 3; i++){
        drawBullet(&bullet[i], j);
        j++;
    }


}

void drawPlayer() {
    shadowOAM[0].attr0 = player.row | (0<<13) | (0<<14);
 shadowOAM[0].attr1 = player.col | (1<<14);
    shadowOAM[0].attr2 = ((0)<<12) | ((0)*32+(player.sprite));
}

void drawPrincess() {
    shadowOAM[1].attr0 = princess.row | (0<<13) | (0<<14);
 shadowOAM[1].attr1 = princess.col | (2<<14);
    shadowOAM[1].attr2 = ((1)<<12) | ((0)*32+(8));


}

void drawBullet(BULLET* bullet, int j) {
    if (bullet->active) {
        shadowOAM[j].attr0 = bullet->row | (0<<13) | (0<<14);
        shadowOAM[j].attr1 = bullet->col | (1<<14);
        shadowOAM[j].attr2 = ((0)<<12) | ((0)*32+(bullet->sprite));
    }
    else {
        shadowOAM[j].attr0 = (2<<8);
    }
}
