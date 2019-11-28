typedef struct {
	int row;
	int col;
	int width;
    int height;
    int x;
    int y;
} DEADPRINCESS;

#define QUOTELENGTHLOSE 8
#define QUOTELENGTHAGAIN 23

extern DEADPRINCESS deadPrincess;

void drawLoseGame();
void initDeadPrincess();
void initLoseQuote();
void drawDeadPrincess(int j);
void initLoseQuote_setup();
void initLoseGame();

void initPlayAgainQuoteLose();