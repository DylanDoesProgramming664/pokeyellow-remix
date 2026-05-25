	db DEX_POLIWRATH ; pokedex id

	db  90,  90, 100,  90,  80 ; 450/ 530
	;   hp  atk  def  spd  spc  Gen1/Gen2
	;    0,  +5,  +5, +20, +10 = +40/ +30
	; In Gen 2, Sp.ATK/Sp.DEF = 70/ 90
	; POLITOED =  90,  70,  90,  90,  90, 100 -> 530
	;             hp  atk  def  spd  sat  sdf

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/poliwrath.pic", 0, 1 ; sprite dimensions
	dw PoliwrathPicFront, PoliwrathPicBack

	db HYPNOSIS, BODY_SLAM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   BULLDOZE,     PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         METRONOME,    SKULL_BASH,   DREAM_EATER,  REST,              \
	     PSYWAVE,      SUBSTITUTE,   SURF,         STRENGTH,     DIG
	; end

	db 0 ; padding
