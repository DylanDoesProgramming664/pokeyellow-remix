	db DEX_SPEAROW ; pokedex id

	db  45,  63,  35,  75,  36 ; 254 / 290
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;   +5,  +3,  +5,  +5,  +5 = +23 / +28
	; In Gen II+, Sp.ATK / Sp.DEF = 31 / 41

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 58 ; base exp
	; STAT_EXP_EFFICIENCY = (239 * 7) /  58 = 28.8

	INCBIN "gfx/pokemon/front/spearow.pic", 0, 1 ; sprite dimensions
	dw SpearowPicFront, SpearowPicBack

	db PECK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,       TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     SKY_ATTACK,   REST,         SUBSTITUTE,   FLY
	; end

	db 0 ; padding
