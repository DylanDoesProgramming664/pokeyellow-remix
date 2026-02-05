	db DEX_PIDGEOT ; pokedex id

	db  83,  82,  75, 105,  70 ; 415 / 485
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;    0,  +2,   0, +14,   0 = +16 / +16

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp
	; STAT_EXP_EFFICIENCY = (415 * 7) / 172 = 16.9

	INCBIN "gfx/pokemon/front/pidgeot.pic", 0, 1 ; sprite dimensions
	dw PidgeotPicFront, PidgeotPicBack

	db GUST, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SWIFT,        SKY_ATTACK,   REST,         SUBSTITUTE,   \
	     FLY
	; end

	db 0 ; padding
