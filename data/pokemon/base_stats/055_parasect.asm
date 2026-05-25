	db DEX_PARASECT ; pokedex id

	db 120,  95,  80,  30,  80 ; 405/ 485
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +60,   0,   0,   0,   0 = +60/ +80
	; MAGCARGO = 115,  50, 120,  30,  90,  80 -> 485
	;             hp  atk  def  spd  sat  sde
	;            +55,   0,   0,   0,   0,   0 =  +55

	db BUG, GRASS ; type
	db 75 ; catch rate
	db 128 ; base exp

	INCBIN "gfx/pokemon/front/parasect.pic", 0, 1 ; sprite dimensions
	dw ParasectPicFront, ParasectPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    DIG,          \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   \
	     REST,         SUBSTITUTE,   CUT
	; end

	db 0 ; padding
