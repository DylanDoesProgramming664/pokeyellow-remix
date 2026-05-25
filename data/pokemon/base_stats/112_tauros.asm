	db DEX_TAUROS ; pokedex id

	db  75, 100,  95, 110,  70 ; 450/ 520
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0,   0,   0,   0 =   0/ +30
	; MILTANK = 105,  90, 115, 100,  40,  70 -> 520
	;            hp  atk  def  spd  sat  sde

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/tauros.pic", 0, 1 ; sprite dimensions
	dw TaurosPicFront, TaurosPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm FLAMETHROWER, TOXIC, STONE_EDGE, BODY_SLAM, TAKE_DOWN,  DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         THUNDERBOLT,  \
	     THUNDER,      EARTHQUAKE,   BULLDOZE,     MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         FIRE_BLAST,   SKULL_BASH,   REST,         SUBSTITUTE,   \
	     SHOCK_WAVE,   STRENGTH
	; end

	db 0 ; padding
