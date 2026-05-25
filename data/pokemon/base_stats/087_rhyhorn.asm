	db DEX_RHYHORN ; pokedex id

	db  90,  90, 100,  25,  30 ; 335/ 365
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;  +10,  +5,  +5,   0,   0 = +20/ +20

	db GROUND, ROCK ; type
	db 120 ; catch rate
	db 135 ; base exp

	INCBIN "gfx/pokemon/front/rhyhorn.pic", 0, 1 ; sprite dimensions
	dw RhyhornPicFront, RhyhornPicBack

	db HORN_ATTACK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, FLAMETHROWER, STONE_EDGE, BODY_SLAM, TAKE_DOWN,  DOUBLE_EDGE,  \
	     RAGE,         THUNDERBOLT,  THUNDER,      EARTHQUAKE,   BULLDOZE,     \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   \
	     SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,   SHOCK_WAVE,   \
	     STRENGTH
	; end

	db 0 ; padding
