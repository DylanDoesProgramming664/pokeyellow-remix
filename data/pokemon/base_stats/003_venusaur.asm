	db DEX_VENUSAUR ; pokedex id

	db  83,  86,  88,  83, 105 ; 445 / 550
	;   hp  atk  def  spd  spc   Gen1/Gen2-5
    ;   +3,  +4,  +5,  +3,  +5 = +20 / +25

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp
    ; STAT_EXP_EFFICIENCY = (445 * 7) / 208 = 15.0

	INCBIN "gfx/pokemon/front/venusaur.pic", 0, 1 ; sprite dimensions
	dw VenusaurPicFront, VenusaurPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         REST,         SUBSTITUTE,   \
	     CUT,		   ROCK_SLIDE,   EARTHQUAKE
	; end

	db 0 ; padding
