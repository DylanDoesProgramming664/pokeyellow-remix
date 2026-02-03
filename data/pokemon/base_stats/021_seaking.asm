	db DEX_SEAKING ; pokedex id

	db  80,  92,  65,  68,  80 ; 385 / 465
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;    0,   0,   0,   0,   0 =   0 / +15

	db WATER, WATER ; type
	db 60 ; catch rate
	db 170 ; base exp
    ; STAT_EXP_EFFICIENCY = (385 * 7) / 170 = 15.9

	INCBIN "gfx/pokemon/front/seaking.pic", 0, 1 ; sprite dimensions
	dw SeakingPicFront, SeakingPicBack

	db TAIL_WHIP, BUBBLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   \
	     REST,         SUBSTITUTE,   SURF,   SWORDS_DANCE
	; end

	db 0 ; padding
