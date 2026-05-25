	db DEX_IVYSAUR ; pokedex id

	db  60,  66,  69,  60,  90 ; 345/ 435
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,  +4,  +6,   0, +10 = +20/ +30
	; BAYLEEF =  70,  62,  90,  60,  63,  90 -> 435
	;            hp  atk  def  spd  sat  sde
	;           +10,   0, +10,   0,   0, +10 =  +30

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 141 ; base exp

	INCBIN "gfx/pokemon/front/ivysaur.pic", 0, 1 ; sprite dimensions
	dw IvysaurPicFront, IvysaurPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         REST,         SUBSTITUTE,   CUT
	; end

	db 0 ; padding
