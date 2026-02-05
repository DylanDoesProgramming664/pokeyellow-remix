	db DEX_NINETALES ; pokedex id

	db  74,  76,  76, 103, 103 ; 432 / 535
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;   +1,   0,  +1,  +3,  +3 =  +8 / +30

	db FIRE, GHOST ; type
	db 75 ; catch rate
	db 178 ; base exp
	; STAT_EXP_EFFICIENCY = (432 * 7) / 178 = 17.0

	INCBIN "gfx/pokemon/front/ninetales.pic", 0, 1 ; sprite dimensions
	dw NinetalesPicFront, NinetalesPicBack

	db EMBER, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLAMETHROWER, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM,   \
	     RAGE,   SOLARBEAM,    DIG,      MIMIC,   DOUBLE_TEAM,   REFLECT,      \
	     BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         \
	     SUBSTITUTE
	; end

	db 0 ; padding
