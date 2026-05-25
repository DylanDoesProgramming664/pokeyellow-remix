	db DEX_GYARADOS ; pokedex id

	db  95, 125,  79,  81, 100 ; 480/ 580
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0,   0,   0,   0 =   0/ +40

	db WATER, FLYING ; type
	db 45 ; catch rate
	db 214 ; base exp

	INCBIN "gfx/pokemon/front/gyarados.pic", 0, 1 ; sprite dimensions
	dw GyaradosPicFront, GyaradosPicBack

	db TACKLE, BUBBLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         FIRE_BLAST,   SKULL_BASH,   REST,         \
	     SUBSTITUTE,   SURF,         STRENGTH,     EARTHQUAKE,   BULLDOZE,     \
	     STONE_EDGE,   RAZOR_WIND,   THUNDER_WAVE, COUNTER,      FLASH,        \
         SHOCK_WAVE
	; end

	db 0 ; padding
