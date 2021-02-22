; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

lorom
;!ROMVer = $0000						; Note: This is set within the batch script
!MSPM_U = $0001
!MSPM_E = $0002

org $008000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl TilemapPointersStart,(TilemapPointersEnd-TilemapPointersStart)/$0C
	dl PalettePointersStart,(PalettePointersEnd-PalettePointersStart)/$0C
	dl GarbageDataPointersStart,(GarbageDataPointersEnd-GarbageDataPointersStart)/$0C
	dl SPCDataPointersStart,(SPCDataPointersEnd-SPCDataPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	dl $8192C2,$81A3C1,GFX_Sprites,GFX_SpritesEnd
	dl $81A3C1,$81AB07,GFX_MazeTiles,GFX_MazeTilesEnd
	dl $81AB07,$81AFF8,GFX_MainFont,GFX_MainFontEnd
	dl $81AFF8,$81BC3D,GFX_MsPacManLogo,GFX_MsPacManLogoEnd
	dl $81BEFD,$81C430,GFX_CutsceneTiles,GFX_CutsceneTilesEnd
	dl $82CFF0,$82D49D,GFX_Clapboard,GFX_ClapboardEnd
	dl $82D49D,$82D982,GFX_HeartSprites,GFX_HeartSpritesEnd
	dl $82D982,$82DFB7,GFX_Stork,GFX_StorkEnd
	dl $82DFB7,$82E300,GFX_UnknownPacManSprites,GFX_UnknownPacManSpritesEnd
	dl $848000,$858A83,GFX_TitleScreen,GFX_TitleScreenEnd
	dl $859383,$85A01F,GFX_DigitalEclipseLogo,GFX_DigitalEclipseLogoEnd
	dl $85A91F,$85D22A,GFX_WilliamsLogo,GFX_WilliamsLogoEnd
	dl $868000,$8782CE,GFX_TheEndScreen,GFX_TheEndScreenEnd
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

TilemapPointersStart:
	dl $818000,$8192C2,TM_MazeLayouts,TM_MazeLayoutsEnd
	dl $81BD3D,$81BEFD,TM_MsPacManLogo,TM_MsPacManLogoEnd
	dl $858A83,$859183,TM_TitleScreen,TM_TitleScreenEnd
	dl $85A01F,$85A71F,TM_DigitalEclipseLogoScreen,TM_DigitalEclipseLogoScreenEnd
	dl $85D22A,$85D92A,TM_WilliamsLogoScreen,TM_WilliamsLogoScreenEnd
	dl $8782CE,$8789CE,TM_TheEndScreen,TM_TheEndScreenEnd
TilemapPointersEnd:

;--------------------------------------------------------------------

PalettePointersStart:
	dl $81BC3D,$81BD3D,PAL_MsPacManLogo,PAL_MsPacManLogoEnd
	dl $859183,$859383,PAL_TitleScreen,PAL_TitleScreenEnd
	dl $85A71F,$85A91F,PAL_DigitalEclipseLogoScreen,PAL_DigitalEclipseLogoScreenEnd
	dl $85D92A,$85DB2A,PAL_WilliamsLogoScreen,PAL_WilliamsLogoScreenEnd
	dl $8789CE,$878BCE,PAL_TheEndScreen,PAL_TheEndScreenEnd
PalettePointersEnd:

;--------------------------------------------------------------------

GarbageDataPointersStart:
	dl $80FB06,$80FFB0,DATA_80FB06,DATA_80FB06End
	dl $81C430,$828000,DATA_81C430,DATA_81C430End
	dl $82E4B2,$838000,DATA_82E4B2,DATA_82E4B2End
	dl $83AF49,$848000,DATA_83AF49,DATA_83AF49End
	dl $85DB2A,$868000,DATA_85DB2A,DATA_85DB2AEnd
	dl $878BCE,$888000,DATA_878BCE,DATA_878BCEEnd
GarbageDataPointersEnd:

;--------------------------------------------------------------------

SPCDataPointersStart:
	dl $828342,$82CFF0,DATA_828342,DATA_828342End
	dl $83A389,$83A43F,DATA_83A389,DATA_83A389End
	dl $83A43F,$83AF49,DATA_83A43F,DATA_83A43FEnd
SPCDataPointersEnd:

;--------------------------------------------------------------------

GFX_Sprites:
	db "GFX_Sprites.bin"
GFX_SpritesEnd:
GFX_MazeTiles:
	db "GFX_MazeTiles.bin"
GFX_MazeTilesEnd:
GFX_MainFont:
	db "GFX_MainFont.bin"
GFX_MainFontEnd:
GFX_MsPacManLogo:
	db "GFX_MsPacManLogo.bin"
GFX_MsPacManLogoEnd:
GFX_CutsceneTiles:
	db "GFX_CutsceneTiles.bin"
GFX_CutsceneTilesEnd:
GFX_Clapboard:
	db "GFX_Clapboard.bin"
GFX_ClapboardEnd:
GFX_HeartSprites:
	db "GFX_HeartSprites.bin"
GFX_HeartSpritesEnd:
GFX_Stork:
	db "GFX_Stork.bin"
GFX_StorkEnd:
GFX_UnknownPacManSprites:
	db "GFX_UnknownPacManSprites.bin"
GFX_UnknownPacManSpritesEnd:
GFX_TitleScreen:
	db "GFX_TitleScreen.bin"
GFX_TitleScreenEnd:
GFX_DigitalEclipseLogo:
	db "GFX_DigitalEclipseLogo.bin"
GFX_DigitalEclipseLogoEnd:
GFX_WilliamsLogo:
	db "GFX_WilliamsLogo.bin"
GFX_WilliamsLogoEnd:
GFX_TheEndScreen:
	db "GFX_TheEndScreen.bin"
GFX_TheEndScreenEnd:

;--------------------------------------------------------------------

TM_MazeLayouts:
	db "MazeLayouts.bin"
TM_MazeLayoutsEnd:
TM_MsPacManLogo:
	db "MsPacManLogo.bin"
TM_MsPacManLogoEnd:
TM_TitleScreen:
	db "TitleScreen.bin"
TM_TitleScreenEnd:
TM_DigitalEclipseLogoScreen:
	db "DigitalEclipseLogoScreen.bin"
TM_DigitalEclipseLogoScreenEnd:
TM_WilliamsLogoScreen:
	db "WilliamsLogoScreen.bin"
TM_WilliamsLogoScreenEnd:
TM_TheEndScreen:
	db "TheEndScreen.bin"
TM_TheEndScreenEnd:

;--------------------------------------------------------------------

PAL_MsPacManLogo:
	db "MsPacManLogo.bin"
PAL_MsPacManLogoEnd:
PAL_TitleScreen:
	db "TitleScreen.bin"
PAL_TitleScreenEnd:
PAL_DigitalEclipseLogoScreen:
	db "DigitalEclipseLogoScreen.bin"
PAL_DigitalEclipseLogoScreenEnd:
PAL_WilliamsLogoScreen:
	db "WilliamsLogoScreen.bin"
PAL_WilliamsLogoScreenEnd:
PAL_TheEndScreen:
	db "TheEndScreen.bin"
PAL_TheEndScreenEnd:

;--------------------------------------------------------------------

DATA_80FB06:
	db "DATA_80FB06.bin"
DATA_80FB06End:
DATA_81C430:
	db "DATA_81C430.bin"
DATA_81C430End:
DATA_82E4B2:
	db "DATA_82E4B2.bin"
DATA_82E4B2End:
DATA_83AF49:
	db "DATA_83AF49.bin"
DATA_83AF49End:
DATA_85DB2A:
	db "DATA_85DB2A.bin"
DATA_85DB2AEnd:
DATA_878BCE:
	db "DATA_878BCE.bin"
DATA_878BCEEnd:

;--------------------------------------------------------------------

DATA_828342:
	db "DATA_828342.bin"
DATA_828342End:
DATA_83A389:
	db "DATA_83A389.bin"
DATA_83A389End:
DATA_83A43F:
	db "DATA_83A43F.bin"
DATA_83A43FEnd:

;--------------------------------------------------------------------
