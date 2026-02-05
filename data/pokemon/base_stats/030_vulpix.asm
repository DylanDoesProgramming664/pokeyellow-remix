	db DEX_VULPIX ; pokedex id

	db  39,  41,  41,  68,  68 ; 257 / 325
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;   +1,   0,  +1,  +3,  +3 =  +8 / +26

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 63 ; base exp
	; STAT_EXP_EFFICIENCY = (257 * 7) /  63 = 28.6

	INCBIN "gfx/pokemon/front/vulpix.pic", 0, 1 ; sprite dimensions
	dw VulpixPicFront, VulpixPicBack

	db EMBER, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, FLAMETHROWER, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE,  RAGE,        \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db 0 ; padding
