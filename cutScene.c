#include "myLib.h"
#include "cutScene.h"
#include "game.h"

#include "bg0Space.h"
#include "bg1Stars.h"
#include "sprites.h"
NOOT noot;
BOX boxRight;
BOX boxLeft;
BOX boxCenter[4];
OBJ_ATTR shadowOAM[128];
ALPHABET alphabet;
TEXT text[QUOTELENGTH];

void initCutScene() {
    dispBackground();
    initDialogBox();
    initQuoteOne_letter();
    for (int i = 0; i< QUOTELENGTH; i++) {
        initQuoteOne_setup(&text[i], i);
    }
    initAlphabet();
    initCharacter();
    hideSprites();
}
void initCharacter() {
    noot.row = 100;
	noot.col = 50;
	noot.width = 64;
    noot.height = 64;
    noot.aniState = 13;
}
void initAlphabet() {
    alphabet.a = 0;
	alphabet.b = 1;
	alphabet.c = 2;
    alphabet.d = 3;
	alphabet.e = 4;
	alphabet.f = 5;
    alphabet.g = 6;
	alphabet.h = 7;
	alphabet.i = 8;
    alphabet.j = 9;
	alphabet.k = 10;
	alphabet.l = 11;
    alphabet.m = 12;
	alphabet.n = 13;
	alphabet.o = 14;
    alphabet.p = 15;
	alphabet.q = 16;
	alphabet.r = 17;
    alphabet.s = 18;
	alphabet.t = 19;
	alphabet.u = 20;
    alphabet.v = 21;
	alphabet.w = 22;
	alphabet.x = 23;
    alphabet.y = 24;
	alphabet.z = 25;  
    alphabet.space = 27;
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
    text[14].letter = 8;
    text[15].letter = 13;
    text[16].letter = 6;
    text[17].letter = 27;
}
void initQuoteOne_setup(TEXT* text, int i) {
    text->row = 130;
    text->col = 50 + (i * 2);
}

void initDialogBox() {
        boxLeft.row = 120;
        boxLeft.col = 40;
        boxLeft.width = 32;
        boxLeft.height = 32;
        boxLeft.section = 0;
    for(int i = 0; i < 4 ; i++) {
        boxCenter[i].row = 120 ;
        boxCenter[i].col = 50+ (i*32);
        boxCenter[i].width = 32;
        boxCenter[i].height = 32;
        boxCenter[i].section = 4;
    }
        boxRight.row = 120;
        boxRight.col = 50+ (2*32) + 50;
        boxRight.width = 32;
        boxRight.height = 32;
        boxRight.section = 8;
}

void updateCutScene() {
    parallax();
}


void drawCutScene() {
    drawPlayer();
    drawPrincess();
    drawDialogBox();
    for (int i = 0; i < QUOTELENGTH; i++) {
        drawQuoteOne(&text[i], i);
    }
    drawCharacter();
   

}
void drawCharacter() {
    shadowOAM[5].attr0 = noot.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[5].attr1 = noot.col | ATTR1_MEDIUM;
    shadowOAM[5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(noot.aniState,0);  
}
void drawDialogBox() {
    shadowOAM[6].attr0 = boxLeft.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[6].attr1 = boxLeft.col | ATTR1_MEDIUM;
    shadowOAM[6].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(boxLeft.section,7);
    int j = 0;
    for(int i = 7; i < 11; i++) {
    shadowOAM[i].attr0 = boxCenter[j].row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[i].attr1 = boxCenter[j].col | ATTR1_MEDIUM;
    shadowOAM[i].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(boxCenter[j].section,7);  
    j++;
    }
    
    shadowOAM[11].attr0 = boxRight.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[11].attr1 = boxRight.col | ATTR1_MEDIUM;
    shadowOAM[11].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(boxRight.section,7);  
}
void drawQuoteOne(TEXT* text, int i) {
    shadowOAM[i + 12].attr0 = text->row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[i + 12].attr1 = text->col | ATTR1_TINY;
    shadowOAM[i + 12].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(text->letter,0);  
}