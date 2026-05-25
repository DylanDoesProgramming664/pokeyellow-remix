	db DEX_CHARIZARD ; pokedex id

	db  78,  94,  78, 115,  95 ; 460/ 555
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0, +10,   0, +15, +10 = +35/ +21
	; TYPHLOSION =  78, 105,  78, 100, 109,  85 -> 555
	;               hp  atk  def  spd  sat  sde
	;                0, +21,   0,   0,   0,   0 =  +21

	db FIRE, DRAGON ; type
	db 45 ; catch rate
	db 209 ; base exp

	INCBIN "gfx/pokemon/front/charizard.pic", 0, 1 ; sprite dimensions
	dw CharizardPicFront, CharizardPicBack

	db SCRATCH, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, SWORDS_DANCE, FLAMETHROWER, MEGA_KICK, TOXIC,  BODY_SLAM, \
	     TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, RAGE,         DRAGON_RAGE,  EARTHQUAKE,   BULLDOZE,     \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         SHADOW_CLAW,  \
	     SUBSTITUTE,   CUT,          FLY,          STRENGTH,     RAZOR_WIND
	; end

	db 0 ; padding
