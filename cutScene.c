#include "myLib.h"
#include "cutScene.h"
#include "game.h"
#include "sound.h"

#include "bg0Space.h"
#include "bg1Stars.h"
#include "sprites.h"
#include "grenzlinie.h"

NOOT noot;
BOX boxLeftSide[BOXSIZE/5 - 2];
BOX boxRightSide[BOXSIZE/5 - 2];
BOX boxCorner[NUMCORNERS];
BOX boxTop[BOXSIZE];
BOX boxBottom[BOXSIZE];
BOX boxBlack;
OBJ_ATTR shadowOAM[128];
ALPHABET alphabet;
TEXT text[QUOTELENGTH];
TEXT text2[QUOTELENGTH];
TEXT text3[QUOTELENGTH];

void initCutScene() {
    playSoundB(grenzlinie,GRENZLINIELEN,GRENZLINIEFREQ, 1);
    dispBackground();
    initBoxLeftSide();
    initBoxRightSide();
    initBoxCorner();
    initBoxEdgeTop();
    initBoxEdgeBottom();
    initQuoteOne_letter();
    initQuoteTwo_letter();
    initQuoteThree_letter();
    for (int i = 0; i< QUOTELENGTH; i++) {
        initQuoteOne_setup(&text[i], i);
    }
    for (int i = 0; i< QUOTELENGTH; i++) {
        initQuoteTwo_setup(&text2[i], i);
    }
    for (int i = 0; i< QUOTELENGTH; i++) {
        initQuoteThree_setup(&text3[i], i);
    }
    initCharacter();
    hideSprites();
}
void initCharacter() {
    noot.row = 100;
	noot.col = 50;
	noot.width = 64;
    noot.height = 64;
    noot.x = 13;
    noot.y = 0;
}


void initQuoteOne_letter() {
    text[0].letter = 22;//w
    text[1].letter = 7;//h
    text[2].letter = 0;//a
    text[3].letter = 19;//t
    
    text[4].letter = 27;//space

    text[5].letter = 0;//a
    text[6].letter = 12;//m
    
    text[7].letter = 27;//space

    text[8].letter = 8;//i

    text[9].letter = 27;//space

    text[10].letter = 5;//f
    text[11].letter = 8;//i
    text[12].letter = 6;//g
    text[13].letter = 7;//h
    text[14].letter = 19;//t
    text[15].letter = 8;//i
    text[16].letter = 13;//n
    text[17].letter = 6;//g

    text[18].letter = 27;//space

    text[19].letter = 5;//f
    text[20].letter = 14;//o
    text[21].letter = 17;//r
}
void initQuoteTwo_letter() {
    text2[0].letter = 18;//s
    text2[1].letter = 15;//p
    text2[2].letter = 0;//a
    text2[3].letter = 2;//c
    text2[4].letter = 4;//e

    text2[5].letter = 27;//space

    text2[6].letter = 8;//i
    text2[7].letter = 18;//s

    text2[8].letter = 27;//space

    text2[9].letter = 18;//s
    text2[10].letter = 14;//o

    text2[11].letter = 27;//space

    text2[12].letter = 1;//b
    text2[13].letter = 4;//e
    text2[14].letter = 0;//a
    text2[15].letter = 20;//u
    text2[16].letter = 19;//t
    text2[17].letter = 8;//i
    text2[18].letter = 5;//f
    text2[19].letter = 20;//u
    text2[20].letter = 11;//l

    text2[21].letter = 27;//space
}
void initQuoteThree_letter() {
    text3[0].letter = 8;//i

    text3[1].letter = 27;//space

    text3[2].letter = 7;//h
    text3[3].letter = 14;//o
    text3[4].letter = 15;//p
    text3[5].letter = 4;//e

    text3[6].letter = 27;//space

    text3[7].letter = 22;//w
    text3[8].letter = 4;//e

    text3[9].letter = 27;//space

    text3[10].letter = 0;//a
    text3[11].letter = 17;//r
    text3[12].letter = 4;//e

    text3[13].letter = 27;//space

    text3[14].letter = 2;//c
    text3[15].letter = 11;//l
    text3[16].letter = 14;//o
    text3[17].letter = 18;//s
    text3[18].letter = 4;//e

    text3[19].letter = 27;//space
    text3[20].letter = 27;//space
    text3[21].letter = 27;//space
}
void initQuoteOne_setup(TEXT* text, int i) {
    text->row = 130;
    text->col = 25 + (i * 8);
}

void initQuoteTwo_setup(TEXT* text2, int i) {
    text2->row = 130;
    text2->col = 25 + (i * 8);
}

void initQuoteThree_setup(TEXT* text3, int i) {
    text3->row = 130;
    text3->col = 25 + (i * 8);
}

void initBoxLeftSide() {
        for(int i = 0; i <SIDESIZE; i++) {
        boxLeftSide[i].row = 130 + (i*8);
        boxLeftSide[i].col = 17;
        boxLeftSide[i].width = 8;
        boxLeftSide[i].height = 32;
        boxLeftSide[i].y = 8;
        boxLeftSide[i].x = 0;
        }
}
void initBoxRightSide() {
        for(int i = 0; i <SIDESIZE; i++) {
        boxRightSide[i].row = 130 + (i*8);
        boxRightSide[i].col = 202;
        boxRightSide[i].width = 8;
        boxRightSide[i].height = 32;
        boxRightSide[i].y = 8;
        boxRightSide[i].x = 4;
        }
}

void initBoxCorner() {
    
        boxCorner[0].row = 125;
        boxCorner[0].col = 17;
        boxCorner[0].width = 8;
        boxCorner[0].height = 8;
        boxCorner[0].x = 0;
        boxCorner[0].y = 7;
  
        boxCorner[1].row = 125;
        boxCorner[1].col = 202;
        boxCorner[1].width = 8;
        boxCorner[1].height = 8;
        boxCorner[1].x = 4;
        boxCorner[1].y = 7;

        boxCorner[2].row = 140;
        boxCorner[2].col = 17;
        boxCorner[2].width = 8;
        boxCorner[2].height = 8;
        boxCorner[2].x = 0;
        boxCorner[2].y = 10;

        boxCorner[3].row = 140;
        boxCorner[3].col = 202;
        boxCorner[3].width = 8;
        boxCorner[3].height = 8;
        boxCorner[3].x = 4;
        boxCorner[3].y = 10;
}


void initBoxEdgeTop() {
     for(int i = 0; i <BOXSIZE; i++) {
        boxTop[i].row = 122;
        boxTop[i].col = 25 + (i*8);
        boxTop[i].width = 8;
        boxTop[i].height = 8;
        boxTop[i].x = 1;
        boxTop[i].y = 7;
     }
     
}

void initBoxEdgeBottom() {
    for(int i = 0; i <BOXSIZE; i++) {
        boxBottom[i].row = 140;
        boxBottom[i].col = 25 + (i*8);
        boxBottom[i].width = 8;
        boxBottom[i].height = 8;
        boxBottom[i].x = 1;
        boxBottom[i].y = 10;
     }
}

void updateCutScene() {
    parallax();
}


void drawCutScene() {
    drawPlayer();
    drawPrincess();
    int j = 5;
    if (timer%2) {
        noot.x = 13;
        noot.y = 8;
    }
    else if (timer%3) {
        noot.x = 9;
        noot.y = 8;
    } else {
        noot.x = 13;
        noot.y = 0;
    }
    drawCharacter(j);
    j++;
    for(int i = 0; i <SIDESIZE; i++) {
        drawBox(&boxLeftSide[i], j);
        j++;
    }
    for(int i = 0; i <SIDESIZE; i++) {
        drawBox(&boxRightSide[i], j);
        j++;
    }
    for(int i = 0; i <BOXSIZE; i++) {
        drawBox(&boxTop[i], j);
        j++;
    }
    for(int i = 0; i <BOXSIZE; i++) {
        drawBox(&boxBottom[i], j);
        j++;
    }
    
    for(int i = 0; i <NUMCORNERS; i++) {
        drawBox(&boxCorner[i], j);
        j++;
    }
    if (timer%2) {
        for (int i = 0; i < QUOTELENGTH; i++) {//what am i fighting for
            drawQuoteOne(&text[i], j);
            j++;
        }
    } 
    else if (timer%3) {
        for (int i = 0; i < QUOTELENGTH; i++) {//i hope we are close
            drawQuoteOne(&text3[i], j);
            j++;
        }
    } 
    else {
        for (int i = 0; i < QUOTELENGTH; i++) {//space is so beatiful
            drawQuoteOne(&text2[i], j);
            j++;
        }
    }
}
void drawCharacter(int j) {
    shadowOAM[j].attr0 = noot.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[j].attr1 = noot.col | ATTR1_MEDIUM;
    shadowOAM[j].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(noot.x,noot.y);  
}

void drawBox(BOX* side, int j) {
    
    shadowOAM[j].attr0 = side->row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[j].attr1 = side->col | ATTR1_TINY;
    shadowOAM[j].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(side->x,side->y);  
   
}
void drawQuoteOne(TEXT* text, int j) {
    shadowOAM[j].attr0 = text->row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[j].attr1 = text->col | ATTR1_TINY;
    shadowOAM[j].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(text->letter, 14);  
}