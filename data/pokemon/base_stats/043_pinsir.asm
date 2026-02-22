	db DEX_PINSIR ; pokedex id

	db  75, 125, 100,  85,  70 ; 455 / 525
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;  +10,   0,   0,   0, +15 = +25 / +25

	db BUG, NORMAL ; type
	db 45 ; catch rate
	db 200 ; base exp
	; STAT_EXP_EFFICIENCY = (445 * 7) / 200 = 15.6

	INCBIN "gfx/pokemon/front/pinsir.pic", 0, 1 ; sprite dimensions
	dw PinsirPicFront, PinsirPicBack

	db VICEGRIP, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, RAGE,         MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         REST,         SUBSTITUTE,   CUT,          \
	     STRENGTH
	; end

	db 0 ; padding
