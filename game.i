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
# 3 "game.c" 2
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
# 4 "game.c" 2
# 1 "movement.h" 1




void rotateLeft();
void rotateRight();
void slideRight();
void slideLeft();
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
# 1 "sine.h" 1
extern const int sin_lut_fixed8[];
# 10 "game.c" 2
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
# 11 "game.c" 2
# 1 "noot5.h" 1
# 20 "noot5.h"
extern const unsigned char noot5[8055];
# 12 "game.c" 2
# 1 "noot7.h" 1
# 20 "noot7.h"
extern const unsigned char noot7[16028];
# 13 "game.c" 2
# 1 "fucking-noot-noot.h" 1
# 20 "fucking-noot-noot.h"
extern const unsigned char fucking_noot_noot[16064];
# 14 "game.c" 2


unsigned short hOff;
unsigned short tmphOff;
int livesRemaining;
int enemiesKilled;
PLAYER player;
PRINCESS princess;
BULLET bullet[5];
OBJ_ATTR shadowOAM[128];
OBJ_AFFINE* shadowAffine = (OBJ_AFFINE*)(shadowOAM);
int shotDirection;
int princessHealth;
int playerHealth;
int shootAni;
int timerShooting;
unsigned int rotTimer;
int hit;
int immunity;
int immunityWait;
enum {UP, DOWN, LEFT, RIGHT};
enum {R, L};
SOUND soundB;

void initGame() {
     (*(volatile unsigned short*)0x04000050) = (1<<5) | (1<<8) | (1<<9) | (1<<6);

     immunity = 0;
     immunityWait = 0;
     princessHealth = 1;
     playerHealth = 3;
     dispBackground();
     timer = 0;
     initAliens();
     initAsteroids();
     initPlayer();
     initPrincess();
     initBullet();
     bullet[0].tetherBullet = 1;
     initAliens();
     initCar();
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
    for(int i=0; i < 5; i++){
        bullet[i].col = 0;
        bullet[i].row = 0;
        bullet[i].cdel = 1;
        bullet[i].rdel = 1;
        bullet[i].width = 8;
        bullet[i].height = 8;
        bullet[i].active = 0;
        bullet[i].erased = 0;
        bullet[i].sprite = 12;
        bullet[i].shotDirection = UP;
        bullet[i].tetherBullet = 0;

     }

}

void updateGame() {

    parallax();
    updatePlayer();
    updatePrincess();
    updateEnemies();


    for(int i = 0; i< 5; i++){
        updateBullet(&bullet[i]);
    }
}
void updateEnemies() {
    for(int i = 0; i< 2; i++){
        updateAlien(&alien[i]);
     }
     timerShine++;
    for(int i = 0; i< 2; i++) {
        updateCar(&car[i]);
    }
    for(int i = 0; i< 2; i++) {
        updateAsteroid(&asteroid[i]);
    }

}
void updateBullet(BULLET* bullet){

    if (bullet->active == 1 && bullet->row < 160 && bullet->col < 240
    && bullet->row > 0 && bullet->col > 0 && bullet->tetherBullet == 1) {
            switch(bullet->shotDirection) {
            case UP:
                bullet->row-=2;
                break;
            case RIGHT:
                bullet->col+=2;
                break;
            case DOWN:
                bullet->row+=2;
                break;
            case LEFT:
                bullet->col-=2;
                break;
        }
    }
    if (bullet->active == 1 && bullet->row < 160 && bullet->col < 240
    && bullet->row > 0 && bullet->col > 0 && bullet->tetherBullet == 0) {
            switch(prevMovement) {
            case UP:
                bullet->row-=2;
                break;
            case RIGHT:
                bullet->col+=2;
                break;
            case DOWN:
                bullet->row+=2;
                break;
            case LEFT:
                bullet->col-=2;
                break;
        }
    }
    else {
        bullet->active = 0;
    }
}

void fireBullet(BULLET* bullet) {


  if (bullet->active == 0 && bullet->tetherBullet == 0) {
            chooseSound();
            switch(bullet->shotDirection) {
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
         shootAni = 4;
  }
        if (bullet->active == 0 && bullet->tetherBullet == 1) {
             chooseSound();
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
  }

}
void chooseSound() {
    if(timer%2 == 0) {
        playSoundB(noot5,8055,11025, 0);
    } else {
        playSoundB(noot7,16028,11025, 0);
    }
}

void updatePlayer() {
    if((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
    bullet->shotDirection = prevMovement;
        for(int i = 0; i< 5; i++) {
            fireBullet(&bullet[i]);
        }
    }
    if((!(~(oldButtons)&((1<<9))) && (~buttons & ((1<<9))))) {
        rotateLeft();
    }
    if((!(~(oldButtons)&((1<<8))) && (~buttons & ((1<<8))))) {
        rotateRight();
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        slideRight();
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        slideLeft();
    }
    if((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1)))) && immunityWait == 0) {
        immunity = 100;
        immunityWait += 100;
    }
    if (immunity == 0) {
        for(int i = 0; i < 2; i++ ){
                    if ((alien[i].active) && collision(player.col, player.row, player.width, player.height,
                                alien[i].col, alien[i].row, alien[i].width, alien[i].height)) {

                                alien[i].active = 0;
                                playerHealth--;
                                hit+=4;
                                playSoundB(fucking_noot_noot,16064,11025, 0);
                        }
        }
        for(int i = 0; i < 2; i++ ){
                if ((car[i].active) && collision(player.col, player.row, player.width, player.height,
                            car[i].col, car[i].row, car[i].width, car[i].height)) {

                            car[i].active = 0;
                            playerHealth--;
                            hit+=4;
                            playSoundB(fucking_noot_noot,16064,11025, 0);
                    }
        }
        for(int i = 0; i < 2; i++ ){
                if ((asteroid[i].active) && collision(player.col, player.row, player.width, player.height,
                            asteroid[i].col, asteroid[i].row, asteroid[i].width, asteroid[i].height)) {

                            asteroid[i].active = 0;
                            playerHealth--;
                            hit+=4;
                            playSoundB(fucking_noot_noot,16064,11025, 0);
                    }
        }
    }
}
void updatePrincess() {
    if (immunity == 0) {
        for(int i = 0; i < 2; i++ ){
                if ((alien[i].active) && collision(player.col, player.row, player.width, player.height,
                            alien[i].col, alien[i].row, alien[i].width, alien[i].height)) {

                            alien[i].active = 0;
                            playerHealth--;
                            hit+=4;
                    }
        }
        for(int i = 0; i < 2; i++ ){
                if ((car[i].active) && collision(princess.col, princess.row, princess.width, princess.height,
                            car[i].col, car[i].row, car[i].width, car[i].height)) {

                            car[i].active = 0;
                            princessHealth--;
                            hit+=4;
                    }
        }
        for(int i = 0; i < 2; i++ ){
                if ((asteroid[i].active) && collision(princess.col, princess.row, princess.width, princess.height,
                            asteroid[i].col, asteroid[i].row, asteroid[i].width, asteroid[i].height)) {

                            asteroid[i].active = 0;
                            princessHealth--;
                            hit+=4;
                    }
        }
    }
}
void drawGame() {
    int j = 2;
    drawPlayer();
    if(timerShooting%5 == 0 && shootAni != 0) {
        shootAni-=2;
        timerShooting = 0;
    }
    timerShooting++;
    drawPrincess();
    for(int i = 0; i< 5; i++){
        drawBullet(&bullet[i], j);
        j++;
    }

    for(int i = 0; i< 2; i++){
        drawCars(&car[i], j);
        j++;
    }

    for(int i = 0; i< 2; i++){
        drawAlien(&alien[i], j);
        j++;
    }
    for(int i = 0; i< 2; i++){
        drawAsteroids(&asteroid[i], j);
        j++;
    }
    if(hit != 0) {
        hit--;
    }
    if (immunity != 0) {
        immunity--;
    }
    if (immunityWait != 0) {
        immunityWait--;
    }

}

void drawPlayer() {
    shadowOAM[0].attr0 = player.row | (0<<13) | (0<<14);
 shadowOAM[0].attr1 = player.col | (1<<14);
    if (hit > 0) {
        shadowOAM[0].attr2 = ((5)<<12) | ((shootAni)*32+(player.sprite));
    } else {
         shadowOAM[0].attr2 = ((0)<<12) | ((shootAni)*32+(player.sprite));
    }
}

void drawPrincess() {
    (*(volatile unsigned short*)0x04000052) = ((10)<<0) | ((0)<<8);
    (*(volatile unsigned short*)0x04000054) = ((10)<<0);
 shadowOAM[1].attr1 = princess.col | (2<<14);
    if (immunity > 0) {
        shadowOAM[1].attr0 = princess.row | (0<<13) | (0<<14) | (1<<10);
        shadowOAM[1].attr2 = ((1)<<12) | ((0)*32+(8));
    } else {
        shadowOAM[1].attr0 = princess.row | (0<<13) | (0<<14);
        shadowOAM[1].attr2 = ((1)<<12) | ((0)*32+(8));
    }
}

void drawBullet(BULLET* bullet, int j) {
    if (bullet->active) {
        shadowOAM[j].attr0 = (0xFF & bullet->row) | (0<<13) | (0<<14);
        shadowOAM[j].attr1 = (0x1FF & bullet->col) | (0<<14);
        shadowOAM[j].attr2 = ((0)<<12) | ((0)*32+(bullet->sprite));
    }
    else {
        shadowOAM[j].attr0 = (2<<8);
    }
}

void drawAlien(ALIEN* alien, int j) {
    if (alien->active) {
        shadowOAM[j].attr0 = (0xFF & alien->row) | (0<<13) | (0<<14);
        shadowOAM[j].attr1 = (0x1FF & alien->col) | (1<<14);
        shadowOAM[j].attr2 = ((3)<<12) | ((alien->shine)*32+(alien->alienAni));
    }
    else {
        shadowOAM[j].attr0 = (2<<8);
    }
}

void drawCars(CAR* car, int j) {
    if (car->active) {
        shadowOAM[j].attr0 = (0xFF & car->row) | (0<<13) | (0<<14);
        shadowOAM[j].attr1 = (0x1FF & car->col) | (1<<14);
        shadowOAM[j].attr2 = ((5)<<12) | ((0)*32+(car->carAni));
    }
    else {
        shadowOAM[j].attr0 = (2<<8);
    }
}
void drawAsteroids(ASTEROID* asteroid, int j) {
    rotTimer++;
    int deg = (rotTimer % 360);
        shadowAffine[0].a = sin_lut_fixed8[(deg + 90) % 360];
        shadowAffine[0].b = sin_lut_fixed8[(deg + 180) % 360];
        shadowAffine[0].c = sin_lut_fixed8[(deg) % 360];
        shadowAffine[0].d = sin_lut_fixed8[(deg + 90) % 360];
    if (asteroid->active) {
        shadowOAM[j].attr0 = asteroid->row | (0<<13) | (0<<14) | (3<<8);
        shadowOAM[j].attr1 = asteroid->col | (1<<14) | ((0) << 9);
        shadowOAM[j].attr2 = ((4)<<12) | ((0)*32+(19));
    }
    else {
        shadowOAM[j].attr0 = (2<<8);
    }
}
