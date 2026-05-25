	db DEX_DRATINI ; pokedex id

	db  66,  89,  70,  55,  55 ; 335/ 390
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +25, +25,  25,  +5,  +5 = +85/ +90

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 67 ; base exp

	INCBIN "gfx/pokemon/front/dratini.pic", 0, 1 ; sprite dimensions
	dw DratiniPicFront, DratiniPicBack

	db WRAP, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, FLAMETHROWER, BODY_SLAM,  TAKE_DOWN,  DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         DRAGON_RAGE,  \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         \
	     THUNDER_WAVE, SUBSTITUTE,   SHOCK_WAVE,   SURF
	; end

	db 0 ; padding
