/*
HOW TO PLAY
------------------------------------------
Press START to begin game
Press L and R keys to toggle
your direction to shoot
Press A to shoot
Press L and R keys to toggle shot recently shot
Press LEFT or RIGHT to slide
from side to side
Press SELECT to return
to splash Screen
Press B for temporary immunity

WHAT IT CAN DO
----------------------------------
- can shoot at enemies
- after a certain amount enemies are shot then a cut scene with 
text is shown
- if princess is hit once game ends
- if player is hit 3 times the game ends
- if 20 enemies are killed then the player wins
- the cheat is implemented so if the player hits A 
then they are immune to enemies for a certain amount of time

CURRENT BUGS
-------------------------------------
- colliders for affine asteroid sprite not working as expected
- still managing randomization for the different paths for each enemy
- sometimes enemies dissapear and never return to the screen
probably something to do with touching the edge that i didnt specify

FUTURE MODIFICATIONS
---------------------------------------
- will continue to work on cut scene
- might have aliens have lasers to shoot at the player
- might slow down enemies to make it easier for player to shoot
- will modify immunity to be a transparancy instead of a color change
*/

//internal .h files
#include "myLib.h"
#include "game.h"
#include "cutScene.h"
#include "font.h"
#include "text.h"
#include "sound.h"

//external .h files
#include "loseScreen.h"
#include "winScreen.h"
#include "moonArt.h"
#include "bg0Space.h"
#include "bg1Stars.h"
#include "bg0SpacePause.h"

#include "keepOnKeepingOn.h"



void initialize();

SOUND soundA;

unsigned short buttons;
unsigned short oldButtons;

unsigned short hOff;

OBJ_ATTR shadowOAM[128];

enum {START, GAME, PAUSE, WIN, LOSE, CUTSCENE, INFO};
int state;
int enemiesKilled;

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
            case INFO:
                info();
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
    setupSounds();
	setupInterrupts();
    
    enemiesKilled = 1;
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
        goToInfo();
	}
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToGame();
	}
    
	
}
void goToGame() {
    
    REG_DISPCTL =  MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;

    playSoundA(keepOnKeepingOn,KEEPONKEEPINGONLEN,KEEPONKEEPINGONFREQ, 1);
    
	//playSoundB(StartSFX,STARTSFXLEN,STARTSFXFREQ, 0);
    initGame();
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
	if(enemiesKilled > 20) { 
        REG_BG0HOFF = 0;
        REG_BG1HOFF = 0;
        stopSound();
		goToWin();
	}
    //if the player has no lives lef then the player looses the game(livesRemaining == 0
	if(princessHealth == 0 || playerHealth == 0) {
        REG_BG0HOFF = 0;
        REG_BG1HOFF = 0;
        stopSound();
		goToLose();
	}
    //goes to cutscene if a certain amount of enemies are killed
    if(enemiesKilled%8 == 0 || BUTTON_PRESSED(BUTTON_SELECT)) { //|| BUTTON_PRESSED(BUTTON_B)) {
        enemiesKilled++;
        tmphOff = hOff;
        REG_BG0HOFF = 0;
        REG_BG1HOFF = 0;
        pauseSound();
		goToCutScene();
	}
    //player can pause the game at any time
	if(BUTTON_PRESSED(BUTTON_START)) {
        tmphOff = hOff;
        REG_BG0HOFF = 0;
        REG_BG1HOFF = 0;
        pauseSound();
		goToPause();
	}
    

}
void goToInfo() {
    REG_DISPCTL =  MODE3| BG2_ENABLE;
    fillScreen3(BLACK);
    state = INFO;
    info();
}
void info() {
    drawString(10, 40, "Press START to begin game", WHITE);
    drawString(10, 50, "Press L and R keys to toggle", WHITE);
     drawString(10, 60, " your direction to shoot", WHITE);
    drawString(10, 70, "Press A to shoot", WHITE);
    drawString(10, 80, "Press LEFT or RIGHT to slide", WHITE); 
    drawString(10, 90, "from side to side", WHITE);
    drawString(10, 100, "Press SELECT to return", WHITE);
    drawString(10, 110, "to splash Screen", WHITE);
    oldButtons = buttons;
    buttons = BUTTONS;
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
		goToStart();
	}
     if(BUTTON_PRESSED(BUTTON_START)) {
		goToGame();
	}
}
void goToCutScene() {
     initCutScene();
    state = CUTSCENE;
}
void cutScene() {
   
    updateCutScene();
    
    drawCutScene();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
    //nextScreen();

    if(BUTTON_PRESSED(BUTTON_START)) {
        tmphOff = hOff;
        REG_BG0HOFF = 0;
        REG_BG1HOFF = 0;
        dispBackground();
        unpauseSound();
		goToGame();
	}
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
        unpauseSound();
		goToGame();
	}
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
        REG_DISPCTL = 0;
        goToStart();
	}
    
}
void goToWin() {
    
    REG_DISPCTL =  MODE0 | BG0_ENABLE;
	state = WIN;
}
//shows the win screen
void win() {
     REG_DISPCTL =  MODE0 | BG0_ENABLE;
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