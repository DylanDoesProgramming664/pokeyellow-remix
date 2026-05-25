	db DEX_LAPRAS ; pokedex id

	db 140,  85,  90,  60, 100 ; 475/ 575
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +10,   0, +10,   0,  +5 = +25/ +40

	db WATER, ICE ; type
	db 45 ; catch rate
	db 219 ; base exp

	INCBIN "gfx/pokemon/front/lapras.pic", 0, 1 ; sprite dimensions
	dw LaprasPicFront, LaprasPicBack

	db WATER_GUN, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  THUNDER_WAVE, \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     RAGE,         SOLARBEAM,    DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SKULL_BASH,   REST,         PSYWAVE,      SUBSTITUTE,   SHOCK_WAVE,   \
	     SURF,         STRENGTH,     BULLDOZE
	; end

	db 0 ; padding
