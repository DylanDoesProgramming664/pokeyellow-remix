	db DEX_SPEAROW ; pokedex id

	db  44,  78,  34,  89,  35 ; 280/ 315
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;   +4, +18,  +4, +19,  +4 = +49/ +53
	; In Gen 2, Sp.ATK/Sp.DEF = 31/ 39

	db FLYING, FLYING ; type
	db 255 ; catch rate
	db 58 ; base exp

	INCBIN "gfx/pokemon/front/spearow.pic", 0, 1 ; sprite dimensions
	dw SpearowPicFront, SpearowPicBack

	db PECK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     SKY_ATTACK,   REST,         SUBSTITUTE,   FLY
	; end

	db 0 ; padding
