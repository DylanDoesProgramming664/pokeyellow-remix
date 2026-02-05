	db DEX_RATICATE ; pokedex id

	db  55,  82,  60,  98,  70 ; 365 / 435
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;    0,  +1,   0,  +1, +20 = +22 / +22

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp
	; STAT_EXP_EFFICIENCY = (365 * 7) / 116 = __._

	INCBIN "gfx/pokemon/front/raticate.pic", 0, 1 ; sprite dimensions
	dw RaticatePicFront, RaticatePicBack

	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE,	TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     THUNDERBOLT,  THUNDER,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
