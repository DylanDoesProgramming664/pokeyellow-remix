	db DEX_DIGLETT ; pokedex id

	db  20,  70,  25,  95,  45 ; 255 / 300
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;  +10, +15,   0,   0,   0 = +25 / +35

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 81 ; base exp

	INCBIN "gfx/pokemon/front/diglett.pic", 0, 1 ; sprite dimensions
	dw DiglettPicFront, DiglettPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT
	; end

	db 0 ; padding
