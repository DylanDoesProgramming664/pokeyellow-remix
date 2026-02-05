	db DEX_RAICHU ; pokedex id

	db  70,  90,  65, 110,  90 ; 425 / 515
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;  +10,   0, +10, +10,   0 = +30 / +30

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp
	; STAT_EXP_EFFICIENCY = (425 * 7) / 122 = 24.4

	INCBIN "gfx/pokemon/front/raichu.pic", 0, 1 ; sprite dimensions
	dw RaichuPicFront, RaichuPicBack

	db THUNDERSHOCK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   PAY_DAY,      SUBMISSION,   SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SWIFT,        SKULL_BASH,   REST,         \
	     THUNDER_WAVE, SUBSTITUTE,   CUT,          SURF,         STRENGTH,     \
	FLASH
	; end

	db 0 ; padding
