	db DEX_DIGLETT ; pokedex id

	db  20,  75,  25,  95,  45 ; 260/ 305
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +10, +20,   0,   0,   0 = +30/ +40

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 81 ; base exp

	INCBIN "gfx/pokemon/front/diglett.pic", 0, 1 ; sprite dimensions
	dw DiglettPicFront, DiglettPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     EARTHQUAKE,   BULLDOZE,     DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         FLASH_CANNON, REST,         SHADOW_CLAW,  ROCK_SLIDE,   \
	     SUBSTITUTE,   CUT
	; end

	db 0 ; padding
