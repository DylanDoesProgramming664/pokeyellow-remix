Route2Gate_Script:
	jp EnableAutoTextBoxDrawing

Route2Gate_TextPointers:
	def_text_pointers
	dw_const Route2GateOaksAideText,  TEXT_ROUTE2GATE_OAKS_AIDE
	dw_const Route2GateYoungsterText, TEXT_ROUTE2GATE_YOUNGSTER

Route2GateOaksAideText:
	text_asm
	CheckEvent EVENT_GOT_HM05
	jr nz, .got_item
	ld hl, .Route2GateOaksAideHiText
	call PrintText
	lb bc, HM_FLASH, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .Route2GateOaksAideGotItemText
	call PrintText
	SetEvent EVENT_GOT_HM05
	jr .got_item
.bag_full
	ld hl, .Route2GateOaksAideNoRoomText
	call PrintText
.got_item
	ld hl, .FlashExplanationText
	call PrintText
	jp TextScriptEnd
	
.Route2GateOaksAideHiText:
	text_far _Route2GateOaksAideHiText
	text_end
.Route2GateOaksAideGotItemText:
	text_far _Route2GateOaksAideGotItemText
	text_end
.Route2GateOaksAideNoRoomText:
	text_far _Route2GateOaksAideNoRoomText
	text_end
.FlashExplanationText:
	text_far _Route2GateOaksAideFlashExplanationText
	text_end

Route2GateYoungsterText:
	text_far _Route2GateYoungsterText
	text_end
