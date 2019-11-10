
//{{BLOCK(bgTest)

//======================================================================
//
//	bgTest, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 128 + 2048 = 2688
//
//	Time-stamp: 2019-11-09, 15:36:50
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGTEST_H
#define GRIT_BGTEST_H

#define bgTestTilesLen 128
extern const unsigned short bgTestTiles[64];

#define bgTestMapLen 2048
extern const unsigned short bgTestMap[1024];

#define bgTestPalLen 512
extern const unsigned short bgTestPal[256];

#endif // GRIT_BGTEST_H

//}}BLOCK(bgTest)
