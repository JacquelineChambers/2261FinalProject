

void initCutScene();

typedef struct {
	int row;
	int col;
	int width;
    int height;
    int x;
	int y;
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
#define BOXSIZE 22
#define SIDESIZE 2
#define NUMCORNERS 4
#define DESCRPLENGTH 6 

extern ALPHABET alphabet;
extern TEXT text[QUOTELENGTH];
extern BOX boxSide[SIDESIZE];
extern BOX boxCorner[NUMCORNERS];
extern BOX boxTop[BOXSIZE];
extern BOX boxBottom[BOXSIZE];
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
void initBoxEdgeTop(); 
void drawQuoteOne();
void drawBox();
void initBoxEdgeBottom();
void initQuoteTwo_setup();
void initQuoteTwo_letter();
void initQuoteThree_setup();
void initQuoteThree_letter();

/*
void initAlphabet() {
    alphabet.a = 0;
	alphabet.b = 1;
	alphabet.c = 2;
    alphabet.d = 3;
	alphabet.e = 4;
	alphabet.f = 5;
    alphabet.g = 6;
	alphabet.h = 7;
	alphabet.i = 8;
    alphabet.j = 9;
	alphabet.k = 10;
	alphabet.l = 11;
    alphabet.m = 12;
	alphabet.n = 13;
	alphabet.o = 14;
    alphabet.p = 15;
	alphabet.q = 16;
	alphabet.r = 17;
    alphabet.s = 18;
	alphabet.t = 19;
	alphabet.u = 20;
    alphabet.v = 21;
	alphabet.w = 22;
	alphabet.x = 23;
    alphabet.y = 24;
	alphabet.z = 25;  
    alphabet.space = 27;
}
*/

