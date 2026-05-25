	db DEX_DRAGONAIR ; pokedex id

	db  81, 104,  85,  70,  70 ; 410/ 480
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +20, +20, +20,   0,   0 = +60/ +60

	db DRAGON, DRAGON ; type
	db 27 ; catch rate
	db 144 ; base exp

	INCBIN "gfx/pokemon/front/dragonair.pic", 0, 1 ; sprite dimensions
	dw DragonairPicFront, DragonairPicBack

	db WRAP, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,  FLAMETHROWER, STONE_EDGE,   BODY_SLAM,    TAKE_DOWN,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         \
	     DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   \
	     REST,         THUNDER_WAVE, SUBSTITUTE,   SHOCK_WAVE,   SURF
	; end

	db 0 ; padding
