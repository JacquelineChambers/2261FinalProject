#include "myLib.h"
#include "winGame.h"
#include "grenzlinie.h"
#include "game.h"
#include "cutScene.h"


PRINCESSNOOT princessNoot;
CLIFF cliff;
OBJ_ATTR shadowOAM[128];
TEXT textWin[QUOTELENGTHWIN];
TEXT playAgain[QUOTELENGTHAGAIN];

void initWinGame() {
    dispBackground();
    clearShadowOAM();
    initCliff();
    initPrincessNoot();
    initWinQuote();
    initPlayAgainQuote();
    for (int i = 0; i < QUOTELENGTH; i++) {
        initWinQuote_setup(&textWin[i], i);
    }
    for (int i = 0; i < QUOTELENGTHAGAIN; i++) {
        initAgainQuote_setup(&playAgain[i], i);
    }
}

void clearShadowOAM() {
    for(int i = 0; i < 40; i++) {
        shadowOAM[i].attr0 = 0;
	    shadowOAM[i].attr1 = 0;
        shadowOAM[i].attr2 = 0;
    }
    hideSprites();
     DMANow(3, shadowOAM, OAM, 128*4);
}
void initWinQuote_setup(TEXT* textWin, int i) {
    textWin->row = 20;
    textWin->col = 10 + (i * 8);
}

void initAgainQuote_setup(TEXT* playAgain, int i) {
    playAgain->row = 50;
    playAgain->col = 10 + (i * 8);
}

void initCliff() {
    princessNoot.row = 61;
	princessNoot.col = 185;
	princessNoot.width = 64;
    princessNoot.height = 64;
    princessNoot.x = 24;
    princessNoot.y = 0;

}

void initPrincessNoot() {
    cliff.row = 105;
	cliff.col = 185;
	cliff.width = 64;
    cliff.height = 32;
    cliff.x = 24;
    cliff.y = 8;
}


void initWinQuote() {
    textWin[0].letter = 19;//t
    textWin[1].letter = 7;//h
    textWin[2].letter = 0;//a
    textWin[3].letter = 13;//n
    textWin[4].letter = 10;//k

    textWin[5].letter = 27;//space

    textWin[6].letter = 24;//y
    textWin[7].letter = 14;//o
    textWin[8].letter = 20;//u

    textWin[9].letter = 27;//space

    textWin[10].letter = 13;//n
    textWin[11].letter = 14;//o
    textWin[12].letter = 14;//o
    textWin[13].letter = 19;//t

    textWin[14].letter = 27;//space

    textWin[15].letter = 13;//n
    textWin[16].letter = 14;//o
    textWin[17].letter = 14;//o
    textWin[18].letter = 19;//t

}

void initPlayAgainQuoteLose() {
    playAgain[0].letter = 7;//h
    playAgain[1].letter = 8;//i
    playAgain[2].letter = 19;//t

    playAgain[3].letter = 27;//space

    playAgain[4].letter = 18;//s
    playAgain[5].letter = 19;//t
    playAgain[6].letter = 0;//a
    playAgain[7].letter = 17;//r
    playAgain[8].letter = 19;//t

    playAgain[9].letter = 27;//space

    playAgain[10].letter = 19;//t
    playAgain[11].letter = 14;//o

    playAgain[12].letter = 27;//space

    playAgain[13].letter = 15;//p
    playAgain[14].letter = 11;//l
    playAgain[15].letter = 0;//a
    playAgain[16].letter = 24;//y

    playAgain[17].letter = 27;//space

    playAgain[18].letter = 0;//a
    playAgain[19].letter = 6;//g
    playAgain[20].letter = 0;//a
    playAgain[21].letter = 8;//i
    playAgain[22].letter = 13;//n
}

void drawWinGame() {
    
    int j = 0;
    drawPrincessNoot(j);
    j++;
    drawCliff(j);
    j++;
    for (int i = 0; i < QUOTELENGTHWIN; i++) {
        drawQuoteOne(&textWin[i], j);
        j++;
    }
    for (int i = 0; i < QUOTELENGTHAGAIN; i++) {
        drawQuoteOne(&playAgain[i], j);
        j++;
    }
    
}
void drawCliff(int j) {
    shadowOAM[j].attr0 = cliff.row | ATTR0_4BPP | ATTR0_WIDE; //| ATTR0_AFFINE;
	shadowOAM[j].attr1 = cliff.col | ATTR1_LARGE;
    shadowOAM[j].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(cliff.x,cliff.y);
    
}
void drawPrincessNoot(int j) {
    shadowOAM[j].attr0 = princessNoot.row | ATTR0_4BPP | ATTR0_SQUARE; //| ATTR0_AFFINE;
	shadowOAM[j].attr1 = princessNoot.col | ATTR1_LARGE;
    shadowOAM[j].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(princessNoot.x,princessNoot.y);
    
}


