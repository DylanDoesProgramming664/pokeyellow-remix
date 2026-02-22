MtMoonB2FScript_ApplyPikachuMovementData:
	ld a, [wd472]
	bit 7, a
	ret z
	ld a, [wWalkBikeSurfState]
	and a
	ret nz

	push hl
	push bc
	callfar GetPikachuFacingDirectionAndReturnToE
	pop bc
	pop hl
	ld a, b
	cp e
	ret nz

	push hl
	ld a, [wUpdateSpritesEnabled]
	push af
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	callfar LoadPikachuShadowIntoVRAM
	pop af
	ld [wUpdateSpritesEnabled], a
	pop hl
	call ApplyPikachuMovementData
	ret


MtMoonB2FHideRocketJerry:
; code similar to this appears in a lot of banks; this particular
; one is called after you beat the Rocket Grunt Jerry in MtMoon.
; the screen then fades out, he disappears, and fades back in
	call GBFadeOutToBlack
	ld a, HS_MT_MOON_B2F_ROCKET_JERRY
	ld [wMissableObjectIndex], a
	predef HideObject
	call GBFadeInFromBlack
	ret
