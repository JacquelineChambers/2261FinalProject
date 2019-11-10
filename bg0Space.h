
//{{BLOCK(bg0Space)

//======================================================================
//
//	bg0Space, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 118 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 3776 + 4096 = 8384
//
//	Time-stamp: 2019-11-09, 21:47:49
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG0SPACE_H
#define GRIT_BG0SPACE_H

#define bg0SpaceTilesLen 3776
extern const unsigned short bg0SpaceTiles[1888];

#define bg0SpaceMapLen 4096
extern const unsigned short bg0SpaceMap[2048];

#define bg0SpacePalLen 512
extern const unsigned short bg0SpacePal[256];

#endif // GRIT_BG0SPACE_H

//}}BLOCK(bg0Space)
