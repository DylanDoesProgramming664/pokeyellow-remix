	db DEX_BLASTOISE ; pokedex id

	db  79,  83, 115,  78, 100 ; 455/ 555
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,   0, +15,   0, +15 = +30/ +25
	; FERALIGATR =  85, 130, 100,  78,  83,  79 -> 555
	;               hp  atk  def  spd  sat  sde
	;                0, +25,   0,   0,   0,   0 =  +25

	db WATER, STEEL ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/blastoise.pic", 0, 1 ; sprite dimensions
	dw BlastoisePicFront, BlastoisePicBack

	db POUND, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   BULLDOZE,     DIG,          MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   \
	     SURF,         STRENGTH
	; end

	db 0 ; padding
