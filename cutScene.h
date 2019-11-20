

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
    int x;
	int y;
} BOX;

typedef struct {
	int a;
	int b;
	int c;
    int d;
    int e;
	int f;
	int g;
	int h;
	int i;
	int j;
	int k;
	int l;
	int m;
	int n;
	int o;
	int p;
	int q;
	int r;
	int s;
	int t;
	int u;
	int v;
	int w;
	int x;
	int y;
	int z;
	int space;

} ALPHABET;

typedef struct {
	int letter;
	int row;
	int col;
} TEXT;

#define QUOTELENGTH 22
#define BOXSIZE 25
#define SIDESIZE 2
#define NUMCORNERS 4

extern ALPHABET alphabet;
extern TEXT text[QUOTELENGTH];
extern BOX boxSide[SIDESIZE];
extern BOX boxCorner[NUMCORNERS];
extern BOX boxCenter[BOXSIZE];
//extern BOX boxCenter[3];
extern NOOT noot;

void initCharacter();
void drawCutScene();
void parallax();
void drawDialogBox();
void initDialogBox();
void initChar();
void initBoxCorner();
void drawCharacter();
void initAlphabet();
void updateCutScene();
void initBoxLeftSide();
void initBoxRightSide();
void initQuoteOne_letter();
void initQuoteOne_setup();
void drawQuoteOne();
void drawBox();


