

void initCutScene();

typedef struct {
	int row;
	int col;
	int width;
    int height;
    int aniState;
} NOOT;

typedef struct {
	int row;
	int col;
	int width;
    int height;
    int section;
} BOX;

extern BOX boxRight;

extern BOX boxLeft;
//extern BOX boxCenter[3];
extern NOOT noot;

void initCharacter();
void drawCutScene();
void parallax();
void drawDialogBox();
void initDialogBox();
void initChar();
void updateCutScene();


