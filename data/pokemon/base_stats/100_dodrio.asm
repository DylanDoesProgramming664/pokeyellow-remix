	db DEX_DODRIO ; pokedex id

	db  60, 110,  70, 110,  60 ; 410 / 470
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;    0,   0,   0, +10,   0 = +10 / +10

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 158 ; base exp

	INCBIN "gfx/pokemon/front/dodrio.pic", 0, 1 ; sprite dimensions
	dw DodrioPicFront, DodrioPicBack

	db PECK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SKULL_BASH,   REST,         TRI_ATTACK,                 \
	     SUBSTITUTE,   FLY
	; end

	db 0 ; padding
