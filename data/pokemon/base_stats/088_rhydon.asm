	db DEX_RHYDON ; pokedex id

	db 115, 135, 125,  40,  45 ; 460/ 505
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +10,  +5,  +5,   0,   0 = +20/ +20
	; RHYPERIOR = 125, 145, 135,  40,  55,  55 -> 555
	;              hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 60 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/rhydon.pic", 0, 1 ; sprite dimensions
	dw RhydonPicFront, RhydonPicBack

	db HORN_ATTACK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, FLAMETHROWER, MEGA_KICK, TOXIC, STONE_EDGE, BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, RAGE,         THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     BULLDOZE,     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     FIRE_BLAST,   SKULL_BASH,   REST,         SHADOW_CLAW,  ROCK_SLIDE,   \
	     SUBSTITUTE,   SHOCK_WAVE,   SURF,         STRENGTH
	; end

	db 0 ; padding
