#include "movement.h"
#include "myLib.h"
#include "game.h"

 int movement;
 int toggle;
 int prevMovement;
 enum {UP, DOWN, LEFT, RIGHT};
 enum {R, L};

void rotateLeft() {//player can rotate to the left
     if(toggle == R) {
             switch(movement) {
            case UP:
                movement = DOWN;
                break;
            case RIGHT:
                movement = LEFT;
                break;
            case DOWN:
                movement = UP;
                break;
            case LEFT:
                movement = RIGHT;
                break;
            } 
        }
        prevMovement = movement;
        switch(movement) {
            case UP:
                player.col = 110;
	            player.row = 60;
                player.sprite = 0;
                movement = LEFT;
                break;
            case LEFT:
                player.col = 90;
	            player.row = 80;
                player.sprite = 2;
                movement = DOWN;
                break;
            case DOWN:
                player.col = 110;
	            player.row = 100;
                player.sprite = 4;
                movement = RIGHT;
                break;
            case RIGHT:
                player.col = 130;
	            player.row = 80;
                player.sprite = 6;
                movement = UP;
                break;
        }
        toggle = L;
}

void rotateRight() {//player can rotate to the right
    if(toggle == L) {
           switch(movement) {
            case UP:
                movement = DOWN;
                break;
            case RIGHT:
                movement = LEFT;
                break;
            case DOWN:
                movement = UP;
                break;
            case LEFT:
                movement = RIGHT;
                break;
            } 
        }
        prevMovement = movement;
        switch(movement) {
            case UP:
                player.col = 110;
	            player.row = 60;
                player.sprite = 0;
                movement = RIGHT;
                break;
            case RIGHT:
                player.col = 130;
	            player.row = 80;
                player.sprite = 6;
                movement = DOWN;
                break;
            case DOWN:
                player.col = 110;
	            player.row = 100;
                player.sprite = 4;
                movement = LEFT;
                break;
            case LEFT:
                player.col = 90;
	            player.row = 80;
                player.sprite = 2;
                movement = UP;
                break;
        }
        toggle = R;
}

void slideRight() {//player can slide to the right
     switch(prevMovement) {
            case UP:
                if(player.width + player.col < 140) {
                    player.col++;
                }
               break;
            case RIGHT:
                if(player.height + player.row < 105) {
                    player.row++;
                }
               break;
            case DOWN:
                if(player.width + player.col < 140) {
                    player.col++;
                }
                break;
            case LEFT:
                if(player.height + player.row < 105) {
                    player.row++;
                }
                break;
        }
        
}

void slideLeft() {//player can slide to the left
    switch(prevMovement) {
            case UP:
                if(player.col > 95) {
                    player.col--;
                }
               break;
            case RIGHT:
                if(player.row > 65) {
                    player.row--;
                }
               break;
            case DOWN:
                if(player.col > 95) {
                    player.col--;
                }
                break;
            case LEFT:
                if(player.row > 65) {
                    player.row--;
                }
                break;
        }
}