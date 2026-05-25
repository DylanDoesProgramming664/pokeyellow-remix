	db DEX_NINETALES ; pokedex id

	db  73,  76,  74, 104, 104 ; 431/ 535
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0,  -1,  +4,  +4 =  +7/ +30

	db FIRE, GHOST ; type
	db 75 ; catch rate
	db 178 ; base exp

	INCBIN "gfx/pokemon/front/ninetales.pic", 0, 1 ; sprite dimensions
	dw NinetalesPicFront, NinetalesPicBack

	db EMBER, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm FLAMETHROWER, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM,   \
	     RAGE,   SOLARBEAM,    DIG,      MIMIC,   DOUBLE_TEAM,   REFLECT,      \
	     BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         \
	     SUBSTITUTE,   SHADOW_CLAW
	; end

	db 0 ; padding
