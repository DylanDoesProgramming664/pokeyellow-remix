	db DEX_VENUSAUR ; pokedex id

	db  80,  86,  89,  80, 110 ; 445/ 555
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,  +4,  +6,   0, +10 = +20/ +30
	; MEGANIUM =  90,  82, 110,  80,  83, 110 -> 555
	;             hp  atk  def  spd  sat  sde
	;            +10,   0, +10,   0,   0, +10 =  +30

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp

	INCBIN "gfx/pokemon/front/venusaur.pic", 0, 1 ; sprite dimensions
	dw VenusaurPicFront, VenusaurPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    BULLDOZE,     \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         REST,         \
	     SUBSTITUTE,   CUT,          ROCK_SLIDE,   EARTHQUAKE
	; end

	db 0 ; padding
