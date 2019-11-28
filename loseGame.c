#include "myLib.h"
#include "loseGame.h"
#include "grenzlinie.h"
#include "game.h"
#include "cutScene.h"
#include "winGame.h"


DEADPRINCESS deadPrincess;
OBJ_ATTR shadowOAM[128];
TEXT textLose[QUOTELENGTHLOSE];
TEXT playAgain[QUOTELENGTHAGAIN];

void initLoseGame() {
    clearShadowOAM();
    dispBackground();
    initDeadPrincess();
    initLoseQuote();
    initPlayAgainQuote();
    for (int i = 0; i < QUOTELENGTH; i++) {
        initLoseQuote_setup(&textLose[i], i);
    }
    for (int i = 0; i < QUOTELENGTHAGAIN; i++) {
        initAgainQuote_setup(&playAgain[i], i);
    }
}

void initLoseQuote_setup(TEXT* textLose, int i) {
    textLose->row = 20;
    textLose->col = 10 + (i * 8);
}

void initDeadPrincess() {
    deadPrincess.row = 100;
	deadPrincess.col = 190;
	deadPrincess.width = 32;
    deadPrincess.height = 64;
    deadPrincess.x = 0;
    deadPrincess.y = 17;// 17;

}

void initLoseQuote() {
    textLose[0].letter = 18;//s
    textLose[1].letter = 7;//h
    textLose[2].letter = 4;//e

    textLose[3].letter = 27;//space

    textLose[4].letter = 3;//d
    textLose[5].letter = 8;//i
    textLose[6].letter = 4;//e
    textLose[7].letter = 3;//d

}

void initPlayAgainQuote() {
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

void drawLoseGame() {
    
    int j = 0;
    drawDeadPrincess(j);
    j++;
    for (int i = 0; i < QUOTELENGTHLOSE; i++) {
        drawQuoteOne(&textLose[i], j);
        j++;
    }
    for (int i = 0; i < QUOTELENGTHAGAIN; i++) {
        drawQuoteOne(&playAgain[i], j);
        j++;
    }
    
    
}
void drawDeadPrincess(int j) {
    shadowOAM[j].attr0 = 80 | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[j].attr1 = 90 | ATTR1_LARGE;
    shadowOAM[j].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(0,17);
    
}



