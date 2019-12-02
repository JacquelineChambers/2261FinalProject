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
# 4 "game.c" 2
# 1 "movement.h" 1




void rotateLeft();
void rotateRight();
void slideRight();
void slideLeft();
# 5 "game.c" 2
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
# 6 "game.c" 2

# 1 "bg0Space.h" 1
# 22 "bg0Space.h"
extern const unsigned short bg0SpaceTiles[3072];


extern const unsigned short bg0SpaceMap[3072];


extern const unsigned short bg0SpacePal[256];
# 8 "game.c" 2
# 1 "bg1Stars.h" 1
# 22 "bg1Stars.h"
extern const unsigned short bg1StarsTiles[544];


extern const unsigned short bg1StarsMap[1024];


extern const unsigned short bg1StarsPal[256];
# 9 "game.c" 2
# 1 "sprites.h" 1
# 21 "sprites.h"
extern const unsigned short spritesTiles[16384];


extern const unsigned short spritesPal[256];
# 10 "game.c" 2
# 1 "sine.h" 1
extern const int sin_lut_fixed8[];
# 11 "game.c" 2
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
# 12 "game.c" 2
# 1 "noot5.h" 1
# 20 "noot5.h"
extern const unsigned char noot5[8055];
# 13 "game.c" 2
# 1 "noot7.h" 1
# 20 "noot7.h"
extern const unsigned char noot7[16028];
# 14 "game.c" 2
# 1 "fucking-noot-noot.h" 1
# 20 "fucking-noot-noot.h"
extern const unsigned char fucking_noot_noot[16064];
# 15 "game.c" 2


unsigned short hOff;
unsigned short tmphOff;
int livesRemaining;
int enemiesKilled;
PLAYER player;
PRINCESS princess;
BULLET bullet[5];
LIVES liveCount[3];
SHIELD shield[3];

TEXT text3[6];
TEXT text4[6];

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
     initCar();
     initPlayer();
     initPrincess();
     initBullet();
     initLifeCount();
     initShield();
     initLifeText();
     initShieldText();
     for( int i = 0; i < 6; i++) {
        lifeText_setup(&text3[i], i);
     }
     for( int i = 0; i < 6; i++) {
        shieldText_setup(&text4[i], i);
     }
     bullet[0].tetherBullet = 1;
     hideSprites();

}

void dispBackground() {

    DMANow(3, bg0SpacePal, ((unsigned short *)0x5000000), 256);

    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);
    DMANow(3, bg0SpaceTiles, &((charblock *)0x6000000)[0], 6144/2);
    DMANow(3, bg0SpaceMap, &((screenblock *)0x6000000)[31], 6144/2);

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

void initLifeCount() {
    for (int i = 0; i < 3; i++) {
        liveCount[i].row = 150 ;
        liveCount[i].col = 20 + (i * 8);
        liveCount[i].x = 5;
        liveCount[i].y = 9;
    }
}

void initShield() {
    for (int i = 0; i < 3; i++) {
        shield[i].row = 150;
        shield[i].col = 100 + (i * 8);
        shield[i].x = 5;
        shield[i].y = 10;
    }
}

void initLifeText() {
    text3[0].letter = 11;
    text3[1].letter = 8;
    text3[2].letter = 21;
    text3[3].letter = 4;
    text3[4].letter = 18;
    text3[5].letter = 27;

}
void initShieldText() {
    text4[0].letter = 18;
    text4[1].letter = 7;
    text4[2].letter = 8;
    text4[3].letter = 4;
    text4[4].letter = 11;
    text4[5].letter = 3;

}

void lifeText_setup(TEXT* text3, int i) {
    text3->row = 140;
    text3->col = 10 + (i * 8);
}

void shieldText_setup(TEXT* text4, int i) {
    text4->row = 140;
    text4->col = 90 + (i * 8);
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
    timerShine2++;
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
    playSoundB(noot5,8055,11025, 0);
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
        immunity = 800;
        immunityWait += 800;
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
    int x = 0;
    if (playerHealth >= 3) {
        drawLives(&liveCount[x], j);
       x++;

    } else {
         shadowOAM[j].attr0 = (2<<8);
    }
    j++;
    if (playerHealth >= 2) {
        drawLives(&liveCount[x], j);
        x++;

    } else {
         shadowOAM[j].attr0 = (2<<8);
    }
    j++;
    if (playerHealth >= 1) {
        drawLives(&liveCount[x], j);

    } else {
         shadowOAM[j].attr0 = (2<<8);
    }
    j++;
    int i = 0;
    if (immunity > 600) {
            drawShield(&shield[i], j);

            i++;
    } else {
       shadowOAM[j].attr0 = (2<<8);
    }
    j++;
    if (immunity > 400) {
            drawShield(&shield[i], j);

            i++;
    } else {
        shadowOAM[j].attr0 = (2<<8);

    }
    j++;
    if (immunity > 100) {
            drawShield(&shield[i], j);

    } else {
        shadowOAM[j].attr0 = (2<<8);

    }
    j++;
    for (int i = 0; i< 6; i++) {
        drawQuoteOne(&text3[i], j);
        j++;
    }
    for (int i = 0; i< 6; i++) {
        drawQuoteOne(&text4[i], j);
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
        shadowOAM[j].attr2 = ((5)<<12) | ((car->carShine)*32+(car->carAni));
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
void drawLives(LIVES* liveCount, int j) {

        shadowOAM[j].attr0 = (0xFF & liveCount->row) | (0<<13) | (0<<14);
        shadowOAM[j].attr1 = (0x1FF & liveCount->col) | (0<<14);
        shadowOAM[j].attr2 = ((0)<<12) | ((liveCount->y)*32+(liveCount->x));

}
void drawShield(SHIELD* shield, int j) {

        shadowOAM[j].attr0 = (0xFF & shield->row) | (0<<13) | (0<<14);
        shadowOAM[j].attr1 = (0x1FF & shield->col) | (0<<14);
        shadowOAM[j].attr2 = ((6)<<12) | ((shield->y)*32+(shield->x));

}
