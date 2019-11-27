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

extern PRINCESSNOOT princessNoot;
extern CLIFF cliff;

void initWinGame();
void initCliff();
void initPrincessNoot();

void drawWinGame();
void drawCliff();
void drawPrincessNoot();

