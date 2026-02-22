PewterPokecenterPrintCooltrainerFText::
	ld hl, .text
	call PrintText
	ret

.text
	text_far _PewterPokecenterText3
	text_end

PewterJigglypuff::
	ld a, TRUE
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, .Text
	call PrintText

	call StopAllMusic
	ld c, 32
	call DelayFrames

	ld hl, .FacingDirections
	ld de, wJigglypuffFacingDirections
	ld bc, .FacingDirectionsEnd - .FacingDirections
	call CopyData

	ld a, [wSprite03StateData1ImageIndex]
	ld hl, wJigglypuffFacingDirections
.findMatchingFacingDirectionLoop
	cp [hl]
	inc hl
	jr nz, .findMatchingFacingDirectionLoop
	dec hl

	push hl
	ld c, BANK(Music_JigglypuffSong)
	ld a, MUSIC_JIGGLYPUFF_SONG
	call PlayMusic
	pop hl

.spinMovementLoop
	ld a, [hl]
	ld [wSprite03StateData1ImageIndex], a
; rotate the array
	push hl
	ld hl, wJigglypuffFacingDirections
	ld de, wJigglypuffFacingDirections - 1
	ld bc, .FacingDirectionsEnd - .FacingDirections
	call CopyData
	ld a, [wJigglypuffFacingDirections - 1]
	ld [wJigglypuffFacingDirections + 3], a
	pop hl
	ld c, 24
	call DelayFrames
	ld a, [wChannelSoundIDs]
	ld b, a
	ld a, [wChannelSoundIDs + CHAN2]
	or b
	jr nz, .spinMovementLoop

	ld c, 48
	call DelayFrames
	call PlayDefaultMusic
	ld a, [wd472]
	bit 7, a
	ret z
	callfar CheckPikachuFaintedOrStatused
	ret c
	call DisablePikachuFollowingPlayer
	ret

.Text:
	text_far _PewterPokecenterJigglypuffText
	text_end

.FacingDirections:
	db $40 | SPRITE_FACING_DOWN
	db $40 | SPRITE_FACING_LEFT
	db $40 | SPRITE_FACING_UP
	db $40 | SPRITE_FACING_RIGHT
.FacingDirectionsEnd:

PewterPokecenterSalesman::
	CheckEvent EVENT_BOUGHT_PEWTERPOKECENTER_SALESMAN_POKEMON, 1
	jp c, .alreadyBought
	ld hl, .IGotADealText
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .choseNo
	xor a
	ldh [hMoney], a
	ldh [hMoney + 2], a
	ld a, 8
	ldh [hMoney + 1], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, .NoMoneyText
	jr .printText
.enoughMoney
	lb bc, SANDSHREW, 5
	call GivePokemon
	jr nc, .done
	xor a
	ld [wPriceTemp], a
	ld [wPriceTemp + 2], a
	ld a, 8
	ld [wPriceTemp + 1], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	SetEvent EVENT_BOUGHT_PEWTERPOKECENTER_SALESMAN_POKEMON
	jr .done
.choseNo
	ld hl, .NoText
	jr .printText
.alreadyBought
	ld hl, .NoRefundsText
.printText
	call PrintText
.done
	ret

.IGotADealText
	text_far _PewterPokecenterSalesmanIGotADealText
	text_end

.NoText
	text_far _PewterPokecenterSalesmanNoText
	text_end

.NoMoneyText
	text_far _PewterPokecenterSalesmanNoMoneyText
	text_end

.NoRefundsText
	text_far _PewterPokecenterSalesmanNoRefundsText
	text_end

