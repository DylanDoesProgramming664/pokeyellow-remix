	db DEX_MEOWTH ; pokedex id

	db  50,  55,  35,  90,  40 ; 270/ 310
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +10, +10,   0,   0,   0 = +20/ +20

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 69 ; base exp

	INCBIN "gfx/pokemon/front/meowth.pic", 0, 1 ; sprite dimensions
	dw MeowthPicFront, MeowthPicBack

	db SCRATCH, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    PAY_DAY,      RAGE,         THUNDERBOLT,  THUNDER,      \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   \
	     REST,         SHADOW_CLAW,  SUBSTITUTE,   SHOCK_WAVE,   CUT,          \
	     DIG
	; end

	db 0 ; padding
