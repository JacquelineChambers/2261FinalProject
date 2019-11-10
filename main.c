
//internal .h files
#include "myLib.h"
#include "game.h"

//external .h files
#include "loseScreen.h"
#include "winScreen.h"
#include "moonArt.h"
#include "bg0Space.h"
#include "bg1Stars.h"
#include "bg0SpacePause.h"


void initialize();

unsigned short buttons;
unsigned short oldButtons;

unsigned short hOff;

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
    REG_DISPCTL =  MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;
    hOff = tmphOff;
	state = GAME;
}
void game() {
    //updates, draws, and shows the games sprites
	updateGame();
    drawGame();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
    //lets the player win if all of the enemies have been killedenemiesRemaining == 0
	if(BUTTON_PRESSED(BUTTON_A)) { 
        REG_BG0HOFF = 0;
        REG_BG1HOFF = 0;
		goToWin();
	}
    //if the player has no lives lef then the player looses the game(livesRemaining == 0
	if(BUTTON_PRESSED(BUTTON_B)) {
        REG_BG0HOFF = 0;
        REG_BG1HOFF = 0;
		goToLose();
	}
    //player can pause the game at any time
	if(BUTTON_PRESSED(BUTTON_START)) {
        tmphOff = hOff;
        REG_BG0HOFF = 0;
        REG_BG1HOFF = 0;
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

	DMANow(3, bg0SpacePausePal, PALETTE, 256);
    DMANow(3, bg0SpacePauseTiles, &CHARBLOCK[0], bg0SpacePauseTilesLen / 2);
    DMANow(3, bg0SpacePauseMap, &SCREENBLOCK[28], 1024 * 4);

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
	DMANow(3, winScreenPal, PALETTE, 256);
    DMANow(3, winScreenTiles, &CHARBLOCK[0], winScreenTilesLen / 2);
    DMANow(3, winScreenMap, &SCREENBLOCK[28], 1024 * 4);

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
	DMANow(3, loseScreenPal, PALETTE, 256);
    DMANow(3, loseScreenTiles, &CHARBLOCK[0], loseScreenTilesLen / 2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[28], 1024 * 4);

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;
    //allows the player to play the game again
    if (BUTTON_PRESSED(BUTTON_START)) {
		initialize();
	}
}