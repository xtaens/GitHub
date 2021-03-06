﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\MemDev\GUIDEV_Auto.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUI_MEMDEV_CreateAuto
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\memdev\guidev_auto.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GUI_MEMDEV_CreateAuto
_TEXT	SEGMENT
_pAutoDev$ = 8						; size = 4
_GUI_MEMDEV_CreateAuto PROC				; COMDAT
; Line 40
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 41
	mov	eax, DWORD PTR _pAutoDev$[ebp]
	mov	BYTE PTR [eax+16], 1
; Line 42
	xor	eax, eax
; Line 43
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_GUI_MEMDEV_CreateAuto ENDP
_TEXT	ENDS
PUBLIC	_GUI_MEMDEV_DeleteAuto
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUI_MEMDEV_DeleteAuto
_TEXT	SEGMENT
_pAutoDev$ = 8						; size = 4
_GUI_MEMDEV_DeleteAuto PROC				; COMDAT
; Line 49
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 50
	mov	eax, DWORD PTR _pAutoDev$[ebp]
	mov	DWORD PTR _pAutoDev$[ebp], eax
; Line 51
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_GUI_MEMDEV_DeleteAuto ENDP
_TEXT	ENDS
PUBLIC	_GUI_MEMDEV_DrawAuto
EXTRN	_GUI_MEMDEV_Draw:PROC
EXTRN	_GUI_MEASDEV_Delete:PROC
EXTRN	_GUI_MergeRect:PROC
EXTRN	_GUI_MEASDEV_ClearRect:PROC
EXTRN	_GUI_MEASDEV_GetRect:PROC
EXTRN	_GUI_MEASDEV_Select:PROC
EXTRN	_GUI_MEASDEV_Create:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_CheckEsp:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUI_MEMDEV_DrawAuto
_TEXT	SEGMENT
_hMem$ = -24						; size = 4
_rTemp$ = -12						; size = 8
_pAutoDev$ = 8						; size = 4
_pAutoDevInfo$ = 12					; size = 4
_pfDraw$ = 16						; size = 4
_pData$ = 20						; size = 4
_GUI_MEMDEV_DrawAuto PROC				; COMDAT
; Line 57
	push	ebp
	mov	ebp, esp
	sub	esp, 220				; 000000dcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-220]
	mov	ecx, 55					; 00000037H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 59
	call	_GUI_MEASDEV_Create
	mov	DWORD PTR _hMem$[ebp], eax
; Line 60
	cmp	DWORD PTR _hMem$[ebp], 0
	jne	SHORT $LN4@GUI_MEMDEV
; Line 61
	mov	eax, 1
	jmp	$LN5@GUI_MEMDEV
$LN4@GUI_MEMDEV:
; Line 63
	mov	eax, DWORD PTR _hMem$[ebp]
	push	eax
	call	_GUI_MEASDEV_Select
	add	esp, 4
; Line 64
	mov	eax, DWORD PTR _pAutoDevInfo$[ebp]
	mov	BYTE PTR [eax+1], 1
; Line 66
	mov	eax, DWORD PTR _pAutoDev$[ebp]
	movzx	ecx, BYTE PTR [eax+16]
	test	ecx, ecx
	je	SHORT $LN3@GUI_MEMDEV
; Line 68
	mov	eax, DWORD PTR _pAutoDevInfo$[ebp]
	mov	BYTE PTR [eax], 1
; Line 69
	mov	esi, esp
	mov	eax, DWORD PTR _pData$[ebp]
	push	eax
	call	DWORD PTR _pfDraw$[ebp]
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 70
	mov	eax, DWORD PTR _pAutoDev$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hMem$[ebp]
	push	ecx
	call	_GUI_MEASDEV_GetRect
	add	esp, 8
; Line 72
	mov	eax, DWORD PTR _hMem$[ebp]
	push	eax
	call	_GUI_MEASDEV_ClearRect
	add	esp, 4
; Line 73
	mov	eax, DWORD PTR _pAutoDevInfo$[ebp]
	mov	BYTE PTR [eax], 0
; Line 74
	mov	esi, esp
	mov	eax, DWORD PTR _pData$[ebp]
	push	eax
	call	DWORD PTR _pfDraw$[ebp]
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 75
	mov	eax, DWORD PTR _pAutoDev$[ebp]
	add	eax, 8
	push	eax
	mov	ecx, DWORD PTR _hMem$[ebp]
	push	ecx
	call	_GUI_MEASDEV_GetRect
	add	esp, 8
; Line 76
	jmp	SHORT $LN2@GUI_MEMDEV
$LN3@GUI_MEMDEV:
; Line 78
	mov	esi, esp
	mov	eax, DWORD PTR _pData$[ebp]
	push	eax
	call	DWORD PTR _pfDraw$[ebp]
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 79
	mov	eax, DWORD PTR _pAutoDev$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hMem$[ebp]
	push	ecx
	call	_GUI_MEASDEV_GetRect
	add	esp, 8
; Line 80
	mov	eax, DWORD PTR _pAutoDev$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR _rTemp$[ebp], ecx
	mov	DWORD PTR _rTemp$[ebp+4], edx
; Line 81
	mov	eax, DWORD PTR _pAutoDev$[ebp]
	add	eax, 8
	push	eax
	mov	ecx, DWORD PTR _pAutoDev$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pAutoDev$[ebp]
	push	edx
	call	_GUI_MergeRect
	add	esp, 12					; 0000000cH
; Line 82
	mov	eax, DWORD PTR _pAutoDev$[ebp]
	mov	ecx, DWORD PTR _rTemp$[ebp]
	mov	DWORD PTR [eax+8], ecx
	mov	edx, DWORD PTR _rTemp$[ebp+4]
	mov	DWORD PTR [eax+12], edx
$LN2@GUI_MEMDEV:
; Line 84
	mov	eax, DWORD PTR _hMem$[ebp]
	push	eax
	call	_GUI_MEASDEV_Delete
	add	esp, 4
; Line 85
	mov	eax, DWORD PTR _pAutoDevInfo$[ebp]
	mov	BYTE PTR [eax+1], 0
; Line 87
	mov	eax, DWORD PTR _pAutoDevInfo$[ebp]
	mov	BYTE PTR [eax], 1
; Line 88
	push	1
	push	0
	mov	eax, DWORD PTR _pData$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pfDraw$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pAutoDev$[ebp]
	push	edx
	call	_GUI_MEMDEV_Draw
	add	esp, 20					; 00000014H
	test	eax, eax
	je	SHORT $LN1@GUI_MEMDEV
; Line 89
	mov	eax, 1
	jmp	SHORT $LN5@GUI_MEMDEV
$LN1@GUI_MEMDEV:
; Line 91
	mov	eax, DWORD PTR _pAutoDevInfo$[ebp]
	mov	BYTE PTR [eax], 0
; Line 92
	mov	eax, DWORD PTR _pAutoDev$[ebp]
	mov	BYTE PTR [eax+16], 0
; Line 93
	xor	eax, eax
$LN5@GUI_MEMDEV:
; Line 94
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN9@GUI_MEMDEV
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 220				; 000000dcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN9@GUI_MEMDEV:
	DD	1
	DD	$LN8@GUI_MEMDEV
$LN8@GUI_MEMDEV:
	DD	-12					; fffffff4H
	DD	8
	DD	$LN7@GUI_MEMDEV
$LN7@GUI_MEMDEV:
	DB	114					; 00000072H
	DB	84					; 00000054H
	DB	101					; 00000065H
	DB	109					; 0000006dH
	DB	112					; 00000070H
	DB	0
_GUI_MEMDEV_DrawAuto ENDP
_TEXT	ENDS
END
