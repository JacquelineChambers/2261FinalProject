
#include "myLib.h"
#include "game.h"

//include sprite sheet .h
#include "bgTest.h"
#include "moonArt.h"
#include "bg0Space.h"
#include "bg1Stars.h"



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
        buttons = BUTTONS;
        //state machine
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
//shows the start screen
void start(){
    REG_DISPCTL =  MODE0 | BG0_ENABLE;
    DMANow(3, moonArtPal, PALETTE, 256);
    DMANow(3, moonArtTiles, &CHARBLOCK[0], moonArtTilesLen / 2);
    DMANow(3,moonArtMap, &SCREENBLOCK[28], 1024 * 4);

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;

    //allows the player to start the game
	if (BUTTON_PRESSED(BUTTON_START)) {
		initGame();
		goToGame();
	}
	

}
void goToGame() {
   
	state = GAME;
}
void game() {
	
    //updates, draws, and shows the games sprites
	updateGame();
    //drawGame();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
    //lets the player win if all of the enemies have been killedenemiesRemaining == 0
	if(BUTTON_PRESSED(BUTTON_A)) {
		goToWin();
	}
    //if the player has no lives lef then the player looses the game(livesRemaining == 0
	if(BUTTON_PRESSED(BUTTON_A)) {
		goToLose();
	}
    //player can pause the game at any time
	if(BUTTON_PRESSED(BUTTON_START)) {
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
//shows the pause screen
void pause() {
    REG_DISPCTL =  MODE0 | BG0_ENABLE;

	DMANow(3, bg1StarsPal, PALETTE, 256);
    DMANow(3, bg1StarsTiles, &CHARBLOCK[0], bg1StarsTilesLen / 2);
    DMANow(3, bg1StarsMap, &SCREENBLOCK[28], 1024 * 4);

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;
    //player can return to the game at any time
	if(BUTTON_PRESSED(BUTTON_START)) {
		dispBackground();
		goToGame();
	}
}
void goToWin() {
    REG_DISPCTL =  MODE0 | BG0_ENABLE;
	state = WIN;
}
//shows the win screen
void win() {
	DMANow(3, bgTestPal, PALETTE, 256);
    DMANow(3, bgTestTiles, &CHARBLOCK[0], bgTestTilesLen / 2);
    DMANow(3, bgTestMap, &SCREENBLOCK[28], 1024 * 4);

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;
    //allows the player to play the game again
    if(BUTTON_PRESSED(BUTTON_START)) {
		initialize();
	}
}
void goToLose() {
    REG_DISPCTL =  MODE0 | BG0_ENABLE;
	state = LOSE;
}
//shows the lose screen
void lose() {
	DMANow(3, bgTestPal, PALETTE, 256);
    DMANow(3, bgTestTiles, &CHARBLOCK[0], bgTestTilesLen / 2);
    DMANow(3,  bgTestMap, &SCREENBLOCK[28], 1024 * 4);

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;
    //allows the player to play the game again
    if (BUTTON_PRESSED(BUTTON_START)) {
		//initialize();
	}
}