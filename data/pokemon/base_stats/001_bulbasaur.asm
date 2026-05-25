	db DEX_BULBASAUR ; pokedex id

	db  45,  51,  54,  45,  75 ; 270/ 345
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,  +2,  +5,   0, +10 = +17/ +27
	; CHIKORITA =  55,  47,  75,  45,  48,  75 -> 345
	;              hp  atk  def  spd  sat  sde
	;             +10,  -2, +10,   0,  -1, +10 =  +27

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/bulbasaur.pic", 0, 1 ; sprite dimensions
	dw BulbasaurPicFront, BulbasaurPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         REST,         SUBSTITUTE,   CUT
	; end

	db 0 ; padding
