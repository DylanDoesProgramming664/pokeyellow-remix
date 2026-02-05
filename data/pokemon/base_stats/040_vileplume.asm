	db DEX_VILEPLUME ; pokedex id

	db  90,  80,  85,  50, 110 ; 415 / 525
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;  +15,   0,   0,   0, +10 = +25 / +45

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 184 ; base exp
	; STAT_EXP_EFFICIENCY = (415 * 7) / 184 = 15.8

	INCBIN "gfx/pokemon/front/vileplume.pic", 0, 1 ; sprite dimensions
	dw VileplumePicFront, VileplumePicBack

	db TACKLE, STUN_SPORE, SLEEP_POWDER, ACID ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         REST,         SUBSTITUTE,   \
	     CUT
	; end

	db 0 ; padding
