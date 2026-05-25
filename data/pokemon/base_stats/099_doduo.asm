	db DEX_DODUO ; pokedex id

	db  35,  85,  45,  85,  35 ; 285/ 320
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0,   0, +10,   0 = +10/ +10

	db NORMAL, FLYING ; type
	db 190 ; catch rate
	db 96 ; base exp

	INCBIN "gfx/pokemon/front/doduo.pic", 0, 1 ; sprite dimensions
	dw DoduoPicFront, DoduoPicBack

	db PECK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAZOR_WIND,   \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SKULL_BASH,   REST,         TRI_ATTACK,   SUBSTITUTE,   FLY
	; end

	db 0 ; padding
