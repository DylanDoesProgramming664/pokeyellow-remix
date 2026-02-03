	db DEX_PIKACHU ; pokedex id

	db  60,  55,  50,  90,  70 ; 325 / 395
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;  +25,   0, +10,   0, +20 = +55 / +75

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 82 ; base exp
    ; STAT_EXP_EFFICIENCY = (BST * 7) / EXP = 27.7

	INCBIN "gfx/pokemon/front/pikachu.pic", 0, 1 ; sprite dimensions
	dw PikachuPicFront, PikachuPicBack

	db THUNDERSHOCK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  PAY_DAY,      SUBMISSION,   SEISMIC_TOSS, RAGE,         \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, \
	     SUBSTITUTE,   CUT,          SURF,         STRENGTH,     FLASH
	; end

	db 0 ; padding
