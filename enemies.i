# 1 "enemies.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "enemies.c"
# 1 "enemies.h" 1



typedef struct {
 int col;
 int row;
 int cdel;
 int rdel;
 int width;
 int height;
 int active;
 int erased;
} ALIENLASER;

typedef struct {
 int cdel;
 int rdel;
 int row;
 int col;
 int height;
 int width;
 int alienPal;
 int active;
 int erased;
 int shine;
 int alienAni;
 int direction;
} ALIEN;

typedef struct {
 int cdel;
 int rdel;
 int row;
 int col;
 int height;
 int width;
 int enemyType;
 int enemyPal;
 int active;
 int erased;
 int num;
 int carAni;
 int carShine;
 int direction;
} CAR;

typedef struct {
 int cdel;
 int rdel;
 int row;
 int col;
 int height;
 int width;
 int enemyType;
 int enemyPal;
 int active;
 int erased;
 int num;
 int asteroidAni;
 int direction;
} ASTEROID;







extern ALIEN alien[2];

extern ASTEROID asteroid[2];
extern CAR car[2];
extern int enemiesRemaining;
extern int timer;
extern int timerShine;
extern int timerShine2;

void initAliens();
void initCars();
void initAsteroids();


void drawAlien(ALIEN* alien, int j);
void drawCar(CAR* car, int j);
void drawAsteroid(ASTEROID* asteroid, int j);
void drawAlienLasers(ALIENLASER* alienLaser, int j);

void updateAlien(ALIEN* alien);
void updateCar(CAR* car);
void updateAsteroid(ASTEROID* asteroid);
void updateAlienLasers(ALIENLASER* alienLaser);

int fireAlienLaser(ALIENLASER* alienLaser, ALIEN* alien);
# 2 "enemies.c" 2
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
# 3 "enemies.c" 2
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
# 4 "enemies.c" 2

ALIEN alien[2];

ASTEROID asteroid[2];
CAR car[2];
int enemiesRemaining;
int timer;
int timerShine;
int timerShine2;
enum {UP, DOWN, LEFT, RIGHT};
enum {R, L};

void initAliens() {
    int j = 0;
    for(int i=0; i < 2; i++){
        alien[i].height = 16;
        alien[i].width = 16;
        alien[i].cdel = 1;
        alien[i].rdel = 16;
        alien[i].active = 0;
        alien[i].erased = 0;
        alien[i].alienAni = 17;
        alien[i].alienPal = 3;
        alien[i].shine = 0;
        if(j < 4) {
            alien[i].direction = j;
            switch(j) {
                case 0:
                alien[i].row = 1;
                alien[i].col = 10;
                j++;
                continue;
                case 1:
                alien[i].row = 159;
                alien[i].col = 20;
                j++;
                continue;
                case 2:
                alien[i].row = 10;
                alien[i].col = 1;
                j++;
                continue;
                case 3:
                alien[i].row = 100;
                alien[i].col = 239;
                j++;
                continue;
            }


        } else {
            j = 0;
        }
    }

}

void initCar() {
int j = 0;
    for(int i=0; i < 2; i++){
        car[i].height = 16;
        car[i].width = 16;
        car[i].cdel = 1;
        car[i].rdel = 16;
        car[i].active = 1;
        car[i].erased = 0;
        car[i].carAni = 21;
        car[i].carShine = 0;
        if(j < 4) {
            car[i].direction = j;
            switch(j) {
                case 0:
                car[i].row = 140;
                car[i].col = 20;
                 j++;
                continue;
                case 1:
                car[i].row = 100;
                car[i].col = 210;
                 j++;
                continue;
                case 2:
                car[i].row = 10;
                car[i].col = 1;
                 j++;
                continue;
                case 3:
                car[i].row = 0;
                car[i].col = 10;
                 j++;
                continue;
            }


        } else {
            j = 0;
        }

    }

}

void initAsteroids() {
    int j = 0;
    for(int i=0; i < 2; i++){
        asteroid[i].height = 16;
        asteroid[i].width = 16;
        asteroid[i].cdel = 1;
        asteroid[i].rdel = 1;
        asteroid[i].active = 1;
        asteroid[i].erased = 0;
        asteroid[i].asteroidAni = 19;
        if(j < 4) {
            asteroid[i].direction = j;
        switch(j) {
                case 0:
                asteroid[i].row = 159;
                asteroid[i].col = 20;
                j++;
                continue;
                case 1:
                asteroid[i].row = 10;
                asteroid[i].col = 1;
                j++;
                continue;
                case 2:
                asteroid[i].row = 100;
                asteroid[i].col = 239;
                j++;
                continue;
                case 3:
                asteroid[i].row = 1;
                asteroid[i].col = 10;
                j++;
                continue;
            }

        } else {
            j = 0;
        }
    }

}
# 163 "enemies.c"
void updateAlien(ALIEN *alien) {
    for(int i = 0 ;i< 5;i++ ){
            if ((bullet[i].active && alien->active) && collision(alien->col, alien->row, alien->width, alien->height,
                        bullet[i].col, bullet[i].row, bullet[i].width, bullet[i].height)) {

                        bullet[i].active = 0;
                        alien->active = 0;
                        enemiesKilled++;

                }
    }
    if(timerShine%5 == 0) {
            if(alien->shine == 6) {
                alien->shine = 0;
            } else {
                alien->shine+=2;
            }
        }


    if(alien->row < 144 && alien->col < 224 && alien->active) {

        switch(alien->direction) {

            case 0:
                if(timer%4 == 0) {
                alien->col++;

                }
                if(timer%5 == 0) {
                alien->row++;

                }
                break;
            case 1:
                if(timer%4 == 0) {
                alien->col++;
                }
                if(timer%5 == 0) {
                alien->row--;
                }
                break;
            case 2:
                if(timer%4 == 0) {
                alien->col++;

                }
                if(timer%3 == 0) {
                alien->row++;

                }
                break;
            case 3:
                if(timer%4 == 0) {
                alien->col--;

                }

                if(timer%5 == 0) {
                alien->row--;

                }
                break;
        }



        timer++;
    } else {
        alien->active = 0;

            switch(alien->direction) {
                case 0:
                alien->row = 1;
                alien->col = 10;
                break;
                case 1:
                alien->row = 159;
                alien->col = 20;
                break;
                case 2:
                alien->row = 10;
                alien->col = 1;
                break;
                case 3:
                alien->row = 100;
                alien->col = 239;
                break;
        }
        alien->row>>=2;
        alien->col>>=2;
        if (timer%5 == 0) {
            alien->active = 1;
                if (alien->direction == 4) {
                alien->direction = 0;
                } else {
                    alien->direction++;
                }

        }
    }


}

void updateCar(CAR *car) {
    for(int i = 0 ;i< 5;i++ ){
            if ((bullet[i].active && car->active) && collision(car->col, car->row, car->width, car->height,
                        bullet[i].col, bullet[i].row, bullet[i].width, bullet[i].height)) {

                        bullet[i].active = 0;
                        car->active = 0;
                        enemiesKilled++;

                }
    }
    if(timerShine2%5 == 0) {
            if(car->carShine == 6) {
                car->carShine = 0;
            } else {
                car->carShine+=2;
            }
        }
    if((car->row > 0 && car->col > 0) && (car->row < 160 && car->col < 240)&& car->active) {

        switch(car->direction) {
            case 0:
                if(timer%4 == 0) {
                car->col++;
                }
                if(timer%5 == 0) {
                car->row--;
                }
                break;
             case 1:
                if(timer%4 == 0) {
                car->col--;

                }

                if(timer%5 == 0) {
                car->row--;

                }
                break;
            case 2:
                if(timer%4 == 0) {
                car->col++;

                }
                if(timer%3 == 0) {
                car->row++;

                }
                break;


            case 3:
                if(timer%4 == 0) {
                car->col++;
                }
                if(timer%5 == 0) {
                car->row++;
                }
                break;

        }



        timer++;
    } else {
        car->active = 0;

            switch(car->direction) {
                 case 0:
                car->row = 159;
                car->col = 20;
                break;
                case 1:
                car->row = 100;
                car->col = 239;
                break;
                case 2:
                car->row = 10;
                car->col = 1;
                break;
                case 3:
                car->row = 1;
                car->col = 10;
                break;
        }
        car->row>>=2;
        car->col>>=2;
            if (timer%5 == 0 ) {
            car->active = 1;
                if (car->direction == 4) {
                car->direction = 0;
                } else {
                car->direction++;
                }
        }
    }



}

void updateAsteroid(ASTEROID *asteroid) {
    for(int i = 0 ;i< 5;i++ ){
            if ((bullet[i].active && asteroid->active) && collision(asteroid->col, asteroid->row, asteroid->width, asteroid->height,
                        bullet[i].col, bullet[i].row, bullet[i].width, bullet[i].height)) {

                        bullet[i].active = 0;
                        asteroid->active = 0;
                        enemiesKilled++;

                }
    }
    if((asteroid->row > 0 && asteroid->col > 0) && (asteroid->row < 160 && asteroid->col<240) && asteroid->active) {

        switch(asteroid->direction) {

            case 0:
                if(timer%4 == 0) {
                asteroid->col++;
                }
                if(timer%5 == 0) {
                asteroid->row--;
                }
                break;
            case 1:
                if(timer%4 == 0) {
                asteroid->col++;
                }
                if(timer%5 == 0) {
                asteroid->row++;
                }
                break;
            case 2:
                if(timer%4 == 0) {
                asteroid->col--;

                }

                if(timer%5 == 0) {
                asteroid->row--;

                }
                break;
            case 3:
                if(timer%4 == 0) {
                asteroid->col++;

                }
                if(timer%3 == 0) {
                asteroid->row++;

                }
                break;

        }



        timer++;
    } else {
        asteroid->active = 0;

            switch(asteroid->direction) {
                case 0:
                asteroid->row = 159;
                asteroid->col = 20;
                break;
                case 1:
                asteroid->row = 10;
                asteroid->col = 1;
                break;
                case 2:
                asteroid->row = 100;
                asteroid->col = 239;
                break;
                case 3:
                asteroid->row = 1;
                asteroid->col = 10;
                break;
        }
        asteroid->row>>=2;
        asteroid->col>>=2;

        if (timer%5 == 0) {
        asteroid->active = 1;
        if (asteroid->direction == 4) {
            asteroid->direction = 0;
        } else {
            asteroid->direction++;
        }
    }
    }



}
