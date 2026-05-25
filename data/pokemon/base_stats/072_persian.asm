	db DEX_PERSIAN ; pokedex id

	db  75,  80,  60, 115,  65 ; 395/ 460
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +10, +10,   0,   0,   0 = +20/ +20

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 148 ; base exp

	INCBIN "gfx/pokemon/front/persian.pic", 0, 1 ; sprite dimensions
	dw PersianPicFront, PersianPicBack

	db SCRATCH, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    HYPER_BEAM,   PAY_DAY,      RAGE,         THUNDERBOLT,  \
	     THUNDER,      MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SHADOW_CLAW,  SUBSTITUTE,   SHOCK_WAVE,   \
	     CUT,          DIG
	; end

	db 0 ; padding
