
//{{BLOCK(bg0Space)

//======================================================================
//
//	bg0Space, 768x256@4, 
//	+ palette 256 entries, not compressed
//	+ 192 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 96x32 
//	Total size: 512 + 6144 + 6144 = 12800
//
//	Time-stamp: 2019-12-01, 12:32:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG0SPACE_H
#define GRIT_BG0SPACE_H

#define bg0SpaceTilesLen 6144
extern const unsigned short bg0SpaceTiles[3072];

#define bg0SpaceMapLen 6144
extern const unsigned short bg0SpaceMap[3072];

#define bg0SpacePalLen 512
extern const unsigned short bg0SpacePal[256];

#endif // GRIT_BG0SPACE_H

//}}BLOCK(bg0Space)
