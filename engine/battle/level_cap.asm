GetLevelCap:
	ld a, [wGameStage] ; Check if player has beat the game
	and a
	ld b, 100
	jr nz, .next1
	call GetBadgesObtained
	ld a, [wNumSetBits]
	cp 8
	ld b, 65 ; Jolteon/Flareon/Vaporeon's level
	jr nc, .next1
	cp 7
	ld b, 55 ; Rhydon's level
	jr nc, .next1
	cp 6
	ld b, 53 ; Magmar's level
	jr nc, .next1
	cp 5
	ld b, 50 ; Alakazam's level
	jr nc, .next1
    cp 4
	ld b, 43 ; Venomoth's level
	jr nc, .next1
	cp 3
	ld b, 37 ; Vileplume's level
	jr nc, .next1
	cp 2
    ld b, 26 ; Bit below Raichu's level
	jr nc, .next1
	cp 1
	ld b, 22 ; Starmie's level
	jr nc, .next1
	ld b, 15 ; Onix's level
.next1
    ld a, b
    ld [wLevelCap], a
