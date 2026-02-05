	db DEX_PIDGEOTTO ; pokedex id

	db  63,  62,  55,  75,  50 ; 305 / 355
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;    0,  +2,   0,  +4,   0 =  +6 /  +6

	db NORMAL, FLYING ; type
	db 120 ; catch rate
	db 113 ; base exp
	; STAT_EXP_EFFICIENCY = (305 * 7) / 113 = 18.9

	INCBIN "gfx/pokemon/front/pidgeotto.pic", 0, 1 ; sprite dimensions
	dw PidgeottoPicFront, PidgeottoPicBack

	db GUST, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT,        SKY_ATTACK,   REST,         SUBSTITUTE,   FLY
	; end

	db 0 ; padding
