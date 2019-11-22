# 1 "movement.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "movement.c"
# 1 "movement.h" 1




void rotateLeft();
void rotateRight();
void slideRight();
void slideLeft();
# 2 "movement.c" 2
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
# 3 "movement.c" 2
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
# 4 "movement.c" 2

 int movement;
 int toggle;
 int prevMovement;
 enum {UP, DOWN, LEFT, RIGHT};
 enum {R, L};

void rotateLeft() {
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

void rotateRight() {
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

void slideRight() {
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

void slideLeft() {
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
