	db DEX_PIDGEY ; pokedex id

	db  40,  47,  40,  58,  35 ; 220 / 255
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;    0,  +2,   0,  +2,   0 =  +4 /  +4
    ; (220 * 7) / (55 * L) = (28 / L)

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 55 ; base exp
    ; STAT_EXP_EFFICIENCY = (220 * 7) /  55 = 28.0

	INCBIN "gfx/pokemon/front/pidgey.pic", 0, 1 ; sprite dimensions
	dw PidgeyPicFront, PidgeyPicBack

	db GUST, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT,        SKY_ATTACK,   REST,         SUBSTITUTE,   FLY
	; end

	db 0 ; padding
