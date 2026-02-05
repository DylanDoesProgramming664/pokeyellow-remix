	db DEX_BEEDRILL ; pokedex id

	db  65,  90,  40,  76,  67 ; 338 / 405
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;    0, +10,   0,  +1, +22 = +33 / +20

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp
	; STAT_EXP_EFFICIENCY = (338 * 7) / 159 = 14.9

	INCBIN "gfx/pokemon/front/beedrill.pic", 0, 1 ; sprite dimensions
	dw BeedrillPicFront, BeedrillPicBack

	db STRING_SHOT, HARDEN, POISON_STING, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
	     CUT
	; end

	db 0 ; padding
