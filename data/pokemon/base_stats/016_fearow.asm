	db DEX_FEAROW ; pokedex id

	db  65,  95,  65, 108,  61 ; 394 / 455
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;    0,  +5,   0,  +8,   0 = +13 / +13

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp
	; STAT_EXP_EFFICIENCY = (394 * 7) / 162 = 17.0

	INCBIN "gfx/pokemon/front/fearow.pic", 0, 1 ; sprite dimensions
	dw FearowPicFront, FearowPicBack

	db PECK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,     TOXIC,     TAKE_DOWN,     \
		 DOUBLE_EDGE,	HYPER_BEAM,   RAGE,         MIMIC,       DOUBLE_TEAM,   \
	     BIDE,		SWIFT,        SKY_ATTACK,      REST,         SUBSTITUTE,    \
		 FLY

	; end

	db 0 ; padding
