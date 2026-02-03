	db DEX_BUTTERFREE ; pokedex id

	db  60,  45,  50,  70,  90 ; 315 / 405
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;    0,   0,   0,   0, +10 = +10 / +10

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 160 ; base exp
    ; STAT_EXP_EFFICIENCY = (315 * 7) / 160 = 13.8

	INCBIN "gfx/pokemon/front/butterfree.pic", 0, 1 ; sprite dimensions
	dw ButterfreePicFront, ButterfreePicBack

	db TACKLE, HARDEN, STRING_SHOT, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    PSYCHIC_M,    \
	     TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT,        REST,         PSYWAVE,      SUBSTITUTE,   FLASH
	; end

	db 0 ; padding
