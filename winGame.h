typedef struct {
	int row;
	int col;
	int width;
    int height;
    int x;
    int y;
} PRINCESSNOOT;

typedef struct {
	int row;
	int col;
	int width;
    int height;
    int x;
    int y;
} CLIFF;



#define QUOTELENGTHWIN 19
#define QUOTELENGTHAGAIN 23

extern PRINCESSNOOT princessNoot;
extern CLIFF cliff;


void initWinGame();
void initCliff();
void initPrincessNoot();

void drawWinGame();
void drawCliff();
void drawPrincessNoot();


void initWinQuote(); 

void clearShadowOAM();

void initWinQuote_setup();
void initAgainQuote_setup();

void initPlayAgainQuote();

