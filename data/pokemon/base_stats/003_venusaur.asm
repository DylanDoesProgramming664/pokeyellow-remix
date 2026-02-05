	db DEX_VENUSAUR ; pokedex id

	db  84,  87,  90,  84, 105 ; 450 / 555
	;   hp  atk  def  spd  spc  Gen1 /Gen2
	;   +4,  +5,  +7,  +4,  +5 = +25 / +30

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp
	; STAT_EXP_EFFICIENCY = (450 * 7) / 208 = 15.0

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
