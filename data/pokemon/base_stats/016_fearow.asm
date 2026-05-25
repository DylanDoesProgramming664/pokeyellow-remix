	db DEX_FEAROW ; pokedex id

	db  69, 108,  69, 119,  65 ; 430/ 495
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;   +4, +18,  +4, +19,  +4 = +49/ +53
	; In Gen 2, Sp.ATK/Sp.DEF = 61/ 69

	db FLYING, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp

	INCBIN "gfx/pokemon/front/fearow.pic", 0, 1 ; sprite dimensions
	dw FearowPicFront, FearowPicBack

	db PECK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,    TOXIC,        TAKE_DOWN,     \
		 DOUBLE_EDGE,   HYPER_BEAM,   RAGE,            MIMIC,        DOUBLE_TEAM,   \
	     BIDE,          SWIFT,        SKY_ATTACK,      REST,         SUBSTITUTE,    \
		 FLY

	; end

	db 0 ; padding
