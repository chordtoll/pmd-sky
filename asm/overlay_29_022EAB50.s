	.include "asm/macros.inc"
	.include "overlay_29_022EAB50.inc"

	.text

	arm_func_start DungeonRandOutcome__022EAB20
DungeonRandOutcome__022EAB20: ; 0x022EAB20
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl DungeonRand16Bit
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, #0x64
	mul r0, r1, r0
	cmp r4, r0, asr #16
	movgt r0, #1
	movle r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end DungeonRandOutcome__022EAB20

	arm_func_start DungeonRandOutcome__022EAB50
DungeonRandOutcome__022EAB50: ; 0x022EAB50
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl DungeonRand16Bit
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, #0x64
	mul r0, r1, r0
	cmp r4, r0, asr #16
	movgt r0, #1
	movle r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end DungeonRandOutcome__022EAB50

	arm_func_start CalcStatusDuration
CalcStatusDuration: ; 0x022EAB80
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrsh r0, [r1]
	ldrsh r1, [r1, #2]
	mov r6, r2
	bl DungeonRandRange
	mov r5, r0
	cmp r4, #0
	moveq r0, #0
	beq _022EABBC
	ldr r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_022EABBC:
	cmp r0, #0
	beq _022EAC24
	ldr r0, [r4]
	cmp r0, #1
	bne _022EAC24
	cmp r6, #0
	beq _022EAC24
	mov r0, r4
	mov r1, #0x12
	bl IqSkillIsEnabled
	cmp r0, #0
	cmpne r5, #0x7f
	beq _022EAC04
	mov r0, r5, lsl #8
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	bl RoundUpDiv256
	mov r5, r0
_022EAC04:
	mov r0, r4
	mov r1, #0x14
	bl AbilityIsActive2
	cmp r0, #0
	cmpne r5, #0x7f
	beq _022EAC24
	cmp r5, #5
	movge r5, #5
_022EAC24:
	cmp r5, #1
	movlt r5, #1
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end CalcStatusDuration

	arm_func_start DungeonRngUnsetSecondary
DungeonRngUnsetSecondary: ; 0x022EAC34
	ldr r0, _022EAC48 ; =0x02353570
	mov r1, #0
	strb r1, [r0]
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
_022EAC48: .word 0x02353570
	arm_func_end DungeonRngUnsetSecondary

	arm_func_start DungeonRngSetSecondary
DungeonRngSetSecondary: ; 0x022EAC4C
	ldr r1, _022EAC60 ; =0x02353570
	mov r2, #1
	strb r2, [r1]
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_022EAC60: .word 0x02353570
	arm_func_end DungeonRngSetSecondary

	arm_func_start DungeonRngSetPrimary
DungeonRngSetPrimary: ; 0x022EAC64
	ldr r0, _022EAC74 ; =0x02353570
	mov r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_022EAC74: .word 0x02353570
	arm_func_end DungeonRngSetPrimary

	arm_func_start ov29_022EAC78
ov29_022EAC78: ; 0x022EAC78
	bx lr
	arm_func_end ov29_022EAC78

	arm_func_start ov29_022EAC7C
ov29_022EAC7C: ; 0x022EAC7C
	ldr ip, _022EAC88 ; =sub_02017C50
	mov r0, #1
	bx ip
	.align 2, 0
_022EAC88: .word sub_02017C50
	arm_func_end ov29_022EAC7C

	arm_func_start ov29_022EAC8C
ov29_022EAC8C: ; 0x022EAC8C
	ldr ip, _022EAC98 ; =sub_02017C50
	mov r0, #7
	bx ip
	.align 2, 0
_022EAC98: .word sub_02017C50
	arm_func_end ov29_022EAC8C

	arm_func_start ov29_022EAC9C
ov29_022EAC9C: ; 0x022EAC9C
	ldr ip, _022EACA8 ; =sub_02017C50
	mov r0, #0
	bx ip
	.align 2, 0
_022EACA8: .word sub_02017C50
	arm_func_end ov29_022EAC9C

	arm_func_start ov29_022EACAC
ov29_022EACAC: ; 0x022EACAC
	ldr ip, _022EACB8 ; =sub_02017C50
	mov r0, #5
	bx ip
	.align 2, 0
_022EACB8: .word sub_02017C50
	arm_func_end ov29_022EACAC

	arm_func_start ov29_022EACBC
ov29_022EACBC: ; 0x022EACBC
	ldr ip, _022EACC8 ; =sub_02017C50
	mov r0, #7
	bx ip
	.align 2, 0
_022EACC8: .word sub_02017C50
	arm_func_end ov29_022EACBC

	arm_func_start ov29_022EACCC
ov29_022EACCC: ; 0x022EACCC
	stmdb sp!, {r3, lr}
	cmp r0, #0x3f00
	ldmeqia sp!, {r3, pc}
	mov r1, #0x100
	bl sub_02017C74
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022EACCC

	arm_func_start ov29_022EACE4
ov29_022EACE4: ; 0x022EACE4
	stmdb sp!, {r3, lr}
	ldr r1, _022EACFC ; =0x000003E6
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl sub_02017C50
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EACFC: .word 0x000003E6
	arm_func_end ov29_022EACE4

	arm_func_start ov29_022EAD00
ov29_022EAD00: ; 0x022EAD00
	stmdb sp!, {r4, lr}
	mov r1, #0xaa
	bl DivideInt
	ldr r0, _022EAD5C ; =0x022C555C
	mov r1, r1, lsl #1
	ldrh r4, [r0, r1]
	tst r4, #0x8000
	ldreq r0, _022EAD60 ; =0x00007FFF
	andeq r0, r4, r0
	moveq r0, r0, lsl #0x10
	moveq r0, r0, lsr #0x10
	ldmeqia sp!, {r4, pc}
	mov r0, #4
	bl DungeonRandInt
	ldr r1, _022EAD60 ; =0x00007FFF
	mov r0, r0, lsl #0x10
	and r1, r4, r1
	ldr r3, _022EAD64 ; =0x022C51FC
	mov r1, r1, lsl #0x10
	mov r2, r0, asr #0xf
	add r0, r3, r1, lsr #13
	ldrh r0, [r2, r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022EAD5C: .word 0x022C555C
_022EAD60: .word 0x00007FFF
_022EAD64: .word 0x022C51FC
	arm_func_end ov29_022EAD00

	arm_func_start ov29_022EAD68
ov29_022EAD68: ; 0x022EAD68
	stmdb sp!, {r4, r5, r6, lr}
	bl ov29_022E0880
	cmp r0, #0
	beq _022EADAC
	mov r6, #0
	ldr r5, _022EAE08 ; =0x00001410
	mov r4, #0x66
	b _022EADA4
_022EAD88:
	mov r0, r5
	bl sub_02017C68
	cmp r0, #0
	beq _022EADAC
	mov r0, r4
	bl AdvanceFrame
	add r6, r6, #1
_022EADA4:
	cmp r6, #0x1f4
	blt _022EAD88
_022EADAC:
	ldr r0, _022EAE0C ; =0x02353538
	mov r1, #0xc
	ldr r0, [r0]
	ldr r2, _022EAE10 ; =0x022C6C70
	add r0, r0, #0x4000
	ldrb r3, [r0, #0xda]
	smulbb r1, r3, r1
	ldr r1, [r2, r1]
	cmp r1, #0
	ldreqsh r1, [r0, #0xd6]
	strneh r1, [r0, #0xd6]
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov29_022EAD00
	mov r4, r0
	bl sub_02017B18
	cmp r0, #0
	mov r0, r4
	bne _022EAE00
	bl ov29_022EAE14
	ldmia sp!, {r4, r5, r6, pc}
_022EAE00:
	bl ov29_022EAE40
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022EAE08: .word 0x00001410
_022EAE0C: .word 0x02353538
_022EAE10: .word 0x022C6C70
	arm_func_end ov29_022EAD68

	arm_func_start ov29_022EAE14
ov29_022EAE14: ; 0x022EAE14
	ldr r3, _022EAE38 ; =0x02353538
	ldr r1, _022EAE3C ; =0x0002CB06
	ldr ip, [r3]
	sub r2, r1, #6
	strh r0, [ip, r1]
	ldr r0, [r3]
	mov r1, #0
	strh r1, [r0, r2]
	bx lr
	.align 2, 0
_022EAE38: .word 0x02353538
_022EAE3C: .word 0x0002CB06
	arm_func_end ov29_022EAE14

	arm_func_start ov29_022EAE40
ov29_022EAE40: ; 0x022EAE40
	stmdb sp!, {r4, lr}
	ldr lr, _022EAEA0 ; =0x02353538
	ldr r2, _022EAEA4 ; =0x0002CB02
	ldr r4, [lr]
	ldr r1, _022EAEA8 ; =0x000003E7
	add r3, r2, #4
	strh r1, [r4, r2]
	ldr r4, [lr]
	add ip, r2, #2
	strh r0, [r4, r3]
	ldr r4, [lr]
	mov r3, #4
	strh r0, [r4, ip]
	ldr r0, [lr]
	sub r2, r2, #2
	add r0, r0, #0x2c000
	str r3, [r0, #0xaf8]
	ldr r0, [lr]
	mov r3, #0
	strh r3, [r0, r2]
	ldr r0, [lr]
	add r0, r0, #0x700
	strh r1, [r0, #0x96]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022EAEA0: .word 0x02353538
_022EAEA4: .word 0x0002CB02
_022EAEA8: .word 0x000003E7
	arm_func_end ov29_022EAE40

	arm_func_start ov29_022EAEAC
ov29_022EAEAC: ; 0x022EAEAC
	stmdb sp!, {r3, lr}
	bl sub_02017ACC
	ldr r0, _022EAEE4 ; =0x0002CB02
	ldr r2, _022EAEE8 ; =0x02353538
	ldr ip, _022EAEEC ; =0x000003E7
	ldr r3, [r2]
	add r1, r0, #2
	strh ip, [r3, r0]
	ldr r3, [r2]
	add r0, r0, #4
	strh ip, [r3, r1]
	ldr r1, [r2]
	strh ip, [r1, r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EAEE4: .word 0x0002CB02
_022EAEE8: .word 0x02353538
_022EAEEC: .word 0x000003E7
	arm_func_end ov29_022EAEAC

	arm_func_start ov29_022EAEF0
ov29_022EAEF0: ; 0x022EAEF0
	ldr ip, _022EAEF8 ; =sub_02017D80
	bx ip
	.align 2, 0
_022EAEF8: .word sub_02017D80
	arm_func_end ov29_022EAEF0

	arm_func_start ov29_022EAEFC
ov29_022EAEFC: ; 0x022EAEFC
	ldr r0, _022EAF1C ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x792]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022EAF1C: .word 0x02353538
	arm_func_end ov29_022EAEFC

	arm_func_start ov29_022EAF20
ov29_022EAF20: ; 0x022EAF20
	ldr r0, _022EAF30 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x792]
	bx lr
	.align 2, 0
_022EAF30: .word 0x02353538
	arm_func_end ov29_022EAF20

	arm_func_start ov29_022EAF34
ov29_022EAF34: ; 0x022EAF34
	ldr r1, _022EAF44 ; =0x02353538
	ldr r1, [r1]
	strb r0, [r1, #0x792]
	bx lr
	.align 2, 0
_022EAF44: .word 0x02353538
	arm_func_end ov29_022EAF34

	arm_func_start ov29_022EAF48
ov29_022EAF48: ; 0x022EAF48
	stmdb sp!, {r4, lr}
	ldr ip, _022EAFA8 ; =0x02353538
	mov r4, #0
	ldr r3, [ip]
	ldr lr, _022EAFAC ; =0x000003E7
	add r2, r3, #0x2f8
	add r3, r3, #0x2c000
	str r4, [r3, #0xaf8]
	add r3, r2, #0x2c800
	str r4, [r3, #4]
	ldr r2, [ip]
	cmp r1, #0
	add r1, r2, #0x700
	strh lr, [r1, #0x96]
	bne _022EAF8C
	cmp r0, lr
	bne _022EAFA0
_022EAF8C:
	ldr r0, _022EAFAC ; =0x000003E7
	strh r0, [r3, #0xa]
	strh r0, [r3, #0xc]
	strh r0, [r3, #0xe]
	ldmia sp!, {r4, pc}
_022EAFA0:
	bl ov29_022EAE40
	ldmia sp!, {r4, pc}
	.align 2, 0
_022EAFA8: .word 0x02353538
_022EAFAC: .word 0x000003E7
	arm_func_end ov29_022EAF48

	arm_func_start ov29_022EAFB0
ov29_022EAFB0: ; 0x022EAFB0
	stmdb sp!, {r4, lr}
	ldr r0, _022EB168 ; =0x02353538
	ldr r3, [r0]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	add r0, r3, #0x700
	ldrh r0, [r0, #0x96]
	ldr r2, _022EB16C ; =0x000003E7
	add r1, r3, #0x2f8
	cmp r0, r2
	add r4, r1, #0x2c800
	bne _022EB034
	ldrb r1, [r3, #0x792]
	cmp r1, #0
	beq _022EB004
	ldr r0, _022EB170 ; =0x023516E8
	ldr r0, [r0, r1, lsl #2]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov29_022EAD00
	b _022EB034
_022EB004:
	ldrb r0, [r3, #0x791]
	cmp r0, #0
	movne r0, #0xd
	bne _022EB034
	ldrb r0, [r3, #0x794]
	cmp r0, #0
	movne r0, #0xb
	bne _022EB034
	ldrb r0, [r3, #0x7c9]
	cmp r0, #0
	movne r0, #0xc
	ldreqh r0, [r4, #0xe]
_022EB034:
	ldr r1, [r4]
	cmp r1, #4
	bne _022EB058
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	movne r1, #2
	strne r1, [r4]
	strneh r0, [r4, #0xa]
	b _022EB078
_022EB058:
	ldr r1, _022EB16C ; =0x000003E7
	cmp r0, r1
	beq _022EB078
	ldrh r2, [r4, #0xa]
	cmp r2, r1
	moveq r1, #1
	streq r1, [r4]
	streqh r0, [r4, #0xa]
_022EB078:
	ldr r0, [r4]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_022EB088: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _022EB09C ; case 1
	b _022EB108 ; case 2
	b _022EB124 ; case 3
	ldmia sp!, {r4, pc} ; case 4
_022EB09C:
	ldrh r2, [r4, #0xa]
	ldr r0, _022EB16C ; =0x000003E7
	cmp r2, r0
	moveq r0, #0
	streq r0, [r4]
	beq _022EB0FC
	tst r2, #0x8000
	ldr r0, _022EB174 ; =0x00007FFF
	beq _022EB0D4
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl sub_02017B58
	b _022EB0EC
_022EB0D4:
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	ldrh r1, [r4, #8]
	mov r0, r0, lsr #0x10
	mov r2, #0x100
	bl sub_02017B64
_022EB0EC:
	ldrh r1, [r4, #0xa]
	mov r0, #4
	strh r1, [r4, #0xc]
	str r0, [r4]
_022EB0FC:
	ldr r0, _022EB16C ; =0x000003E7
	strh r0, [r4, #0xa]
	ldmia sp!, {r4, pc}
_022EB108:
	mov r0, #0x1e
	bl sub_02017B7C
	mov r0, #0x1e
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4]
	ldmia sp!, {r4, pc}
_022EB124:
	ldr r0, [r4, #4]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r4, #4]
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldrh r1, [r4, #0xa]
	ldr r0, _022EB16C ; =0x000003E7
	cmp r1, r0
	movne r0, #1
	strne r0, [r4]
	ldmneia sp!, {r4, pc}
	bl sub_02017B70
	mov r0, #0
	str r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022EB168: .word 0x02353538
_022EB16C: .word 0x000003E7
_022EB170: .word 0x023516E8
_022EB174: .word 0x00007FFF
	arm_func_end ov29_022EAFB0

	arm_func_start TrySwitchPlace
TrySwitchPlace: ; 0x022EB178
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r1, #0xe
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	beq _022EB1BC
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _022EB2C4 ; =0x00000B76
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EB2BC
_022EB1BC:
	cmp r5, r4
	beq _022EB204
	cmp r5, #0
	moveq r0, #0
	beq _022EB1E4
	ldr r0, [r5]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
_022EB1E4:
	cmp r0, #0
	beq _022EB204
	mov r0, r5
	mov r1, #0x53
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	bne _022EB210
_022EB204:
	mov r0, r4
	mov r1, #0xe
	bl AbilityIsActive2
_022EB210:
	cmp r0, #0
	beq _022EB23C
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _022EB2C4 ; =0x00000B76
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EB2BC
_022EB23C:
	ldrsh r1, [r5, #4]
	add r0, sp, #4
	strh r1, [sp, #4]
	ldrsh r1, [r5, #6]
	strh r1, [sp, #6]
	ldrsh r1, [r4, #4]
	strh r1, [sp]
	ldrsh r1, [r4, #6]
	strh r1, [sp, #2]
	bl ov29_022E555C
	add r0, sp, #0
	bl ov29_022E555C
	ldrsh r1, [sp]
	ldrsh r2, [sp, #2]
	mov r0, r5
	mov r3, #1
	bl ov29_022F85F0
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	mov r0, r4
	mov r3, #1
	bl ov29_022F85F0
	mov r0, r5
	mov r1, #0
	bl ov29_022E1A40
	mov r0, r4
	mov r1, #0
	bl ov29_022E1A40
	mov r0, r5
	bl ov29_02321260
	mov r0, r4
	bl ov29_02321260
_022EB2BC:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022EB2C4: .word 0x00000B76
	arm_func_end TrySwitchPlace

	arm_func_start ov29_022EB2C8
ov29_022EB2C8: ; 0x022EB2C8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, _022EB360 ; =0x0237C91C
	mov r2, r5, lsl #3
	ldrh r6, [r0, r2]
	mov r4, r1
	cmp r6, #0x26
	bne _022EB2F8
	bl GetFloorType
	cmp r0, #2
	ldreq r0, _022EB364 ; =0x000009C9
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_022EB2F8:
	add r0, r6, #0x87
	add r0, r0, #0x900
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	mov r0, r7
	bl StringFromMessageId
	ldr r1, _022EB368 ; =0x02352070
	bl Strcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	beq _022EB34C
	ldr r0, _022EB36C ; =0x0237C91E
	mov r1, r5, lsl #3
	ldrsh r0, [r0, r1]
	bl sub_0200D208
	ldr r1, _022EB370 ; =0x02352032
	mov r0, r0, lsl #2
	ldrh r0, [r1, r0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022EB34C:
	cmp r4, #1
	cmpeq r6, #0x1a
	ldreq r0, _022EB374 ; =0x000009CA
	movne r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022EB360: .word 0x0237C91C
_022EB364: .word 0x000009C9
_022EB368: .word 0x02352070
_022EB36C: .word 0x0237C91E
_022EB370: .word 0x02352032
_022EB374: .word 0x000009CA
	arm_func_end ov29_022EB2C8

	arm_func_start ov29_022EB378
ov29_022EB378: ; 0x022EB378
	stmdb sp!, {r3, lr}
	ldrsh r0, [r0, #4]
	bl sub_0200D208
	ldr r1, _022EB394 ; =0x02352030
	mov r0, r0, lsl #2
	ldrh r0, [r1, r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EB394: .word 0x02352030
	arm_func_end ov29_022EB378

	arm_func_start ov29_022EB398
ov29_022EB398: ; 0x022EB398
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov29_022E9618
	mov r1, #0
	strh r1, [r0, #0x4a]
	cmp r4, #0
	strneb r1, [r0, #0x4e]
	strneb r1, [r0, #0x54]
	subne r1, r1, #1
	strneh r1, [r0, #0x5a]
	strneh r1, [r0, #0x5c]
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022EB398

	arm_func_start ov29_022EB3C8
ov29_022EB3C8: ; 0x022EB3C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov29_022E9618
	mov r1, #0
	strh r4, [r0, #0x4a]
	strb r1, [r0, #0x4e]
	strb r1, [r0, #0x54]
	sub r1, r1, #1
	strh r1, [r0, #0x5a]
	strh r1, [r0, #0x5c]
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022EB3C8

	arm_func_start ClearMonsterActionFields
ClearMonsterActionFields: ; 0x022EB3F4
	mov r1, #0
	strh r1, [r0]
	strb r1, [r0, #4]
	strb r1, [r0, #0xa]
	bx lr
	arm_func_end ClearMonsterActionFields

	arm_func_start SetMonsterActionFields
SetMonsterActionFields: ; 0x022EB408
	strh r1, [r0]
	mov r1, #0
	strb r1, [r0, #4]
	strb r1, [r0, #0xa]
	bx lr
	arm_func_end SetMonsterActionFields

	arm_func_start SetActionPassTurnOrWalk
SetActionPassTurnOrWalk: ; 0x022EB41C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl GetCanMoveFlag
	cmp r0, #0
	movne r0, #2
	moveq r0, #1
	strh r0, [r4]
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #0xa]
	ldmia sp!, {r4, pc}
	arm_func_end SetActionPassTurnOrWalk

	arm_func_start ov29_022EB44C
ov29_022EB44C: ; 0x022EB44C
	stmdb sp!, {r3, lr}
	ldrb r2, [r1]
	cmp r2, #1
	blo _022EB478
	cmp r2, #0x33
	bhs _022EB478
	sub r0, r2, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl GetItemAtIdx
	ldmia sp!, {r3, pc}
_022EB478:
	cmp r2, #0x80
	bne _022EB498
	ldrsh r0, [r1, #2]
	ldrsh r1, [r1, #4]
	bl GetTile
	ldr r0, [r0, #0x10]
	bl ov29_022E1610
	ldmia sp!, {r3, pc}
_022EB498:
	cmp r2, #0x81
	ldreq r0, [r0, #0xb4]
	addeq r0, r0, #0x62
	ldmeqia sp!, {r3, pc}
	cmp r2, #0x90
	blo _022EB4DC
	cmp r2, #0x94
	bhs _022EB4DC
	ldr r0, _022EB4E4 ; =0x02353538
	sub r1, r2, #0x90
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	ldr r0, [r0, #0xb4]
	add r0, r0, #0x62
	ldmia sp!, {r3, pc}
_022EB4DC:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EB4E4: .word 0x02353538
	arm_func_end ov29_022EB44C

	arm_func_start ov29_022EB4E8
ov29_022EB4E8: ; 0x022EB4E8
	stmdb sp!, {r3, lr}
	mov r2, #6
	mul r2, r1, r2
	add r1, r0, r2
	ldrb r1, [r1, #4]
	cmp r1, #1
	blo _022EB528
	cmp r1, #0x33
	bhs _022EB528
	sub r0, r1, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl RemoveItem
	bl ov29_02347030
	mov r0, #1
	ldmia sp!, {r3, pc}
_022EB528:
	cmp r1, #0x80
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r0, #6
	add r0, r0, r2
	mov r1, #1
	bl ov29_023456BC
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022EB4E8

	arm_func_start ov29_022EB54C
ov29_022EB54C: ; 0x022EB54C
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #0xb4]
	mov r3, #6
	add ip, ip, #0x4e
	mla r1, r3, r1, ip
	bl ov29_022EB44C
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022EB54C

	arm_func_start ov29_022EB568
ov29_022EB568: ; 0x022EB568
	ldr r2, [r0, #0xb4]
	mov r0, #6
	mla r2, r1, r0, r2
	ldr r0, _022EB590 ; =0x02353538
	ldrb r1, [r2, #0x4e]
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bx lr
	.align 2, 0
_022EB590: .word 0x02353538
	arm_func_end ov29_022EB568

	arm_func_start ov29_022EB594
ov29_022EB594: ; 0x022EB594
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022EB5D0
_022EB5A0: ; jump table
	b _022EB5B0 ; case 0
	b _022EB5B8 ; case 1
	b _022EB5C0 ; case 2
	b _022EB5C8 ; case 3
_022EB5B0:
	mov r0, #1
	bx lr
_022EB5B8:
	mov r0, #2
	bx lr
_022EB5C0:
	mov r0, #3
	bx lr
_022EB5C8:
	mov r0, #4
	bx lr
_022EB5D0:
	mov r0, #0
	bx lr
	arm_func_end ov29_022EB594

	arm_func_start ov29_022EB5D8
ov29_022EB5D8: ; 0x022EB5D8
	stmdb sp!, {r3, lr}
	ldrsh r0, [r0, #4]
	ldr r1, _022EB604 ; =0x0000016B
	cmp r0, r1
	moveq r0, #0x35
	ldmeqia sp!, {r3, pc}
	bl GetItemCategoryVeneer
	ldr r1, _022EB608 ; =0x02352010
	mov r0, r0, lsl #1
	ldrh r0, [r1, r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EB604: .word 0x0000016B
_022EB608: .word 0x02352010
	arm_func_end ov29_022EB5D8

	arm_func_start ov29_022EB60C
ov29_022EB60C: ; 0x022EB60C
	stmdb sp!, {r3, r4, r5, lr}
	ldr ip, [r0, #0xb4]
	mov r3, #6
	add ip, ip, #0x4e
	mla r1, r3, r1, ip
	ldr r4, [r0, #0xb4]
	bl ov29_022EB44C
	ldrb r1, [r4, #0x4e]
	mov r5, r0
	cmp r1, #0x80
	bne _022EB648
	add r0, r4, #0x50
	mov r1, #1
	bl ov29_023456BC
	ldmia sp!, {r3, r4, r5, pc}
_022EB648:
	ldrb r1, [r5, #1]
	cmp r1, #0
	beq _022EB658
	bl RemoveEquivItemNoHole
_022EB658:
	mov r0, r5
	bl ItemZInit
	bl ov29_02347030
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022EB60C

	arm_func_start ov29_022EB668
ov29_022EB668: ; 0x022EB668
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r8, r1
	mov r1, #6
	mul r6, r8, r1
	mov sb, r0
	ldr r1, [sb, #0xb4]
	mov r7, r2
	add r1, r1, #0x4e
	add r1, r1, r6
	bl ov29_022EB44C
	mov r4, r0
	ldrsh r0, [r4, #4]
	ldr r5, [sb, #0xb4]
	bl IsHM
	cmp r0, #0
	bne _022EB7F8
	ldrsh r0, [r4, #4]
	bl GetItemCategoryVeneer
	cmp r0, #5
	bne _022EB7E8
	add r0, r5, r6
	ldrb r0, [r0, #0x4e]
	cmp r0, #0x80
	bne _022EB71C
	ldrh r1, [r4]
	add r5, r5, #0x50
	add r0, r5, r6
	strh r1, [sp]
	ldrh r2, [r4, #2]
	mov r1, #1
	strh r2, [sp, #2]
	ldrh r2, [r4, #4]
	strh r2, [sp, #4]
	bl ov29_023456BC
	ldrsh r0, [r4, #4]
	mov r3, #0xbb
	add r1, sp, #0
	sub r4, r0, #0xbc
	add r0, r5, r6
	mov r2, #1
	strh r4, [sp, #2]
	strh r3, [sp, #4]
	bl ov29_02345538
	b _022EB7F8
_022EB71C:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _022EB7C8
	ldr r0, _022EB800 ; =0x02353538
	sub r1, r1, #1
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	ldr r0, [r0, #0xb4]
	add r0, r0, #0x62
	cmp r4, r0
	bne _022EB7A4
	mov r0, r4
	bl GetEquivItemIndex
	ldrsh r1, [r4, #4]
	mov r5, r0
	mov r0, r4
	sub r1, r1, #0xbc
	strh r1, [r4, #2]
	mov r1, #0xbb
	strh r1, [r4, #4]
	bl SetItemAcquired
	cmp r5, #0
	blt _022EB7F8
	mov r0, r5
	bl GetItemAtIdx
	ldrh r1, [r4]
	strh r1, [r0]
	ldrh r1, [r4, #2]
	strh r1, [r0, #2]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	b _022EB7F8
_022EB7A4:
	ldrsh r2, [r4, #4]
	mov r0, r4
	mov r1, #0xbb
	sub r2, r2, #0xbc
	strh r2, [r4, #2]
	strh r1, [r4, #4]
	bl SetItemAcquired
	bl ov29_02347040
	b _022EB7F8
_022EB7C8:
	ldrsh r2, [r4, #4]
	mov r0, r4
	mov r1, #0xbb
	sub r2, r2, #0xbc
	strh r2, [r4, #2]
	strh r1, [r4, #4]
	bl SetItemAcquired
	b _022EB7F8
_022EB7E8:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl ov29_022EB60C
_022EB7F8:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022EB800: .word 0x02353538
	arm_func_end ov29_022EB668

	arm_func_start ov29_022EB804
ov29_022EB804: ; 0x022EB804
	cmp r0, #0
	ldrge r1, _022EB818 ; =0x0237C920
	movlt r0, #0
	ldrgeb r0, [r1, r0, lsl #3]
	bx lr
	.align 2, 0
_022EB818: .word 0x0237C920
	arm_func_end ov29_022EB804

	arm_func_start ov29_022EB81C
ov29_022EB81C: ; 0x022EB81C
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _022EB89C ; =0x0237C918
	ldr r2, [r2]
	cmp r2, #0xa
	ldmgeia sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _022EB8A0 ; =0x0237C91C
	b _022EB850
_022EB83C:
	mov r3, r5, lsl #3
	ldrh r3, [r4, r3]
	cmp r0, r3
	ldmeqia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
_022EB850:
	cmp r5, r2
	blt _022EB83C
	ldr ip, _022EB89C ; =0x0237C918
	ldr r4, _022EB8A0 ; =0x0237C91C
	mov r6, r2, lsl #3
	ldr lr, [ip]
	add r3, r0, #0x87
	add lr, lr, #1
	ldr r5, _022EB8A4 ; =0x0237C91E
	strh r0, [r4, r6]
	ldr r4, _022EB8A8 ; =0x0237C920
	strh r1, [r5, r6]
	mov r1, #1
	ldr r0, _022EB8AC ; =0x0237C922
	strb r1, [r4, r2, lsl #3]
	add r1, r3, #0x900
	strh r1, [r0, r6]
	str lr, [ip]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022EB89C: .word 0x0237C918
_022EB8A0: .word 0x0237C91C
_022EB8A4: .word 0x0237C91E
_022EB8A8: .word 0x0237C920
_022EB8AC: .word 0x0237C922
	arm_func_end ov29_022EB81C

	arm_func_start ov29_022EB8B0
ov29_022EB8B0: ; 0x022EB8B0
	ldr r1, _022EB8EC ; =0x0237C918
	mov r3, #0
	ldr ip, [r1]
	ldr r2, _022EB8F0 ; =0x0237C91C
	b _022EB8DC
_022EB8C4:
	mov r1, r3, lsl #3
	ldrh r1, [r2, r1]
	cmp r0, r1
	moveq r0, r3
	bxeq lr
	add r3, r3, #1
_022EB8DC:
	cmp r3, ip
	blt _022EB8C4
	mvn r0, #0
	bx lr
	.align 2, 0
_022EB8EC: .word 0x0237C918
_022EB8F0: .word 0x0237C91C
	arm_func_end ov29_022EB8B0

	arm_func_start ov29_022EB8F4
ov29_022EB8F4: ; 0x022EB8F4
	stmdb sp!, {r3, lr}
	ldr r1, _022EB938 ; =0x0237C918
	mov ip, #0
	ldr lr, [r1]
	ldr r2, _022EB93C ; =0x0237C91C
	b _022EB92C
_022EB90C:
	mov r3, ip, lsl #3
	ldrh r1, [r2, r3]
	cmp r0, r1
	ldreq r0, _022EB940 ; =0x0237C920
	moveq r1, #0
	streqb r1, [r0, r3]
	ldmeqia sp!, {r3, pc}
	add ip, ip, #1
_022EB92C:
	cmp ip, lr
	blt _022EB90C
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EB938: .word 0x0237C918
_022EB93C: .word 0x0237C91C
_022EB940: .word 0x0237C920
	arm_func_end ov29_022EB8F4

	arm_func_start ov29_022EB944
ov29_022EB944: ; 0x022EB944
	stmdb sp!, {r4, lr}
	cmp r1, #0
	ldr r4, [r0, #0xb4]
	beq _022EB964
	bl ov29_022E272C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_022EB964:
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	cmp r0, #1
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022EB944

	arm_func_start ov29_022EB9A0
ov29_022EB9A0: ; 0x022EB9A0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _022EBA64 ; =0x0237C918
	mov r3, #0
	ldr ip, [r0]
	b _022EBA54
_022EB9B8:
	add lr, r3, #1
	mov r2, r3, lsl #3
	ldr r1, _022EBA68 ; =0x0237C91C
	ldr r0, _022EBA6C ; =0x02352074
	b _022EBA48
_022EB9CC:
	mov r4, lr, lsl #3
	ldrh r5, [r1, r2]
	ldrh r4, [r1, r4]
	add r5, r0, r5, lsl #3
	add r4, r0, r4, lsl #3
	ldr r5, [r5, #4]
	ldr r4, [r4, #4]
	cmp r5, r4
	ble _022EBA44
	add r6, sp, #0
	add r7, r1, r2
	mov r5, #4
_022EB9FC:
	ldrh r4, [r7], #2
	subs r5, r5, #1
	strh r4, [r6], #2
	bne _022EB9FC
	add r7, r1, lr, lsl #3
	add r6, r1, r2
	mov r5, #4
_022EBA18:
	ldrh r4, [r7], #2
	subs r5, r5, #1
	strh r4, [r6], #2
	bne _022EBA18
	add r7, sp, #0
	add r6, r1, lr, lsl #3
	mov r5, #4
_022EBA34:
	ldrh r4, [r7], #2
	subs r5, r5, #1
	strh r4, [r6], #2
	bne _022EBA34
_022EBA44:
	add lr, lr, #1
_022EBA48:
	cmp lr, ip
	blt _022EB9CC
	add r3, r3, #1
_022EBA54:
	cmp r3, ip
	blt _022EB9B8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022EBA64: .word 0x0237C918
_022EBA68: .word 0x0237C91C
_022EBA6C: .word 0x02352074
	arm_func_end ov29_022EB9A0

	arm_func_start ov29_022EBA70
ov29_022EBA70: ; 0x022EBA70
	ldr r0, _022EBA80 ; =0x0237C918
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_022EBA80: .word 0x0237C918
	arm_func_end ov29_022EBA70

	arm_func_start ov29_022EBA84
ov29_022EBA84: ; 0x022EBA84
	ldr r0, _022EBA90 ; =0x0237C918
	ldr r0, [r0]
	bx lr
	.align 2, 0
_022EBA90: .word 0x0237C918
	arm_func_end ov29_022EBA84

	arm_func_start ov29_022EBA94
ov29_022EBA94: ; 0x022EBA94
	mov r2, #0x1b
	strh r2, [r0]
	mov r2, #0
	strb r2, [r0, #4]
	strb r2, [r0, #0xa]
	strb r1, [r0, #4]
	bx lr
	arm_func_end ov29_022EBA94

	arm_func_start ov29_022EBAB0
ov29_022EBAB0: ; 0x022EBAB0
	ldrb ip, [sp]
	cmp ip, #0
	cmpeq r3, #0
	ldrne r0, _022EBB48 ; =0x0237C96C
	movne r2, #0x80
	strneb r2, [r0]
	bne _022EBB30
	cmp r2, #0
	ldreq r2, _022EBB48 ; =0x0237C96C
	addeq r0, r0, #1
	streqb r0, [r2]
	beq _022EBB30
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _022EBB20
_022EBAEC: ; jump table
	b _022EBB20 ; case 0
	b _022EBB00 ; case 1
	b _022EBB08 ; case 2
	b _022EBB10 ; case 3
	b _022EBB18 ; case 4
_022EBB00:
	mov r2, #0
	b _022EBB24
_022EBB08:
	mov r2, #1
	b _022EBB24
_022EBB10:
	mov r2, #2
	b _022EBB24
_022EBB18:
	mov r2, #3
	b _022EBB24
_022EBB20:
	mov r2, #0
_022EBB24:
	ldr r0, _022EBB48 ; =0x0237C96C
	add r2, r2, #0x90
	strb r2, [r0]
_022EBB30:
	ldrsh r2, [r1]
	ldr r0, _022EBB48 ; =0x0237C96C
	strh r2, [r0, #2]
	ldrsh r1, [r1, #2]
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_022EBB48: .word 0x0237C96C
	arm_func_end ov29_022EBAB0

	arm_func_start ov29_022EBB4C
ov29_022EBB4C: ; 0x022EBB4C
	ldr r0, _022EBB64 ; =0x0237C96C
	mov r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_022EBB64: .word 0x0237C96C
	arm_func_end ov29_022EBB4C

	arm_func_start ov29_022EBB68
ov29_022EBB68: ; 0x022EBB68
	ldr r1, _022EBB88 ; =0x0237C96C
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r1, [r1, #4]
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_022EBB88: .word 0x0237C96C
	arm_func_end ov29_022EBB68

	arm_func_start ov29_022EBB8C
ov29_022EBB8C: ; 0x022EBB8C
	ldr r0, _022EBB94 ; =0x0237C96C
	bx lr
	.align 2, 0
_022EBB94: .word 0x0237C96C
	arm_func_end ov29_022EBB8C

	arm_func_start ov29_022EBB98
ov29_022EBB98: ; 0x022EBB98
	ldr r0, _022EBBA4 ; =0x0237C96C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_022EBBA4: .word 0x0237C96C
	arm_func_end ov29_022EBB98

	arm_func_start ov29_022EBBA8
ov29_022EBBA8: ; 0x022EBBA8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl SetMonsterActionFields
	ldr r0, _022EBBE4 ; =0x0237C96C
	mov r1, #0
	ldrh r2, [r0]
	strh r2, [r4, #4]
	ldrh r2, [r0, #2]
	strh r2, [r4, #6]
	ldrh r0, [r0, #4]
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xe]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022EBBE4: .word 0x0237C96C
	arm_func_end ov29_022EBBA8

	arm_func_start ov29_022EBBE8
ov29_022EBBE8: ; 0x022EBBE8
	stmdb sp!, {r4, lr}
	mov r1, #0xc
	mov r4, r0
	bl SetMonsterActionFields
	ldr r0, _022EBC28 ; =0x0237C96C
	mov r1, #0
	ldrh r2, [r0]
	strh r2, [r4, #4]
	ldrh r2, [r0, #2]
	strh r2, [r4, #6]
	ldrh r0, [r0, #4]
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xe]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022EBC28: .word 0x0237C96C
	arm_func_end ov29_022EBBE8

	arm_func_start ov29_022EBC2C
ov29_022EBC2C: ; 0x022EBC2C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0x1d
	mov r6, r0
	mov r4, r2
	bl SetMonsterActionFields
	strb r5, [r6, #4]
	strb r4, [r6, #0xa]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov29_022EBC2C

	arm_func_start SetActionRegularAttack
SetActionRegularAttack: ; 0x022EBC50
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x32
	mov r5, r0
	bl SetMonsterActionFields
	cmp r4, #0xff
	andne r0, r4, #7
	strneb r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end SetActionRegularAttack

	arm_func_start ov29_022EBC74
ov29_022EBC74: ; 0x022EBC74
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x17
	mov r5, r0
	bl SetMonsterActionFields
	cmp r4, #0xff
	andne r0, r4, #7
	strneb r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022EBC74

	arm_func_start ov29_022EBC98
ov29_022EBC98: ; 0x022EBC98
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0x14
	mov r6, r0
	mov r4, r2
	bl SetMonsterActionFields
	strb r5, [r6, #4]
	strb r4, [r6, #0xa]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov29_022EBC98

	arm_func_start SetActionUseMoveAi
SetActionUseMoveAi: ; 0x022EBCBC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0x15
	mov r6, r0
	mov r4, r2
	bl SetMonsterActionFields
	cmp r4, #0xff
	strb r5, [r6, #4]
	andne r0, r4, #7
	strneb r0, [r6, #2]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end SetActionUseMoveAi

	arm_func_start ov29_022EBCE8
ov29_022EBCE8: ; 0x022EBCE8
	ldrh r1, [r0]
	cmp r1, #0x15
	ldreqb r0, [r0, #4]
	bxeq lr
	cmp r1, #0x14
	ldreqb r0, [r0, #0xa]
	mvnne r0, #0
	bx lr
	arm_func_end ov29_022EBCE8

	arm_func_start RunFractionalTurn
RunFractionalTurn: ; 0x022EBD08
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	mov r4, r0
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	bl TrySpawnMonsterAndActivatePlusMinus
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	mov r0, r4
	bl RunLeaderTurn
	mov r4, r0
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	cmp r4, #0
	beq _022EBD60
	bl DecrementWindCounter
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
_022EBD60:
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	bl GetLeader
	mov r8, r0
	bl ov29_02348FD8
	mov r5, #0
	b _022EBECC
_022EBD80:
	ldr r0, _022EC2FC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r4, [r0, #0xb28]
	mov r0, r4
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EBEC8
	ldr r6, [r4, #0xb4]
	ldrb r0, [r6, #7]
	cmp r0, #0
	bne _022EBEC8
	bl IsFloorOver
	cmp r0, #0
	bne _022EBED4
	ldr r1, _022EC2FC ; =0x02353538
	mov r0, r4
	ldr r1, [r1]
	str r4, [r1, #0xc4]
	bl sub_01FFBDF4
	bl TryActivateArtificialWeatherAbilities
	mov r1, #0
	mov r0, r4
	strb r1, [r6, #0x14e]
	bl CalcSpeedStageWrapper
	ldr r1, _022EC2FC ; =0x02353538
	ldr r3, _022EC300 ; =0x02352284
	ldr r2, [r1]
	mov r1, #0x32
	add r2, r2, #0x700
	ldrsh r2, [r2, #0x80]
	mla r1, r0, r1, r3
	mov r0, r2, lsl #1
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _022EBEC8
	ldrb r0, [r6, #0x152]
	cmp r0, #0
	bne _022EBEC8
	ldrh r0, [r6]
	tst r0, #0x8000
	bne _022EBEC8
	tst r0, #0x4000
	bicne r0, r0, #0x4000
	strneh r0, [r6]
	bne _022EBEC8
	mov r1, #0
	mov r0, r4
	strb r1, [r6, #0x14f]
	bl TickStatusAndHealthRegen
	mov r0, r4
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EBEC8
	mov r0, r4
	bl EnemyEvolution
	mov r0, r4
	mov r1, #1
	bl ov29_02307D54
	mov sb, #0
	mov r7, sb
	mov r6, sb
	b _022EBEC0
_022EBE80:
	mov r0, r4
	mov r1, r7
	bl RunMonsterAi
	bl IsFloorOver
	cmp r0, #0
	bne _022EBEC8
	mov r0, r4
	bl ExecuteMonsterAction
	cmp r0, #0
	beq _022EBEC8
	mov r0, r6
	bl TryForcedLoss
	bl IsFloorOver
	cmp r0, #0
	bne _022EBEC8
	add sb, sb, #1
_022EBEC0:
	cmp sb, #3
	blt _022EBE80
_022EBEC8:
	add r5, r5, #1
_022EBECC:
	cmp r5, #4
	blt _022EBD80
_022EBED4:
	mov sb, #0
_022EBED8:
	mov r3, #0
	mov sl, r3
	add r2, sp, #0
_022EBEE4:
	mov r0, r3, lsl #3
	str sl, [r2, r3, lsl #3]
	add r3, r3, #1
	add r1, r2, r3, lsl #3
	add r0, r2, r0
	str r1, [r0, #4]
	cmp r3, #3
	blt _022EBEE4
	str sl, [sp, #0x18]
	str sl, [sp, #0x1c]
	add r4, sp, #0x20
	add fp, sp, #0
	mov r6, #0
_022EBF18:
	ldr r0, _022EC2FC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, sl, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl EntityIsValid__022EC608
	cmp r0, #0
	ldrne r1, [r7, #0xb4]
	ldrneb r0, [r1, #0x14e]
	cmpne r0, #0
	beq _022EBFA8
	ldrb r0, [r1, #7]
	cmp r0, #0
	strneb r6, [r1, #0x14f]
	strneb r6, [r1, #0x14e]
	bne _022EBFA8
	ldrsh r1, [r8, #6]
	ldrsh r0, [r7, #6]
	sub r0, r1, r0
	bl Abs
	ldrsh r2, [r8, #4]
	ldrsh r1, [r7, #4]
	mov r5, r0
	sub r0, r2, r1
	bl Abs
	cmp r0, r5
	movle r0, r5
	cmp r0, #3
	movge r0, #2
	add r2, fp, r0, lsl #3
	ldr r1, [r2, #4]
	add r0, r4, sl, lsl #3
	str r7, [r4, sl, lsl #3]
	str r1, [r0, #4]
	str r0, [r2, #4]
_022EBFA8:
	add sl, sl, #1
	cmp sl, #4
	blt _022EBF18
	mov r7, #0
	add r5, sp, #0
	mov sl, #1
	mov r6, r7
	b _022EC00C
_022EBFC8:
	ldr r4, [r5]
	cmp r4, #0
	beq _022EC008
	ldr r2, [r4, #0xb4]
	mov r0, r4
	strb sl, [r2, #0x14f]
	mov r1, sl
	strb r7, [r2, #0x14e]
	bl RunMonsterAi
	mov r0, r4
	bl ExecuteMonsterAction
	bl ov29_022EF9C8
	mov r0, r6
	bl TryForcedLoss
	mov r0, r4
	bl EntityIsValid__022EC608
_022EC008:
	ldr r5, [r5, #4]
_022EC00C:
	cmp r5, #0
	bne _022EBFC8
	add sb, sb, #1
	cmp sb, #3
	blt _022EBED8
	bl IsFloorOver
	cmp r0, #0
	bne _022EC094
	mov r4, #0
	ldr r5, _022EC2FC ; =0x02353538
	mov r6, r4
_022EC038:
	ldr r0, [r5]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl EntityIsValid__022EC608
	cmp r0, #0
	ldrne r8, [r7, #0xb4]
	ldrneb r0, [r8, #0x14e]
	cmpne r0, #0
	beq _022EC088
	mov r0, r7
	bl ov29_0230FC24
	mov r0, r7
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC088
	mov r0, r7
	bl EnemyEvolution
	strb r6, [r8, #0x14e]
_022EC088:
	add r4, r4, #1
	cmp r4, #4
	blt _022EC038
_022EC094:
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	mov sb, #0
	mov r5, sb
	mov r7, sb
	ldr r6, _022EC300 ; =0x02352284
	mov fp, #0x32
	ldr r4, _022EC2FC ; =0x02353538
	b _022EC1C0
_022EC0BC:
	ldr r0, [r4]
	add r0, r0, sb, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb38]
	mov r0, r8
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC1BC
	bl IsFloorOver
	cmp r0, #0
	bne _022EC1C8
	ldr sl, [r8, #0xb4]
	ldr r1, [r4]
	mov r0, r8
	str r8, [r1, #0xc4]
	bl sub_01FFBDF4
	bl TryActivateArtificialWeatherAbilities
	ldrh r0, [sl]
	tst r0, #0x8000
	bne _022EC1BC
	tst r0, #0x4000
	bicne r0, r0, #0x4000
	strneh r0, [sl]
	bne _022EC1BC
	mov r0, r8
	strb r7, [sl, #0x14e]
	bl CalcSpeedStageWrapper
	ldr r2, [r4]
	mla r1, r0, fp, r6
	add r0, r2, #0x700
	ldrsh r0, [r0, #0x80]
	mov r0, r0, lsl #1
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _022EC1BC
	ldrb r0, [sl, #0x152]
	cmp r0, #0
	bne _022EC1BC
	ldrh r1, [sl]
	mov r0, r8
	bic r1, r1, #0xc000
	strh r1, [sl]
	strb r5, [sl, #0x14f]
	bl TickStatusAndHealthRegen
	mov r0, r8
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC1BC
	mov r0, r8
	bl EnemyEvolution
	mov r0, r8
	mov r1, #0
	bl RunMonsterAi
	bl IsFloorOver
	cmp r0, #0
	bne _022EC1C8
	mov r0, r8
	bl ExecuteMonsterAction
	bl ov29_022EF9C8
	mov r0, #0
	bl TryForcedLoss
	bl IsFloorOver
	cmp r0, #0
	bne _022EC1C8
_022EC1BC:
	add sb, sb, #1
_022EC1C0:
	cmp sb, #0x10
	blt _022EC0BC
_022EC1C8:
	bl IsFloorOver
	cmp r0, #0
	bne _022EC23C
	mov r4, #0
	ldr r5, _022EC2FC ; =0x02353538
	mov r6, r4
_022EC1E0:
	ldr r0, [r5]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb38]
	mov r0, r7
	bl EntityIsValid__022EC608
	cmp r0, #0
	ldrne r8, [r7, #0xb4]
	ldrneb r0, [r8, #0x14e]
	cmpne r0, #0
	beq _022EC230
	mov r0, r7
	bl ov29_0230FC24
	mov r0, r7
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC230
	mov r0, r7
	bl EnemyEvolution
	strb r6, [r8, #0x14e]
_022EC230:
	add r4, r4, #1
	cmp r4, #0x10
	blt _022EC1E0
_022EC23C:
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	ldr r4, _022EC2FC ; =0x02353538
	ldr r1, _022EC304 ; =0x023522B6
	ldr r0, [r4]
	add r0, r0, #0x700
	ldrsh r0, [r0, #0x80]
	add r0, r0, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r1, r0]
	cmp r0, #0
	beq _022EC2C4
	mov r5, #0
	b _022EC2A4
_022EC278:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb78]
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC2A0
	mov r0, #0
	bl DisplayActions
	b _022EC2AC
_022EC2A0:
	add r5, r5, #1
_022EC2A4:
	cmp r5, #0x14
	blt _022EC278
_022EC2AC:
	mov r0, #1
	mov r1, #0
	bl ov29_023354C4
	bl ov29_022EF9C8
	mov r0, #0
	bl TryForcedLoss
_022EC2C4:
	ldr r1, _022EC2FC ; =0x02353538
	ldr r0, [r1]
	add r0, r0, #0x700
	ldrsh r2, [r0, #0x80]
	add r2, r2, #1
	strh r2, [r0, #0x80]
	ldr r0, [r1]
	add r0, r0, #0x700
	ldrsh r1, [r0, #0x80]
	cmp r1, #0x18
	moveq r1, #0
	streqh r1, [r0, #0x80]
_022EC2F4:
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EC2FC: .word 0x02353538
_022EC300: .word 0x02352284
_022EC304: .word 0x023522B6
	arm_func_end RunFractionalTurn

	arm_func_start RunLeaderTurn
RunLeaderTurn: ; 0x022EC308
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl GetLeader
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov29_02348FD8
	bl TryActivateArtificialWeatherAbilities
	mov r0, r4
	bl CalcSpeedStageWrapper
	ldr r1, _022EC600 ; =0x02353538
	ldr r3, _022EC604 ; =0x02352284
	ldr r2, [r1]
	mov r1, #0x32
	add r2, r2, #0x700
	mla r1, r0, r1, r3
	ldrsh r2, [r2, #0x80]
	mov r0, r2, lsl #1
	ldrsh r0, [r0, r1]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0x152]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r4
	mov r1, #1
	bl ov29_02307D54
_022EC380:
	bl GetLeader
	movs sb, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_01FFBDF4
	mov r0, #0
	bl DisplayActions
	cmp r0, #0
	bne _022EC3C8
	ldr r0, _022EC600 ; =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x78b]
	cmp r0, #0
	ldreqb r0, [r1, #0x78e]
	cmpeq r0, #0
	beq _022EC3C8
	mov r0, #0xc
	bl AdvanceFrame
_022EC3C8:
	cmp sb, #0
	moveq r0, #0
	beq _022EC3E8
	ldr r0, [sb]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
_022EC3E8:
	cmp r0, #0
	ldrne r0, [sb, #0xb4]
	movne r1, #0
	strneb r1, [r0, #0x101]
	bl IsFloorOver
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022EC600 ; =0x02353538
	mov r1, #0
	ldr r2, [r0]
	cmp sl, #0
	str sb, [r2, #0xc4]
	ldr r0, [r0]
	movne sl, r1
	str r1, [r0, #0xc8]
	bne _022EC434
	mov r0, sb
	bl TickStatusAndHealthRegen
_022EC434:
	bl IsFloorOver
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov29_022E81F8
	mov r0, sb
	bl EnemyEvolution
	ldr r0, _022EC600 ; =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x11]
	bl ov29_022F0EDC
	ldr r0, _022EC600 ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x11]
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb
	bl ExecuteMonsterAction
	bl ov29_022EF9C8
	mov r0, #0
	bl TryForcedLoss
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb, #0xb4]
	ldrh r0, [r1]
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	strneh r0, [r1]
	ldrneh r0, [r1]
	orrne r0, r0, #0x4000
	strneh r0, [r1]
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _022EC600 ; =0x02353538
	ldr r1, [r4]
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _022EC59C
	mov r7, #0
	strb r7, [r1, #0x10]
	mov r5, r7
	mov fp, r7
	b _022EC594
_022EC500:
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC590
	ldr r8, [r6, #0xb4]
	ldrh r0, [r8]
	tst r0, #0x8000
	beq _022EC590
	bl IsFloorOver
	cmp r0, #0
	bne _022EC59C
	mov r0, r6
	bl TickStatusAndHealthRegen
	mov r0, r6
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC590
	mov r0, r6
	bl EnemyEvolution
	mov r0, r6
	mov r1, r5
	bl RunMonsterAi
	mov r0, r6
	bl ExecuteMonsterAction
	mov r0, fp
	bl TryForcedLoss
	ldrh r0, [r8]
	bic r0, r0, #0x8000
	strh r0, [r8]
	ldrh r0, [r8]
	orr r0, r0, #0x4000
	strh r0, [r8]
_022EC590:
	add r7, r7, #1
_022EC594:
	cmp r7, #0x14
	blt _022EC500
_022EC59C:
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022EC600 ; =0x02353538
	ldr r1, [r0]
	ldr r0, [r1, #0xc8]
	cmp r0, #0
	beq _022EC5DC
	bl ov29_022F3934
	ldr r0, _022EC600 ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	mov sl, #1
	str r1, [r0, #0xc8]
	b _022EC380
_022EC5DC:
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0x101]
	cmp r0, #0
	addne r0, r1, #0x700
	movne r1, #0
	strneh r1, [r0, #0x80]
	bne _022EC380
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EC600: .word 0x02353538
_022EC604: .word 0x02352284
	arm_func_end RunLeaderTurn

	arm_func_start EntityIsValid__022EC608
EntityIsValid__022EC608: ; 0x022EC608
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__022EC608

	arm_func_start ov29_022EC62C
ov29_022EC62C: ; 0x022EC62C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	bl GetLeader
	cmp r6, r0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r7, _022EC6D8 ; =0x02353538
	ldr r1, [r7]
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r4, #0
	strb r4, [r1, #0x10]
	mov sb, r4
	mov r8, r4
	b _022EC6CC
_022EC668:
	ldr r0, [r7]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb78]
	mov r0, r5
	bl EntityIsValid__022EC608
	cmp r0, #0
	cmpne r6, r5
	beq _022EC6C8
	ldr r0, [r5, #0xb4]
	ldrh r0, [r0]
	tst r0, #0x8000
	beq _022EC6C8
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r5
	mov r1, sb
	bl RunMonsterAi
	mov r0, r5
	bl ExecuteMonsterAction
	bl ov29_022EF9C8
	mov r0, r8
	bl TryForcedLoss
_022EC6C8:
	add r4, r4, #1
_022EC6CC:
	cmp r4, #0x14
	blt _022EC668
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022EC6D8: .word 0x02353538
	arm_func_end ov29_022EC62C

	arm_func_start TrySpawnMonsterAndActivatePlusMinus
TrySpawnMonsterAndActivatePlusMinus: ; 0x022EC6DC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r0, _022EC7E0 ; =0x02353538
	ldr r1, _022EC7E4 ; =0x023522B6
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsh r0, [r0, #0x80]
	mov r0, r0, lsl #1
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl TrySpawnMonsterAndTickSpawnCounter
	ldr r4, _022EC7E0 ; =0x02353538
	mov r8, #0
	ldr r0, [r4]
	mov fp, #1
	add r0, r0, #0x3000
	strb r8, [r0, #0xe34]
	ldr r0, [r4]
	mov r7, r8
	add r0, r0, #0x3000
	strb r8, [r0, #0xe35]
	ldr r0, [r4]
	mov r6, fp
	add r0, r0, #0x3000
	strb r8, [r0, #0xe36]
	ldr r0, [r4]
	mov r5, fp
	add r0, r0, #0x3000
	strb r8, [r0, #0xe37]
_022EC750:
	ldr r0, [r4]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb78]
	mov r0, sb
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC7C8
	ldr r0, [sb, #0xb4]
	mov r1, #0x3f
	strb r7, [r0, #0x152]
	ldrb r0, [r0, #6]
	cmp r0, #0
	moveq sl, fp
	mov r0, sb
	movne sl, r7
	bl AbilityIsActive2
	cmp r0, #0
	ldrne r0, [r4]
	mov r1, #0x38
	addne r0, r0, sl
	addne r0, r0, #0x3000
	strneb r6, [r0, #0xe36]
	mov r0, sb
	bl AbilityIsActive2
	cmp r0, #0
	ldrne r0, [r4]
	addne r0, r0, sl
	addne r0, r0, #0x3000
	strneb r5, [r0, #0xe34]
_022EC7C8:
	add r8, r8, #1
	cmp r8, #0x14
	blt _022EC750
	mov r0, #0
	bl TryForcedLoss
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EC7E0: .word 0x02353538
_022EC7E4: .word 0x023522B6
	arm_func_end TrySpawnMonsterAndActivatePlusMinus

	arm_func_start IsFloorOver
IsFloorOver: ; 0x022EC7E8
	stmdb sp!, {r3, lr}
	ldr r0, _022EC858 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
	bl GetLeader
	cmp r0, #0
	ldreq r1, _022EC858 ; =0x02353538
	moveq r0, #1
	ldreq r1, [r1]
	streqb r0, [r1, #0x758]
	ldmeqia sp!, {r3, pc}
	ldr r0, _022EC858 ; =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #1
	moveq r0, #2
	streqb r0, [r1, #0x758]
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r0, #2
	moveq r0, #2
	streqb r0, [r1, #0x758]
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EC858: .word 0x02353538
	arm_func_end IsFloorOver

	arm_func_start ov29_022EC85C
ov29_022EC85C: ; 0x022EC85C
	stmdb sp!, {r3, lr}
	bl GetForcedLossReason
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
	bl IsFloorOver
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022EC85C

	arm_func_start ov29_022EC878
ov29_022EC878: ; 0x022EC878
	mov r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strb r2, [r0, #3]
	strb r2, [r0, #4]
	ldr r1, _022EC8A4 ; =0x02353598
	strb r2, [r0, #5]
	mov r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_022EC8A4: .word 0x02353598
	arm_func_end ov29_022EC878

	arm_func_start ov29_022EC8A8
ov29_022EC8A8: ; 0x022EC8A8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	mov r0, r2
	mov r1, #0x30
	mov r4, r3
	bl DivideInt
	mov r3, r1, lsl #1
	and r0, r3, #0xff
	mov r2, r0, lsr #1
	ldr r1, _022EC998 ; =0x02352390
	mov r0, #0xc0
	strb r3, [r6, #4]
	add r2, r2, #1
	strb r2, [r6, #2]
	add r4, r4, #2
	smlabb r5, r5, r0, r1
	b _022EC96C
_022EC8F0:
	strb r4, [r6, #3]
	mov r8, #0x63
	ldr r7, _022EC99C ; =0x02353538
	b _022EC93C
_022EC900:
	ldrb r1, [r6, #3]
	mov r0, r8
	sub r1, r1, #1
	strb r1, [r6, #3]
	ldrb r1, [r6, #5]
	eor r1, r1, #1
	strb r1, [r6, #5]
	ldrb r3, [r6, #4]
	and r2, r1, #0xff
	ldr r1, [r7]
	add r2, r3, r2
	ldr r2, [r5, r2, lsl #2]
	add r1, r1, #0x1a000
	str r2, [r1, #0x230]
	bl AdvanceFrame
_022EC93C:
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _022EC900
	ldrb r0, [r6, #4]
	cmp r0, #0
	subne r0, r0, #2
	strneb r0, [r6, #4]
	mov r0, #0
	strb r0, [r6, #5]
	ldrb r0, [r6, #2]
	sub r0, r0, #1
	strb r0, [r6, #2]
_022EC96C:
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _022EC8F0
	ldr r0, _022EC99C ; =0x02353538
	mov r2, #0
	ldr r0, [r0]
	ldr r1, _022EC9A0 ; =0x02353598
	add r0, r0, #0x1a000
	str r2, [r0, #0x230]
	strb r2, [r1]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022EC998: .word 0x02352390
_022EC99C: .word 0x02353538
_022EC9A0: .word 0x02353598
	arm_func_end ov29_022EC8A8

	arm_func_start ov29_022EC9A4
ov29_022EC9A4: ; 0x022EC9A4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r3, #0xc
	smulbb r3, r1, r3
	ldr r1, _022ECAD8 ; =0x022C6320
	mov r6, r0
	ldrb r4, [r1, r3]
	mov r5, r2
	cmp r4, #5
	beq _022ECA28
	cmp r5, #0
	bne _022EC9E0
	ldr r1, _022ECADC ; =0x00000BFD
	bl LogMessageByIdWithPopupCheckUser
	b _022ECA18
_022EC9E0:
	cmp r5, #1
	bne _022EC9F4
	ldr r1, _022ECAE0 ; =0x00000BFE
	bl LogMessageByIdWithPopupCheckUser
	b _022ECA18
_022EC9F4:
	cmp r5, #2
	bne _022ECA08
	ldr r1, _022ECAE4 ; =0x00000BFF
	bl LogMessageByIdWithPopupCheckUser
	b _022ECA18
_022ECA08:
	cmp r5, #3
	bne _022ECA18
	mov r1, #0xc00
	bl LogMessageByIdWithPopupCheckUser
_022ECA18:
	mov r0, r4
	mov r1, #0
	bl ov29_022E5DBC
	b _022ECAD0
_022ECA28:
	bl ov29_022EAEF0
	mov r4, r0
	cmp r5, #0
	bne _022ECA48
	ldr r1, _022ECAE8 ; =0x00000C01
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	b _022ECA8C
_022ECA48:
	cmp r5, #1
	bne _022ECA60
	ldr r1, _022ECAEC ; =0x00000C02
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	b _022ECA8C
_022ECA60:
	cmp r5, #2
	bne _022ECA78
	ldr r1, _022ECAF0 ; =0x00000C03
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	b _022ECA8C
_022ECA78:
	cmp r5, #3
	bne _022ECA8C
	ldr r1, _022ECAF4 ; =0x00000C04
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
_022ECA8C:
	add r0, sp, #0
	bl ov29_022EC878
	ldr r0, _022ECAF8 ; =0x02352380
	ldr r0, [r0, r5, lsl #2]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov29_022EAE14
	mov r0, r5, lsl #2
	add r0, r0, #8
	mov r2, r0, lsl #0x10
	mov r3, r2, asr #0x10
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x10
	bl ov29_022EC8A8
	mov r0, r4
	bl ov29_022EAE14
_022ECAD0:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022ECAD8: .word 0x022C6320
_022ECADC: .word 0x00000BFD
_022ECAE0: .word 0x00000BFE
_022ECAE4: .word 0x00000BFF
_022ECAE8: .word 0x00000C01
_022ECAEC: .word 0x00000C02
_022ECAF0: .word 0x00000C03
_022ECAF4: .word 0x00000C04
_022ECAF8: .word 0x02352380
	arm_func_end ov29_022EC9A4

	arm_func_start ov29_022ECAFC
ov29_022ECAFC: ; 0x022ECAFC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, sp, #0
	bl ov29_022EC878
	mov r0, r4, lsl #2
	add r0, r0, #2
	mov r2, r0, lsl #0x10
	mov r3, r2, asr #0x10
	add r0, sp, #0
	mov r1, r4
	mov r2, #8
	bl ov29_022EC8A8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022ECAFC

	arm_func_start ov29_022ECB38
ov29_022ECB38: ; 0x022ECB38
	ldr r0, _022ECB44 ; =0x02353598
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_022ECB44: .word 0x02353598
	arm_func_end ov29_022ECB38

	arm_func_start DecrementWindCounter
DecrementWindCounter: ; 0x022ECB48
	stmdb sp!, {r4, lr}
	bl GetLeader
	movs r4, r0
	moveq r0, #0
	beq _022ECB70
	ldr r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_022ECB70:
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _022ECD7C ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsh r1, [r0, #0x84]
	cmp r1, #0
	subgt r1, r1, #1
	strgth r1, [r0, #0x84]
	ldr r0, _022ECD7C ; =0x02353538
	ldr r1, [r0]
	add r0, r1, #0x700
	ldrsh r0, [r0, #0x84]
	cmp r0, #1
	movlt r0, #3
	strltb r0, [r1, #0x79a]
	ldr r0, _022ECD7C ; =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x79a]
	cmp r0, #0
	bne _022ECC2C
	add r0, r1, #0x700
	ldrsh r0, [r0, #0x84]
	cmp r0, #0xfa
	ldmgeia sp!, {r4, pc}
	bl ov29_022F2FE4
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl ov29_022F98B4
	mov r0, r4
	bl DisplayActions
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r1, _022ECD7C ; =0x02353538
	mov r0, r4
	ldr r2, [r1]
	add r1, r2, #0x4000
	ldrsh r1, [r1, #0xd4]
	ldrb r2, [r2, #0x79a]
	bl ov29_022EC9A4
	ldr r0, _022ECD7C ; =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x79a]
	ldmia sp!, {r4, pc}
_022ECC2C:
	cmp r0, #1
	bne _022ECC9C
	add r0, r1, #0x700
	ldrsh r0, [r0, #0x84]
	cmp r0, #0x96
	ldmgeia sp!, {r4, pc}
	bl ov29_022F2FE4
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl ov29_022F98B4
	mov r0, r4
	bl DisplayActions
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r1, _022ECD7C ; =0x02353538
	mov r0, r4
	ldr r2, [r1]
	add r1, r2, #0x4000
	ldrsh r1, [r1, #0xd4]
	ldrb r2, [r2, #0x79a]
	bl ov29_022EC9A4
	ldr r0, _022ECD7C ; =0x02353538
	mov r1, #2
	ldr r0, [r0]
	strb r1, [r0, #0x79a]
	ldmia sp!, {r4, pc}
_022ECC9C:
	cmp r0, #2
	add r0, r1, #0x700
	ldrsh r0, [r0, #0x84]
	bne _022ECD0C
	cmp r0, #0x32
	ldmgeia sp!, {r4, pc}
	bl ov29_022F2FE4
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl ov29_022F98B4
	mov r0, r4
	bl DisplayActions
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r1, _022ECD7C ; =0x02353538
	mov r0, r4
	ldr r2, [r1]
	add r1, r2, #0x4000
	ldrsh r1, [r1, #0xd4]
	ldrb r2, [r2, #0x79a]
	bl ov29_022EC9A4
	ldr r0, _022ECD7C ; =0x02353538
	mov r1, #3
	ldr r0, [r0]
	strb r1, [r0, #0x79a]
	ldmia sp!, {r4, pc}
_022ECD0C:
	cmp r0, #1
	ldmgeia sp!, {r4, pc}
	bl ov29_022F2FE4
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl ov29_022F98B4
	mov r0, r4
	bl DisplayActions
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r1, _022ECD7C ; =0x02353538
	mov r0, r4
	ldr r2, [r1]
	add r1, r2, #0x4000
	ldrsh r1, [r1, #0xd4]
	ldrb r2, [r2, #0x79a]
	bl ov29_022EC9A4
	ldr r0, _022ECD7C ; =0x02353538
	ldr r1, _022ECD80 ; =0x0000025D
	ldr r3, [r0]
	mov ip, #4
	mov r0, r4
	mov r2, r4
	strb ip, [r3, #0x79a]
	bl HandleFaint
	ldmia sp!, {r4, pc}
	.align 2, 0
_022ECD7C: .word 0x02353538
_022ECD80: .word 0x0000025D
	arm_func_end DecrementWindCounter

	arm_func_start ov29_022ECD84
ov29_022ECD84: ; 0x022ECD84
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl EntityIsValid__022ECDC0
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	cmp r0, #1
	ldmneia sp!, {r4, pc}
	ldr r1, [r4, #0xb4]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _022ECDBC ; =0x0237C974
	bl ov29_02300164
	ldmia sp!, {r4, pc}
	.align 2, 0
_022ECDBC: .word 0x0237C974
	arm_func_end ov29_022ECD84

	arm_func_start EntityIsValid__022ECDC0
EntityIsValid__022ECDC0: ; 0x022ECDC0
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__022ECDC0

	arm_func_start ov29_022ECDE4
ov29_022ECDE4: ; 0x022ECDE4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _022ECF34 ; =0x02353538
	mov r6, r1
	ldr r1, [r4]
	mov sb, r0
	add r1, r1, #0x20c
	mov r0, r6
	mov r8, r2
	mov r7, r3
	add r4, r1, #0x2c800
	mov r5, #0
	bl EntityIsValid__022ECDC0
	cmp r0, #0
	beq _022ECE28
	ldr r0, [r6]
	cmp r0, #1
	ldreq r5, [r6, #0xb4]
_022ECE28:
	cmp r5, #0
	ldr r6, [r8, #0xb4]
	beq _022ECE44
	mov r0, r4
	mov r1, r5
	bl ov29_02300164
	b _022ECE6C
_022ECE44:
	ldr r1, _022ECF38 ; =0x0237C974
	ldrb r0, [r1]
	cmp r0, #0
	beq _022ECE60
	mov r0, r4
	bl Strcpy
	b _022ECE6C
_022ECE60:
	ldr r1, _022ECF3C ; =0x00000A41
	mov r0, r4
	bl GetStringFromFileVeneer
_022ECE6C:
	mov r1, r6
	add r0, r4, #0x1e
	bl ov29_02300164
	cmp r7, #0
	moveq r0, #0
	streqb r0, [r4, #0x3c]
	beq _022ECE94
	mov r1, r7
	add r0, r4, #0x3c
	bl Strcpy
_022ECE94:
	mov r1, r8
	add r0, r4, #0x70
	bl ov29_022F89CC
	strh sb, [r4, #0x5a]
	ldrh r1, [r6, #0x62]
	ldr r0, _022ECF40 ; =0x000003E7
	ldr r3, _022ECF34 ; =0x02353538
	strh r1, [r4, #0x5e]
	ldrh r1, [r6, #0x64]
	strh r1, [r4, #0x60]
	ldrh r1, [r6, #0x66]
	strh r1, [r4, #0x62]
	ldr r1, [r6, #0x20]
	str r1, [r4, #0x64]
	ldrb r1, [r6, #0xa]
	strb r1, [r4, #0x6e]
	ldrsh r2, [r6, #0x12]
	ldrsh r1, [r6, #0x16]
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r4, #0x68]
	ldrb r1, [r6, #0x1a]
	ldr r0, _022ECF38 ; =0x0237C974
	mov r2, #0x28
	strb r1, [r4, #0x6a]
	ldrb r5, [r6, #0x1b]
	mov r1, #0
	strb r5, [r4, #0x6b]
	ldrb r5, [r6, #0x1c]
	strb r5, [r4, #0x6c]
	ldrb r5, [r6, #0x1d]
	strb r5, [r4, #0x6d]
	ldr r5, [r3]
	ldrb r3, [r5, #0x748]
	strb r3, [r4, #0x5c]
	ldrb r3, [r5, #0x749]
	strb r3, [r4, #0x5d]
	bl Memset
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022ECF34: .word 0x02353538
_022ECF38: .word 0x0237C974
_022ECF3C: .word 0x00000A41
_022ECF40: .word 0x000003E7
	arm_func_end ov29_022ECDE4

	arm_func_start ov29_022ECF44
ov29_022ECF44: ; 0x022ECF44
	ldr r1, _022ECF6C ; =0x02353538
	ldr r0, _022ECF70 ; =0x0002CA66
	ldr r2, [r1]
	ldr r1, _022ECF74 ; =0x00000279
	ldrsh r0, [r2, r0]
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022ECF6C: .word 0x02353538
_022ECF70: .word 0x0002CA66
_022ECF74: .word 0x00000279
	arm_func_end ov29_022ECF44

	arm_func_start ov29_022ECF78
ov29_022ECF78: ; 0x022ECF78
	ldr r1, _022ECFAC ; =0x02353538
	ldr r0, _022ECFB0 ; =0x0002CA66
	ldr r2, [r1]
	ldr r1, _022ECFB4 ; =0x0000027A
	ldrsh r2, [r2, r0]
	cmp r2, r1
	addne r0, r1, #3
	cmpne r2, r0
	addne r0, r1, #1
	cmpne r2, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022ECFAC: .word 0x02353538
_022ECFB0: .word 0x0002CA66
_022ECFB4: .word 0x0000027A
	arm_func_end ov29_022ECF78

	arm_func_start ov29_022ECFB8
ov29_022ECFB8: ; 0x022ECFB8
	stmdb sp!, {r4, lr}
	ldr r1, _022ED004 ; =0x02353538
	mov r4, r0
	ldr r1, [r1]
	cmp r1, #0
	beq _022ECFF8
	add r0, r1, #0x20c
	add lr, r0, #0x2c800
	mov ip, #0xe
_022ECFDC:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _022ECFDC
	ldmia lr, {r0, r1}
	stmia r4, {r0, r1}
	ldmia sp!, {r4, pc}
_022ECFF8:
	mov r1, #0xe8
	bl MemZero
	ldmia sp!, {r4, pc}
	.align 2, 0
_022ED004: .word 0x02353538
	arm_func_end ov29_022ECFB8

	arm_func_start SetForcedLossReason
SetForcedLossReason: ; 0x022ED008
	ldr r1, _022ED018 ; =0x02353538
	ldr r1, [r1]
	str r0, [r1, #0x14]
	bx lr
	.align 2, 0
_022ED018: .word 0x02353538
	arm_func_end SetForcedLossReason

	arm_func_start GetForcedLossReason
GetForcedLossReason: ; 0x022ED01C
	ldr r0, _022ED02C ; =0x02353538
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	bx lr
	.align 2, 0
_022ED02C: .word 0x02353538
	arm_func_end GetForcedLossReason

	arm_func_start ov29_022ED030
ov29_022ED030: ; 0x022ED030
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r1, _022ED0A0 ; =0x02352690
	ldr r2, _022ED0A4 ; =0x00000401
	ldr r3, [r1, #4]
	ldr ip, [r1]
	str r3, [sp, #4]
	add r0, sp, #0
	mov r1, #4
	mov r3, #0x300
	str ip, [sp]
	bl LoadWteFromFileDirectory
	ldr r0, [sp, #4]
	mov r1, #0x400
	mov r2, #0x1d
	mov r3, #0
	bl ProcessWte
	ldr r1, [sp, #4]
	ldr r0, [sp]
	ldrh r2, [r1, #0xc]
	ldr r1, _022ED0A8 ; =0x0237C99C
	strh r2, [r1]
	bl sub_0201E080
	ldr r0, _022ED0AC ; =0x0235359C
	mov r1, #1
	strb r1, [r0]
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_022ED0A0: .word 0x02352690
_022ED0A4: .word 0x00000401
_022ED0A8: .word 0x0237C99C
_022ED0AC: .word 0x0235359C
	arm_func_end ov29_022ED030

	arm_func_start ov29_022ED0B0
ov29_022ED0B0: ; 0x022ED0B0
	ldr r0, _022ED0C0 ; =0x0235359C
	mov r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_022ED0C0: .word 0x0235359C
	arm_func_end ov29_022ED0B0

	arm_func_start ov29_022ED0C4
ov29_022ED0C4: ; 0x022ED0C4
	ldr r0, _022ED0D0 ; =0x0235359C
	ldrb r0, [r0, #4]
	bx lr
	.align 2, 0
_022ED0D0: .word 0x0235359C
	arm_func_end ov29_022ED0C4

	arm_func_start ov29_022ED0D4
ov29_022ED0D4: ; 0x022ED0D4
	cmp r0, #0
	movlt r0, #0
	cmp r0, #0xff
	ldr r1, _022ED0F0 ; =0x0235359C
	movgt r0, #0xff
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_022ED0F0: .word 0x0235359C
	arm_func_end ov29_022ED0D4

	arm_func_start ov29_022ED0F4
ov29_022ED0F4: ; 0x022ED0F4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _022ED180 ; =0x0235359C
	mov r4, r0
	ldrb r7, [r1, #4]
	cmp r7, #0x80
	ldmlsia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0x80
	mov r6, #0x80
	mov r5, #0x68
	ble _022ED174
	b _022ED144
_022ED120:
	sub r0, r7, r4
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x80
	movle r7, r6
	mov r0, r7
	bl ov29_022ED0D4
	mov r0, r5
	bl AdvanceFrame
_022ED144:
	cmp r7, #0x80
	bne _022ED120
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022ED150:
	add r0, r7, r4
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x80
	movge r7, r6
	mov r0, r7
	bl ov29_022ED0D4
	mov r0, r5
	bl AdvanceFrame
_022ED174:
	cmp r7, #0x80
	bne _022ED150
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022ED180: .word 0x0235359C
	arm_func_end ov29_022ED0F4

	arm_func_start ov29_022ED184
ov29_022ED184: ; 0x022ED184
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	ldr r3, _022ED7F0 ; =0x0235359C
	ldrb r3, [r3]
	cmp r3, #0
	beq _022ED7E8
	ldrb r4, [r2, #0x34]
	cmp r4, #0
	bne _022ED1D0
	ldrb r3, [r2, #0x23]
	cmp r3, #0
	ldreqb r3, [r2, #0x24]
	cmpeq r3, #0
	ldreqb r3, [r2, #0x30]
	cmpeq r3, #0
	movne r3, #1
	moveq r3, #0
	cmp r3, #0
	bne _022ED7E8
_022ED1D0:
	cmp r4, #0
	bne _022ED1E0
	cmp r1, #0xff
	bne _022ED370
_022ED1E0:
	add r0, sp, #0x48
	bl sub_0201E730
	ldr r1, _022ED7F4 ; =0x0237C99C
	ldr r0, _022ED7F8 ; =0x020AFC70
	ldrh r2, [r1]
	mov r3, #5
	mov r1, #0x400
	strb r3, [sp, #0x84]
	strh r2, [sp, #0x5c]
	ldr r0, [r0]
	str r1, [sp, #0x68]
	ldr r1, [r0, #0xe0]
	ldr r0, _022ED7F0 ; =0x0235359C
	add r1, r1, #0x3a00
	str r1, [sp, #0x6c]
	ldrb r6, [r0, #4]
	mov r5, #0
	mov r3, #0x30
	mov r4, #4
	mov r1, #0x100
	mov r2, #0x22
	add r0, sp, #0x48
	strb r6, [sp, #0x77]
	strh r5, [sp, #0x5e]
	strh r5, [sp, #0x60]
	strh r4, [sp, #0x62]
	strh r4, [sp, #0x64]
	strh r3, [sp, #0x72]
	strb r2, [sp, #0x86]
	strh r5, [sp, #0x48]
	strh r5, [sp, #0x4a]
	strh r1, [sp, #0x4c]
	strh r5, [sp, #0x4e]
	strh r5, [sp, #0x50]
	strh r3, [sp, #0x52]
	strh r1, [sp, #0x54]
	strh r3, [sp, #0x56]
	bl sub_0201F2A0
	mov r4, r5
	mov r3, #0x90
	mov r2, #0x100
	mov r1, #0xc0
	add r0, sp, #0x48
	strh r4, [sp, #0x48]
	strh r3, [sp, #0x4a]
	strh r2, [sp, #0x4c]
	strh r3, [sp, #0x4e]
	strh r4, [sp, #0x50]
	strh r1, [sp, #0x52]
	strh r2, [sp, #0x54]
	strh r1, [sp, #0x56]
	bl sub_0201F2A0
	mov r3, #0x30
	mov r2, #0x50
	mov r1, #0x90
	add r0, sp, #0x48
	strh r4, [sp, #0x48]
	strh r3, [sp, #0x4a]
	strh r2, [sp, #0x4c]
	strh r3, [sp, #0x4e]
	strh r4, [sp, #0x50]
	strh r1, [sp, #0x52]
	strh r2, [sp, #0x54]
	strh r1, [sp, #0x56]
	bl sub_0201F2A0
	mov r3, #0xb0
	mov r2, #0x30
	mov r1, #0x100
	mov r0, #0x90
	strh r3, [sp, #0x48]
	strh r2, [sp, #0x4a]
	strh r1, [sp, #0x4c]
	strh r2, [sp, #0x4e]
	strh r3, [sp, #0x50]
	strh r0, [sp, #0x52]
	strh r1, [sp, #0x54]
	strh r0, [sp, #0x56]
	add r0, sp, #0x48
	bl sub_0201F2A0
	mov r6, #0x50
	mov r5, #0x30
	mov r4, #0xb0
	mov r3, #0x90
	mov r2, #0
	mov r1, #0x60
	add r0, sp, #0x48
	strh r6, [sp, #0x48]
	strh r5, [sp, #0x4a]
	strh r4, [sp, #0x4c]
	strh r5, [sp, #0x4e]
	strh r6, [sp, #0x50]
	strh r3, [sp, #0x52]
	strh r4, [sp, #0x54]
	strh r3, [sp, #0x56]
	strh r2, [sp, #0x5e]
	strh r2, [sp, #0x60]
	strh r1, [sp, #0x62]
	strh r1, [sp, #0x64]
	bl sub_0201F2A0
	b _022ED7E8
_022ED370:
	ldr r6, _022ED7FC ; =0x02352698
	add r5, sp, #0
	mov r4, #4
_022ED37C:
	ldrh r3, [r6], #2
	subs r4, r4, #1
	strh r3, [r5], #2
	bne _022ED37C
	mov r3, #0x1c
	smlabb r3, r1, r3, r0
	ldr r1, [r3, #0xc]
	add r0, sp, #8
	strh r1, [sp]
	ldr r1, [r3, #0x10]
	strh r1, [sp, #2]
	ldr r1, [r3, #0x14]
	strh r1, [sp, #4]
	ldr r1, [r3, #0x18]
	strh r1, [sp, #6]
	ldrsh r5, [r2, #0xa]
	ldrsh r4, [r2, #8]
	bl sub_0201E730
	ldrsh r3, [sp, #2]
	ldrsh r6, [sp, #4]
	ldrsh lr, [sp]
	sub r3, r3, r5
	ldrsh r2, [sp, #6]
	mov r1, #5
	mov r0, #0x400
	ldr ip, _022ED7F8 ; =0x020AFC70
	mov r3, r3, lsl #0x10
	sub r6, r6, r4
	sub lr, lr, r4
	mov r4, r3, asr #0x10
	sub r5, r2, r5
	mov r3, r6, lsl #0x10
	mov r6, r5, lsl #0x10
	ldr r7, _022ED7F4 ; =0x0237C99C
	strb r1, [sp, #0x44]
	ldrh r1, [r7]
	ldr r5, [ip]
	str r0, [sp, #0x28]
	ldr r0, [r5, #0xe0]
	mov r2, lr, lsl #0x10
	add r5, r0, #0x3a00
	str r5, [sp, #0x2c]
	strh r1, [sp, #0x1c]
	ldr r0, _022ED7F0 ; =0x0235359C
	mov r1, #0
	ldrb ip, [r0, #4]
	mov r7, #4
	mov r5, #0x30
	mov r0, #0x22
	strh r5, [sp, #0x32]
	strb ip, [sp, #0x37]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r7, [sp, #0x22]
	strh r7, [sp, #0x24]
	strb r0, [sp, #0x46]
	cmp r4, #0
	mov r5, r2, asr #0x10
	mov r7, r3, asr #0x10
	mov r6, r6, asr #0x10
	ble _022ED4A4
	mov r0, r4, lsl #0x10
	mov r2, r0, asr #0x10
	mov r3, #0x100
	add r0, sp, #8
	strh r1, [sp, #8]
	strh r1, [sp, #0xa]
	strh r3, [sp, #0xc]
	strh r1, [sp, #0xe]
	strh r1, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	bl sub_0201F2A0
_022ED4A4:
	cmp r6, #0
	movlt r0, #0
	movge r0, r6
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	rsb r0, r1, #0xc0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	cmp r0, #0
	ble _022ED508
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	mov ip, #0
	mov r3, #0x100
	add r0, sp, #8
	strh ip, [sp, #8]
	strh r1, [sp, #0xa]
	strh r3, [sp, #0xc]
	strh r1, [sp, #0xe]
	strh ip, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	bl sub_0201F2A0
_022ED508:
	cmp r4, #0
	movlt r0, #0
	movge r0, r4
	mov r0, r0, lsl #0x10
	sub r1, r6, r0, asr #16
	cmp r1, #0xc0
	movgt r1, #0xc0
	mov ip, r0, asr #0x10
	cmp r5, #0
	mov r0, r1, lsl #0x10
	ble _022ED574
	add r1, ip, r0, asr #16
	mov r0, r5, lsl #0x10
	mov r2, r0, asr #0x10
	mov r3, #0
	mov r0, r1, lsl #0x10
	mov r1, r0, asr #0x10
	add r0, sp, #8
	strh r3, [sp, #8]
	strh ip, [sp, #0xa]
	strh r2, [sp, #0xc]
	strh ip, [sp, #0xe]
	strh r3, [sp, #0x10]
	strh r1, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x16]
	bl sub_0201F2A0
_022ED574:
	cmp r4, #0
	movlt r0, #0
	movge r0, r4
	mov r0, r0, lsl #0x10
	rsb r1, r7, #0x100
	mov r2, r1, lsl #0x10
	sub r3, r6, r0, asr #16
	cmp r3, #0xc0
	mov r2, r2, asr #0x10
	movgt r3, #0xc0
	mov r1, r0, asr #0x10
	cmp r2, #0
	mov r0, r3, lsl #0x10
	ble _022ED5EC
	add r3, r7, r2
	add r2, r1, r0, asr #16
	mov r0, r3, lsl #0x10
	mov r3, r0, asr #0x10
	mov r0, r2, lsl #0x10
	mov r2, r0, asr #0x10
	add r0, sp, #8
	strh r7, [sp, #8]
	strh r1, [sp, #0xa]
	strh r3, [sp, #0xc]
	strh r1, [sp, #0xe]
	strh r7, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	bl sub_0201F2A0
_022ED5EC:
	mvn r0, #0x1f
	cmp r5, r0
	cmpgt r4, r0
	ble _022ED660
	cmp r5, #0x120
	cmplt r4, #0xe0
	bge _022ED660
	add r0, r5, #0x20
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	mov ip, #0
	mov r3, #0x30
	add r1, r4, #0x20
	mov r0, r1, lsl #0x10
	mov r1, r0, asr #0x10
	add r0, sp, #8
	strh ip, [sp, #0x1e]
	strh ip, [sp, #0x20]
	strh r3, [sp, #0x22]
	strh r3, [sp, #0x24]
	strh r5, [sp, #8]
	strh r4, [sp, #0xa]
	strh r2, [sp, #0xc]
	strh r4, [sp, #0xe]
	strh r5, [sp, #0x10]
	strh r1, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x16]
	bl sub_0201F2A0
_022ED660:
	sub r7, r7, #0x20
	mov r0, r7, lsl #0x10
	mvn r1, #0x1f
	cmp r1, r0, asr #16
	mov r2, r0, asr #0x10
	bge _022ED6E4
	cmp r4, r1
	ble _022ED6E4
	cmp r2, #0x120
	cmplt r4, #0xe0
	bge _022ED6E4
	add r0, r2, #0x20
	mov r0, r0, lsl #0x10
	mov ip, r0, asr #0x10
	mov r1, #0x30
	add r3, r4, #0x20
	mov r0, r3, lsl #0x10
	mov r3, r0, asr #0x10
	mov lr, #0
	add r0, sp, #8
	strh r1, [sp, #0x1e]
	strh lr, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r2, [sp, #8]
	strh r4, [sp, #0xa]
	strh ip, [sp, #0xc]
	strh r4, [sp, #0xe]
	strh r2, [sp, #0x10]
	strh r3, [sp, #0x12]
	strh ip, [sp, #0x14]
	strh r3, [sp, #0x16]
	bl sub_0201F2A0
_022ED6E4:
	sub r4, r6, #0x20
	mov r0, r4, lsl #0x10
	mvn r2, #0x1f
	mov r1, r0, asr #0x10
	cmp r5, r2
	cmpgt r1, r2
	ble _022ED764
	cmp r5, #0x120
	cmplt r1, #0xe0
	bge _022ED764
	add r0, r5, #0x20
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	mov r6, #0x30
	add r2, r1, #0x20
	mov r0, r2, lsl #0x10
	mov r2, r0, asr #0x10
	mov ip, #0
	add r0, sp, #8
	strh ip, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strh r6, [sp, #0x24]
	strh r5, [sp, #8]
	strh r1, [sp, #0xa]
	strh r3, [sp, #0xc]
	strh r1, [sp, #0xe]
	strh r5, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	bl sub_0201F2A0
_022ED764:
	mov r0, r7, lsl #0x10
	mov r1, r4, lsl #0x10
	mvn r2, #0x1f
	cmp r2, r0, asr #16
	mov r5, r0, asr #0x10
	mov r4, r1, asr #0x10
	bge _022ED7E8
	cmp r4, r2
	ble _022ED7E8
	cmp r5, #0x120
	cmplt r4, #0xe0
	bge _022ED7E8
	add r0, r5, #0x20
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	mov r3, #0x30
	add r1, r4, #0x20
	mov r0, r1, lsl #0x10
	mov r1, r0, asr #0x10
	add r0, sp, #8
	strh r3, [sp, #0x1e]
	strh r3, [sp, #0x20]
	strh r3, [sp, #0x22]
	strh r3, [sp, #0x24]
	strh r5, [sp, #8]
	strh r4, [sp, #0xa]
	strh r2, [sp, #0xc]
	strh r4, [sp, #0xe]
	strh r5, [sp, #0x10]
	strh r1, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x16]
	bl sub_0201F2A0
_022ED7E8:
	add sp, sp, #0x88
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022ED7F0: .word 0x0235359C
_022ED7F4: .word 0x0237C99C
_022ED7F8: .word 0x020AFC70
_022ED7FC: .word 0x02352698
	arm_func_end ov29_022ED184

	arm_func_start ov29_022ED800
ov29_022ED800: ; 0x022ED800
	stmdb sp!, {r3, lr}
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r3, r0, #0xe900
	ldrh r3, [r3, #0xec]
	tst r3, #1
	ldmneia sp!, {r3, pc}
	add r0, r0, #0x224
	add r0, r0, #0xac00
	bl ov29_022ED184
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022ED800

	arm_func_start ov29_022ED82C
ov29_022ED82C: ; 0x022ED82C
	stmdb sp!, {r4, lr}
	add r1, r1, #0xc1
	add r1, r1, #0x3400
	mov r1, r1, lsl #0x10
	mov r4, r0
	mov r0, r1, lsr #0x10
	bl StringFromMessageId
	mov r1, r0
	mov r0, r4
	bl Strcpy
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022ED82C

	arm_func_start ov29_022ED858
ov29_022ED858: ; 0x022ED858
	cmp r1, #0
	strne r1, [r0, #0x10]
	strneb r2, [r1, #0x20]
	bx lr
	arm_func_end ov29_022ED858

	arm_func_start ov29_022ED868
ov29_022ED868: ; 0x022ED868
	ldr r0, _022ED880 ; =0x02353538
	ldr ip, _022ED884 ; =ov29_02344148
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bx ip
	.align 2, 0
_022ED880: .word 0x02353538
_022ED884: .word ov29_02344148
	arm_func_end ov29_022ED868

	arm_func_start ov29_022ED888
ov29_022ED888: ; 0x022ED888
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r0, _022ED96C ; =0x023526A0
	mov sl, #0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	add r6, sp, #4
	strh r1, [sp]
	strh r0, [sp, #2]
	mov r4, #6
	mov fp, #2
	mov r7, sl
_022ED8B8:
	mov r0, sl, lsl #0x10
	mov r8, r7
	mov r5, r0, asr #0x10
_022ED8C4:
	mov r0, r8
	mov r1, sl
	bl GetTileSafe
	mov sb, r0
	ldrh r0, [sb, #2]
	tst r0, #4
	beq _022ED94C
	strh r8, [sp, #4]
	strh r5, [sp, #6]
	ldrh r0, [sb, #2]
	tst r0, #0x40
	movne r0, r4
	bne _022ED8FC
	bl ov29_022E7A30
_022ED8FC:
	cmp r0, #0x11
	mov r1, r6
	bne _022ED92C
	mov r2, fp
	mov r3, #0
	bl ov29_022E2260
	movs r1, r0
	beq _022ED94C
	mov r0, sb
	mov r2, #1
	bl ov29_022ED858
	b _022ED94C
_022ED92C:
	mov r2, #0
	mov r3, r2
	bl ov29_022E2260
	movs r1, r0
	beq _022ED94C
	mov r0, sb
	mov r2, #0
	bl ov29_022ED858
_022ED94C:
	add r8, r8, #1
	cmp r8, #0x38
	blt _022ED8C4
	add sl, sl, #1
	cmp sl, #0x20
	blt _022ED8B8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022ED96C: .word 0x023526A0
	arm_func_end ov29_022ED888

	arm_func_start ov29_022ED970
ov29_022ED970: ; 0x022ED970
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r1
	mov r6, r2
	mov r8, r0
	mov r0, r7
	mov r1, r6
	mov r5, r3
	bl GetTileSafe
	mov r4, r0
	add r1, sp, #0
	mov r0, r8
	mov r3, r5
	mov r2, #0
	strh r7, [sp]
	strh r6, [sp, #2]
	bl ov29_022E2260
	movs r1, r0
	beq _022ED9C8
	ldrb r2, [sp, #0x20]
	mov r0, r4
	bl ov29_022ED858
_022ED9C8:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov29_022ED970

	arm_func_start ov29_022ED9D0
ov29_022ED9D0: ; 0x022ED9D0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r0, _022EDBB8 ; =0x02353538
	ldr r1, _022EDBBC ; =0x0001A21E
	ldr r0, [r0]
	ldrsh r2, [r0, r1]
	add r1, r0, #0x1a000
	ldrb r8, [r1, #0x244]
	sub sb, r2, #5
	b _022EDB9C
_022ED9F8:
	ldr r1, _022EDBC0 ; =0x0001A21C
	mov r2, #0x18
	ldrsh r0, [r0, r1]
	mul sl, sb, r2
	sub r7, r0, #6
	mov r0, r1
	add fp, r0, #8
	ldr r0, _022EDBC4 ; =0x0000013E
	ldr r6, _022EDBC8 ; =0x0237C864
	sub r0, r0, #0x1f
	str r0, [sp, #4]
	mov r0, r1
	add r5, r0, #0xa
	ldr r4, _022EDBCC ; =0xFFFF000F
	b _022EDB7C
_022EDA34:
	mov r0, #0
	str r0, [sp]
	mov r0, r7
	mov r1, sb
	bl GetTile
	ldr r2, [r0, #0x10]
	cmp r2, #0
	beq _022EDA74
	ldr r1, [r2]
	cmp r1, #2
	bne _022EDA74
	ldrb r1, [r2, #0x20]
	cmp r1, #0
	cmpeq r8, #0
	movne r1, #1
	strne r1, [sp]
_022EDA74:
	ldrh r0, [r0]
	tst r0, #0x200
	movne r0, #1
	strne r0, [sp]
	ldr r0, [sp]
	cmp r0, #0
	beq _022EDB78
	ldr r0, _022EDBB8 ; =0x02353538
	ldr r3, [r0]
	mov r0, #0x18
	mul r2, r7, r0
	ldrsh r1, [r3, fp]
	ldrsh r0, [r3, r5]
	sub r1, r2, r1
	sub r2, sl, r0
	cmp r1, r4, asr #11
	cmpge r2, r4, asr #11
	blt _022EDB78
	ldr r0, [sp, #4]
	cmp r1, r0
	cmple r2, #0xe0
	bgt _022EDB78
	ldrh ip, [r6]
	add r0, r2, #4
	add r1, r1, #4
	bic ip, ip, #0xc00
	strh ip, [r6]
	ldrh ip, [r6, #6]
	and r3, r1, r4, lsr #23
	mov r0, r0, lsl #0x14
	and ip, ip, r4
	strh ip, [r6, #6]
	ldrh ip, [r6, #6]
	mov r1, r6
	mov r2, #0
	orr r0, ip, r0, lsr #16
	strh r0, [r6, #6]
	ldrh r0, [r6, #2]
	and r0, r0, r4, asr #7
	strh r0, [r6, #2]
	ldrh r0, [r6, #2]
	orr r0, r0, r3
	strh r0, [r6, #2]
	ldrh r0, [r6, #4]
	bic r0, r0, #0xc00
	strh r0, [r6, #4]
	ldrh r0, [r6, #4]
	orr r0, r0, #0xc00
	strh r0, [r6, #4]
	ldrh r0, [r6, #4]
	bic r0, r0, #0xf000
	strh r0, [r6, #4]
	ldrh r0, [r6, #4]
	orr r0, r0, #0xa000
	strh r0, [r6, #4]
	ldrh r0, [r6, #4]
	and r0, r0, r4, asr #6
	strh r0, [r6, #4]
	ldrh r3, [r6, #4]
	orr r0, r3, #0x3e
	orr r0, r0, #0x100
	strh r0, [r6, #4]
	ldr r0, _022EDBD0 ; =0x020AFC4C
	ldr r0, [r0]
	bl sub_0201B9F8
_022EDB78:
	add r7, r7, #1
_022EDB7C:
	ldr r0, _022EDBB8 ; =0x02353538
	ldr r1, _022EDBC0 ; =0x0001A21C
	ldr r0, [r0]
	ldrsh r1, [r0, r1]
	add r1, r1, #6
	cmp r7, r1
	blt _022EDA34
	add sb, sb, #1
_022EDB9C:
	ldr r1, _022EDBBC ; =0x0001A21E
	ldrsh r1, [r0, r1]
	add r1, r1, #5
	cmp sb, r1
	blt _022ED9F8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EDBB8: .word 0x02353538
_022EDBBC: .word 0x0001A21E
_022EDBC0: .word 0x0001A21C
_022EDBC4: .word 0x0000013E
_022EDBC8: .word 0x0237C864
_022EDBCC: .word 0xFFFF000F
_022EDBD0: .word 0x020AFC4C
	arm_func_end ov29_022ED9D0

	arm_func_start ov29_022EDBD4
ov29_022EDBD4: ; 0x022EDBD4
	stmdb sp!, {r3, r4, r5, lr}
	ldr lr, _022EDC28 ; =0x02353538
	ldrsh r5, [r0]
	ldr r3, _022EDC2C ; =0x00012AAA
	ldr r4, [lr]
	add ip, r3, #2
	strh r5, [r4, r3]
	ldrsh r4, [r0, #2]
	ldr r0, [lr]
	mov r3, #1
	strh r4, [r0, ip]
	ldr r0, [lr]
	add r0, r0, #0x12000
	strb r1, [r0, #0xaae]
	ldr r0, [lr]
	add r0, r0, #0x12000
	strb r2, [r0, #0xaaf]
	ldr r0, [lr]
	add r0, r0, #0x12000
	strb r3, [r0, #0xaa8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022EDC28: .word 0x02353538
_022EDC2C: .word 0x00012AAA
	arm_func_end ov29_022EDBD4

	arm_func_start ov29_022EDC30
ov29_022EDC30: ; 0x022EDC30
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldrsh r0, [r1]
	ldrsh r1, [r1, #2]
	bl GetTileSafe
	ldrh r2, [r0]
	tst r2, #0x200
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldrb r1, [r0, #7]
	cmp r1, #0xff
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	tst r2, #8
	movne r0, #0
	ldmneia sp!, {r3, pc}
	tst r2, #0x20
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldrh r1, [r0]
	and r1, r1, #3
	cmp r1, #1
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022EDCB4
	ldr r0, [r0]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
_022EDCB4:
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022EDC30

	arm_func_start ov29_022EDCBC
ov29_022EDCBC: ; 0x022EDCBC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	ldrsh r0, [r8]
	ldrsh r1, [r8, #2]
	mov r6, r2
	mov r5, r3
	bl GetTileSafe
	mov r4, r0
	cmp r7, #0x19
	blo _022EDD14
	mov sb, #0
	b _022EDD04
_022EDCF0:
	bl ov29_022E7A30
	mov r7, r0
	cmp r7, #0x11
	bne _022EDD0C
	add sb, sb, #1
_022EDD04:
	cmp sb, #0x1e
	blt _022EDCF0
_022EDD0C:
	cmp sb, #0x1e
	moveq r7, #0x10
_022EDD14:
	ldrh r1, [r4]
	tst r1, #0x200
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r4, #7]
	cmp r0, #0xff
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	tst r1, #8
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	tst r1, #0x20
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrh r0, [r4]
	and r0, r0, #3
	cmp r0, #1
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022EDDA0
	ldr r1, [r0]
	cmp r1, #2
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bl ov29_022E1608
	strb r7, [r0]
	ldr r0, [r4, #0x10]
	bl ov29_022E1608
	strb r6, [r0, #1]
	ldr r1, [r4, #0x10]
	mov r0, #1
	strb r5, [r1, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022EDDA0:
	mov r0, r7
	mov r1, r8
	mov r2, r6
	mov r3, #0
	bl ov29_022E2260
	movs r1, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	mov r2, r5
	bl ov29_022ED858
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022EDCBC

	arm_func_start ov29_022EDDD4
ov29_022EDDD4: ; 0x022EDDD4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _022EDE6C ; =0x02353538
	mov r5, r0
	ldr r0, [r1]
	add r0, r0, #0x12000
	ldrb r2, [r0, #0xaa8]
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r2, #0
	strb r2, [r0, #0xaa8]
	ldr r3, [r1]
	ldr r0, _022EDE70 ; =0x00012AAA
	add r2, r3, #0x12000
	ldrb r1, [r2, #0xaae]
	ldrb r2, [r2, #0xaaf]
	add r0, r3, r0
	mov r3, #1
	bl ov29_022EDCBC
	movs r4, r0
	ldr r1, _022EDE70 ; =0x00012AAA
	beq _022EDE48
	ldr r0, _022EDE6C ; =0x02353538
	ldr r2, _022EDE74 ; =0x00000E57
	ldr r3, [r0]
	mov r0, r5
	add r1, r3, r1
	bl LogMessageByIdWithPopupCheckUserUnknown
	b _022EDE60
_022EDE48:
	ldr r0, _022EDE6C ; =0x02353538
	ldr r2, _022EDE78 ; =0x00000E58
	ldr r3, [r0]
	mov r0, r5
	add r1, r3, r1
	bl LogMessageByIdWithPopupCheckUserUnknown
_022EDE60:
	bl ov29_02336F4C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022EDE6C: .word 0x02353538
_022EDE70: .word 0x00012AAA
_022EDE74: .word 0x00000E57
_022EDE78: .word 0x00000E58
	arm_func_end ov29_022EDDD4

	arm_func_start ov29_022EDE7C
ov29_022EDE7C: ; 0x022EDE7C
	stmdb sp!, {r4, lr}
	mov r2, r0
	mov r4, r1
	ldrsh r0, [r2]
	ldrsh r1, [r2, #2]
	bl GetTileSafe
	ldr r2, [r0, #0x10]
	cmp r2, #0
	beq _022EDED4
	ldr r1, [r2]
	cmp r1, #2
	bne _022EDECC
	mov r1, #0
	str r1, [r2]
	str r1, [r0, #0x10]
	cmp r4, #0
	beq _022EDEC4
	bl ov29_02336F4C
_022EDEC4:
	mov r0, #1
	ldmia sp!, {r4, pc}
_022EDECC:
	mov r0, #0
	ldmia sp!, {r4, pc}
_022EDED4:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022EDE7C

	arm_func_start ov29_022EDEDC
ov29_022EDEDC: ; 0x022EDEDC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	bl GetTile
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _022EDF50
	ldr r0, [r1]
	cmp r0, #2
	bne _022EDF48
	ldr r0, _022EDF58 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _022EDF34
	mov r0, #1
	strb r0, [r1, #0x20]
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	bl ov29_023391EC
_022EDF34:
	cmp r4, #0
	beq _022EDF40
	bl ov29_02336F4C
_022EDF40:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_022EDF48:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_022EDF50:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022EDF58: .word 0x02353538
	arm_func_end ov29_022EDEDC

	arm_func_start ov29_022EDF5C
ov29_022EDF5C: ; 0x022EDF5C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02024FC8
	bl ov29_0234B034
	add r0, r0, r5, lsl #2
	str r4, [r0, #0x10]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022EDF5C

	arm_func_start ov29_022EDF7C
ov29_022EDF7C: ; 0x022EDF7C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl sub_02024FC8
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x10]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov29_022EDF7C

	arm_func_start ov29_022EDFA0
ov29_022EDFA0: ; 0x022EDFA0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, r1
	mov sl, r0
	ldrsh r0, [sb]
	ldrsh r1, [sb, #2]
	mov fp, r2
	mov r7, r3
	bl GetTileSafe
	ldr r4, [r0, #0x10]
	str r0, [sp, #0x10]
	cmp r4, #0
	beq _022EE2F4
	ldr r0, [r4]
	cmp r0, #2
	bne _022EE2F4
	mov r0, r4
	bl ov29_022E1608
	mov r6, r0
	ldrb r1, [r6]
	mov r0, #0
	bl ov29_022EDF5C
	ldr r0, [sp, #0x10]
	ldr r5, [r0, #0xc]
	cmp r5, #0
	ldrne r0, [r5]
	cmpne r0, #1
	ldrb r0, [r4, #0x20]
	movne r5, #0
	cmp r5, #0
	str r0, [sp, #0xc]
	mov r0, #1
	strb r0, [r4, #0x20]
	beq _022EE1D8
	mov r0, r5
	bl ov29_022F9840
	cmp r7, #0
	ldrneb r0, [r6]
	cmpne r0, #0x11
	beq _022EE148
	cmp r0, #0x17
	mov r8, #0
	moveq r7, #0x64
	beq _022EE05C
	mov r0, #0x64
	bl DungeonRandInt
	mov r7, r0
_022EE05C:
	mov r0, r5
	mov r1, #0x23
	bl ItemIsActive__022EE318
	cmp r0, #0
	ldrne r8, _022EE2FC ; =0x00000E59
	bne _022EE0C8
	mov r0, r5
	mov r1, #0x26
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022EE0C8
	mov r0, #0x32
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	beq _022EE0C8
	mov r1, sl
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	bl ov29_023361D4
	cmp r0, #0
	ldrne r8, _022EE300 ; =0x00000E5B
	bne _022EE0C8
	mov r0, sb
	mov r1, #1
	bl ov29_022EDE7C
	ldr r8, _022EE304 ; =0x00000E5A
_022EE0C8:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	beq _022EE0EC
	ldr r0, _022EE308 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x244]
	cmp r0, #0
	beq _022EE100
_022EE0EC:
	cmp r7, #0
	bge _022EE110
	cmp r8, #0
	ldreq r8, _022EE30C ; =0x00000E5C
	b _022EE110
_022EE100:
	cmp r7, #0xf
	bge _022EE110
	cmp r8, #0
	ldreq r8, _022EE30C ; =0x00000E5C
_022EE110:
	cmp r8, #0
	beq _022EE1D8
	mov r0, sb
	bl ov29_022E2CA0
	cmp r0, #0
	beq _022EE12C
	bl ov29_02336F4C
_022EE12C:
	mov r0, sl
	mov r1, r5
	mov r2, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	cmp fp, #0
	bne _022EE1D8
	b _022EE2F4
_022EE148:
	mov r0, r5
	mov r1, #0x26
	mov r7, #0
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022EE1D8
	ldr r0, _022EE310 ; =0x022C445C
	ldrsh r0, [r0]
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	beq _022EE1A4
	mov r1, sl
	mov r0, #1
	mov r2, r7
	bl SubstitutePlaceholderStringTags
	bl ov29_023361D4
	cmp r0, #0
	ldrne r7, _022EE300 ; =0x00000E5B
	bne _022EE1A4
	mov r0, sb
	mov r1, #1
	bl ov29_022EDE7C
	ldr r7, _022EE304 ; =0x00000E5A
_022EE1A4:
	cmp r7, #0
	beq _022EE1D8
	mov r0, sb
	bl ov29_022E2CA0
	cmp r0, #0
	beq _022EE1C0
	bl ov29_02336F4C
_022EE1C0:
	mov r0, sl
	mov r1, r5
	mov r2, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	cmp fp, #0
	beq _022EE2F4
_022EE1D8:
	mov r0, sb
	bl ov29_022E2CA0
	cmp r0, #0
	beq _022EE264
	mov r0, #0
	mov r1, #0x11c
	bl ov29_022E56A0
	bl ov29_02336F4C
	ldrb r2, [r6]
	mov r0, sl
	mov r1, sb
	bl ov29_022E58B0
	mov r0, r4
	bl ov29_022E1608
	mov r6, r0
	mov r0, #0
	ldrb r1, [r6]
	bl ov29_022EDF5C
	ldr r0, _022EE308 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x23e]
	cmp r0, #0
	beq _022EE248
	ldr r1, _022EE314 ; =0x00000E5D
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022EE264
_022EE248:
	ldrb r1, [r6]
	mov r0, sl
	add r1, r1, #0x51
	add r1, r1, #0xb00
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl LogMessageByIdWithPopupCheckUser
_022EE264:
	cmp r5, #0
	beq _022EE29C
	ldrb r0, [r6, #1]
	cmp r0, #2
	bne _022EE288
	mov r0, r5
	mov r1, #1
	bl ov29_0230D47C
	b _022EE29C
_022EE288:
	cmp r0, #1
	bne _022EE29C
	mov r0, r5
	mov r1, #0
	bl ov29_0230D47C
_022EE29C:
	str sb, [sp]
	ldrb r6, [r6]
	mov r0, r4
	ldr r3, [sp, #0x10]
	mov r1, sl
	mov r2, r5
	str r6, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	bl ov29_022EF154
	mov r4, r0
	mov r0, r5
	bl EntityIsValid__022EE348
	cmp r0, #0
	beq _022EE2E0
	mov r0, r5
	bl EnemyEvolution
_022EE2E0:
	cmp r4, #0
	beq _022EE2F4
	mov r0, sb
	mov r1, #1
	bl ov29_022EDE7C
_022EE2F4:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EE2FC: .word 0x00000E59
_022EE300: .word 0x00000E5B
_022EE304: .word 0x00000E5A
_022EE308: .word 0x02353538
_022EE30C: .word 0x00000E5C
_022EE310: .word 0x022C445C
_022EE314: .word 0x00000E5D
	arm_func_end ov29_022EDFA0

	arm_func_start ItemIsActive__022EE318
ItemIsActive__022EE318: ; 0x022EE318
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ItemIsActive__022EE318

	arm_func_start EntityIsValid__022EE348
EntityIsValid__022EE348: ; 0x022EE348
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__022EE348

	arm_func_start ov29_022EE36C
ov29_022EE36C: ; 0x022EE36C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	movs r4, r1
	mov r5, r0
	beq _022EE424
	mov r0, #0x64
	bl DungeonRandInt
	cmp r0, #0x19
	mov ip, #1
	mov r3, #3
	bge _022EE3B8
	ldr r0, _022EE42C ; =0x02352AEC
	str ip, [sp]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	str ip, [sp, #4]
	bl LowerOffensiveStat
	b _022EE424
_022EE3B8:
	cmp r0, #0x32
	bge _022EE3E0
	ldr r0, _022EE430 ; =0x02352AE8
	str ip, [sp]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	str ip, [sp, #4]
	bl LowerOffensiveStat
	b _022EE424
_022EE3E0:
	cmp r0, #0x4b
	bge _022EE408
	ldr r0, _022EE42C ; =0x02352AEC
	str ip, [sp]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	str ip, [sp, #4]
	bl LowerDefensiveStat
	b _022EE424
_022EE408:
	ldr r0, _022EE430 ; =0x02352AE8
	str ip, [sp]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	str ip, [sp, #4]
	bl LowerDefensiveStat
_022EE424:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022EE42C: .word 0x02352AEC
_022EE430: .word 0x02352AE8
	arm_func_end ov29_022EE36C

	arm_func_start ov29_022EE434
ov29_022EE434: ; 0x022EE434
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xcc
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov r1, #0x15
	ldr r7, [sb, #0xb4]
	bl ItemIsActive__022EE318
	cmp r0, #0
	beq _022EE470
	mov r0, sl
	mov r1, sb
	mov r2, #0xe60
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EE610
_022EE470:
	ldrb r0, [r7, #7]
	mvn r4, #0
	mov r5, #0
	cmp r0, #0
	beq _022EE508
	ldr fp, _022EE618 ; =0x020AF6B8
	mov r6, r5
_022EE48C:
	mov r0, #6
	mul r8, r6, r0
	ldr r0, [fp]
	ldr r0, [r0, #0x384]
	add r1, r0, r8
	ldrb r0, [r0, r8]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022EE4FC
	ldrsh r0, [r1, #4]
	bl IsNotMoney
	cmp r0, #0
	beq _022EE4FC
	ldr r0, [fp]
	ldr r0, [r0, #0x384]
	add r1, r0, r8
	ldrb r0, [r0, r8]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	ldreqb r0, [r1, #1]
	cmpeq r0, #0
	addeq r0, sp, #0
	streq r1, [r0, r5, lsl #2]
	addeq r5, r5, #1
_022EE4FC:
	add r6, r6, #1
	cmp r6, #0x32
	blt _022EE48C
_022EE508:
	ldrb r0, [r7, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022EE558
	ldrsh r0, [r7, #0x66]
	bl IsNotMoney
	cmp r0, #0
	beq _022EE558
	ldrb r0, [r7, #0x62]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	addeq r0, sp, #0
	addeq r1, r7, #0x62
	moveq r4, r5
	streq r1, [r0, r5, lsl #2]
	addeq r5, r5, #1
_022EE558:
	cmp r5, #0
	bne _022EE574
	ldr r2, _022EE61C ; =0x00000E5F
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EE610
_022EE574:
	mov r0, r5
	bl DungeonRandInt
	mov r5, r0
	add r1, sp, #0
	ldr r1, [r1, r5, lsl #2]
	mov r0, #0
	bl ov29_02344B44
	add r0, sp, #0
	ldr r1, [r0, r5, lsl #2]
	ldrb r0, [r1]
	orr r0, r0, #8
	strb r0, [r1]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _022EE5E8
	cmp r5, r4
	bne _022EE5C4
	mov r1, #8
	bl sub_0200FAEC
	b _022EE5E8
_022EE5C4:
	ldr r1, _022EE620 ; =0x02353538
	sub r0, r0, #1
	ldr r2, [r1]
	add r1, r0, r0, lsl #3
	add r0, r2, #0x56
	add r2, r0, #0x800
	ldrb r0, [r2, r1, lsl #6]
	orr r0, r0, #8
	strb r0, [r2, r1, lsl #6]
_022EE5E8:
	bl ov29_022FB920
	ldr r1, _022EE624 ; =0x00000309
	mov r0, sb
	bl ov29_022E56A0
	ldr r2, _022EE628 ; =0x00000E5E
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	bl ov29_022E8104
	bl ov29_022E81F8
_022EE610:
	add sp, sp, #0xcc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EE618: .word 0x020AF6B8
_022EE61C: .word 0x00000E5F
_022EE620: .word 0x02353538
_022EE624: .word 0x00000309
_022EE628: .word 0x00000E5E
	arm_func_end ov29_022EE434

	arm_func_start ov29_022EE62C
ov29_022EE62C: ; 0x022EE62C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xd8
	movs sl, r1
	mov fp, r0
	mov r5, #0
	beq _022EE800
	ldr r2, [sl, #0xb4]
	sub r0, r5, #1
	ldrb r1, [r2, #7]
	mov r4, r5
	str r0, [sp, #4]
	cmp r1, #0
	beq _022EE6C0
	ldr r0, _022EE808 ; =0x020AF6B8
	mov r1, r5
	ldr r6, [r0]
	mov lr, r5
	ldr r3, [r6, #0x384]
	mov r0, #1
	add sb, sp, #8
	mov r8, #6
_022EE680:
	mul r7, r1, r8
	ldrb ip, [r3, r7]
	tst ip, #1
	movne ip, r0
	moveq ip, lr
	tst ip, #0xff
	beq _022EE6B4
	ldr ip, [r6, #0x384]
	add ip, ip, r7
	ldrb r7, [ip, #1]
	cmp r7, #0
	streq ip, [sb, r4, lsl #2]
	addeq r4, r4, #1
_022EE6B4:
	add r1, r1, #1
	cmp r1, #0x32
	blt _022EE680
_022EE6C0:
	ldrb r0, [r2, #0x62]
	mov sb, #0
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	addne r0, sp, #8
	addne r1, r2, #0x62
	strne r1, [r0, r4, lsl #2]
	ldr r0, _022EE80C ; =0x022C4434
	strne r4, [sp, #4]
	ldrsh r0, [r0]
	addne r4, r4, #1
	str r0, [sp]
	b _022EE7B0
_022EE6FC:
	add r0, sp, #8
	ldr r7, [r0, sb, lsl #2]
	ldrsh r0, [r7, #4]
	bl GetItemCategoryVeneer
	cmp r0, #3
	bne _022EE7AC
	ldrsh r0, [r7, #4]
	cmp r0, #0x6f
	beq _022EE7AC
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, [sp]
	cmp r0, r1
	bge _022EE7AC
	add r0, sp, #8
	ldr r8, [r0, sb, lsl #2]
	mov r1, #0x6f
	ldrb r6, [r8, #1]
	mov r0, r8
	mov r2, #2
	add r5, r5, #1
	bl ov29_02344BD0
	cmp r6, #0
	beq _022EE7AC
	ldr r0, [sp, #4]
	strb r6, [r7, #1]
	cmp sb, r0
	bne _022EE77C
	add r0, sp, #8
	ldr r0, [r0, sb, lsl #2]
	bl sub_0200FA68
	b _022EE7AC
_022EE77C:
	ldr r0, _022EE810 ; =0x02353538
	ldrb r2, [r8, #1]
	ldr r3, [r0]
	ldrh r1, [r8]
	add r0, r2, r2, lsl #3
	add r0, r3, r0, lsl #6
	add r0, r0, #0x600
	strh r1, [r0, #0x16]
	ldrh r1, [r8, #2]
	strh r1, [r0, #0x18]
	ldrh r1, [r8, #4]
	strh r1, [r0, #0x1a]
_022EE7AC:
	add sb, sb, #1
_022EE7B0:
	cmp sb, r4
	blt _022EE6FC
	cmp r5, #0
	bne _022EE7D4
	ldr r2, _022EE814 ; =0x00000E63
	mov r0, fp
	mov r1, sl
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EE800
_022EE7D4:
	cmp r5, #1
	bne _022EE7F0
	ldr r2, _022EE818 ; =0x00000E61
	mov r0, fp
	mov r1, sl
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EE800
_022EE7F0:
	ldr r2, _022EE81C ; =0x00000E62
	mov r0, fp
	mov r1, sl
	bl LogMessageByIdWithPopupCheckUserTarget
_022EE800:
	add sp, sp, #0xd8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EE808: .word 0x020AF6B8
_022EE80C: .word 0x022C4434
_022EE810: .word 0x02353538
_022EE814: .word 0x00000E63
_022EE818: .word 0x00000E61
_022EE81C: .word 0x00000E62
	arm_func_end ov29_022EE62C

	arm_func_start ov29_022EE820
ov29_022EE820: ; 0x022EE820
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	mov r4, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _022EE980 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bl ov29_02344148
	cmp r0, #0
	bne _022EE868
	ldr r1, _022EE984 ; =0x00000E64
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022EE868:
	cmp r5, #0
	ldr r5, [r7, #0xb4]
	bne _022EE8AC
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _022EE8AC
	mov r0, r6
	mov r1, #0x20
	bl ov29_022EF478
	mov r0, r7
	mov r1, #0x308
	mov r4, #1
	bl ov29_022E56A0
	mov r0, #0x1e
	mov r1, #0x48
	bl ov29_022EA370
_022EE8AC:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _022EE91C
	bl GetFloorType
	cmp r0, #2
	beq _022EE90C
	mov r2, #1
	strb r2, [r5, #0x172]
	mov r0, #0x28
	mov r1, #0x4b
	strb r2, [r5, #0x174]
	bl ov29_022EA370
	ldr r1, _022EE988 ; =0x022C44E4
	mov r0, r7
	ldrsh r1, [r1]
	mov r2, #0x11
	mov r3, #0x254
	bl ov29_0230D11C
	ldr r0, _022EE980 ; =0x02353538
	mov r1, #2
	ldr r0, [r0]
	mov r4, #0
	strb r1, [r0, #6]
	b _022EE968
_022EE90C:
	ldr r1, _022EE98C ; =0x00000E66
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _022EE968
_022EE91C:
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _022EE94C
	ldr r2, _022EE990 ; =0x00000E65
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EE958
_022EE94C:
	ldr r1, _022EE990 ; =0x00000E65
	mov r0, r8
	bl LogMessageByIdWithPopup
_022EE958:
	mov r0, r7
	mov r2, r8
	mov r1, #0x254
	bl HandleFaint
_022EE968:
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	mov r1, #5
	bl ov29_022EF478
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022EE980: .word 0x02353538
_022EE984: .word 0x00000E64
_022EE988: .word 0x022C44E4
_022EE98C: .word 0x00000E66
_022EE990: .word 0x00000E65
	arm_func_end ov29_022EE820

	arm_func_start ov29_022EE994
ov29_022EE994: ; 0x022EE994
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #3
	mov r5, r1
	bl DungeonRandInt
	ldr r1, _022EEA20 ; =0x02353538
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bl ov29_02344148
	cmp r0, #0
	bne _022EE9D8
	ldr r1, _022EEA24 ; =0x00000E68
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, pc}
_022EE9D8:
	mov r0, r6
	mov r1, r5
	add r2, r4, #2
	bl ov29_022EF4B4
	mov r4, r0
	ldr r1, _022EEA28 ; =0x0000030F
	mov r0, r5
	bl ov29_022E56D4
	cmp r4, #0
	bne _022EEA10
	ldr r1, _022EEA24 ; =0x00000E68
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, pc}
_022EEA10:
	ldr r1, _022EEA2C ; =0x00000E67
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022EEA20: .word 0x02353538
_022EEA24: .word 0x00000E68
_022EEA28: .word 0x0000030F
_022EEA2C: .word 0x00000E67
	arm_func_end ov29_022EE994

	arm_func_start ov29_022EEA30
ov29_022EEA30: ; 0x022EEA30
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x20
	movs r4, r1
	mov r5, r0
	mov r8, #0
	beq _022EEB08
	ldr r1, [r4, #0xb4]
	mov r0, r8
	add lr, r1, #0x124
	mov r7, r8
	mov r6, r8
	mov ip, #1
	add r2, sp, #0x10
	add r1, sp, #0
_022EEA68:
	ldrb r3, [lr, r7, lsl #3]
	add sb, lr, r7, lsl #3
	tst r3, #1
	movne r3, ip
	moveq r3, r6
	tst r3, #0xff
	ldrneb r3, [sb, #6]
	cmpne r3, #0
	strne r7, [r1, r0, lsl #2]
	strne sb, [r2, r0, lsl #2]
	add r7, r7, #1
	addne r0, r0, #1
	cmp r7, #4
	blt _022EEA68
	cmp r0, #0
	beq _022EEADC
	bl DungeonRandInt
	mov r6, r0
	add r1, sp, #0x10
	ldr r1, [r1, r6, lsl #2]
	mov r0, #0
	strb r0, [r1, #6]
	ldrh r1, [r1, #4]
	bl ov29_0234B084
	add r1, sp, #0
	ldr r1, [r1, r6, lsl #2]
	mov r0, r4
	bl ov29_022FA574
	mov r8, #1
_022EEADC:
	cmp r8, #0
	beq _022EEAF8
	ldr r2, _022EEB10 ; =0x00000E69
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EEB08
_022EEAF8:
	ldr r2, _022EEB14 ; =0x00000E6A
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_022EEB08:
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022EEB10: .word 0x00000E69
_022EEB14: .word 0x00000E6A
	arm_func_end ov29_022EEA30

	arm_func_start ov29_022EEB18
ov29_022EEB18: ; 0x022EEB18
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	mov r4, r1
	mov r7, #0
	bl ov29_022E333C
	ldr r1, _022EED1C ; =0x02353538
	mov r5, r0
	ldr r0, [r1]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bl ov29_02344148
	cmp r0, #0
	bne _022EEB60
	ldr r1, _022EED20 ; =0x00000E6B
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022EED14
_022EEB60:
	ldrsh r0, [r4]
	ldrsh r1, [r4, #2]
	bl GetTile
	ldrb r2, [r0, #7]
	cmp r2, #0xff
	bne _022EEB94
	ldrsh r1, [r4]
	ldrsh r0, [r4, #2]
	sub fp, r1, r5
	sub sb, r0, r5
	add r4, r1, r5
	add r5, r0, r5
	b _022EECE8
_022EEB94:
	ldr r0, _022EED1C ; =0x02353538
	mov r1, #0x1c
	ldr r0, [r0]
	add r0, r0, #0x2e8
	add r0, r0, #0xec00
	mla r0, r2, r1, r0
	ldrsh r3, [r0, #2]
	ldrsh r2, [r0, #4]
	ldrsh r1, [r0, #6]
	ldrsh r0, [r0, #8]
	sub fp, r3, #1
	sub sb, r2, #1
	add r4, r1, #1
	add r5, r0, #1
	b _022EECE8
_022EEBD0:
	mov r0, sb, lsl #0x10
	mov r0, r0, asr #0x10
	mov r6, fp
	str r0, [sp]
	b _022EECDC
_022EEBE4:
	mov r0, r6
	mov r1, sb
	bl GetTile
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022EECD8
	ldr r1, [r0]
	cmp r1, #3
	bne _022EECD8
	bl ov29_022E1610
	ldrb r0, [r0]
	tst r0, #2
	bne _022EECD8
	bl GetKecleonIdToSpawnByFloor
	strh r0, [sp, #4]
	mov r8, #0
	b _022EEC68
_022EEC28:
	ldr r0, _022EED1C ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x790]
	cmp r0, #0
	beq _022EEC44
	bl GetKecleonIdToSpawnByFloor
	b _022EEC4C
_022EEC44:
	mov r0, #0
	bl GetMonsterIdToSpawn
_022EEC4C:
	strh r0, [sp, #4]
	ldrsh r0, [sp, #4]
	mov r1, #0
	bl MewSpawnCheck
	cmp r0, #0
	bne _022EEC70
	add r8, r8, #1
_022EEC68:
	cmp r8, #0x64
	blt _022EEC28
_022EEC70:
	ldrsh r0, [sp, #4]
	mov r1, #0
	bl MewSpawnCheck
	cmp r0, #0
	beq _022EECCC
	mov r0, #0
	strh r0, [sp, #0xc]
	strb r0, [sp, #6]
	ldr r0, [sp]
	mov r1, #1
	strh r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #8]
	strb r0, [sp, #0x12]
	add r0, sp, #4
	strh r6, [sp, #0xe]
	bl SpawnMonster
	cmp r0, #0
	beq _022EECCC
	add r0, sp, #0xe
	mov r1, #0
	bl ov29_023456BC
	add r7, r7, #1
_022EECCC:
	mov r0, r6
	mov r1, sb
	bl ov29_023391EC
_022EECD8:
	add r6, r6, #1
_022EECDC:
	cmp r6, r4
	ble _022EEBE4
	add sb, sb, #1
_022EECE8:
	cmp sb, r5
	ble _022EEBD0
	cmp r7, #0
	beq _022EED08
	ldr r1, _022EED24 ; =0x00000E6C
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022EED14
_022EED08:
	ldr r1, _022EED28 ; =0x00000E6D
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
_022EED14:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EED1C: .word 0x02353538
_022EED20: .word 0x00000E6B
_022EED24: .word 0x00000E6C
_022EED28: .word 0x00000E6D
	arm_func_end ov29_022EEB18

	arm_func_start ov29_022EED2C
ov29_022EED2C: ; 0x022EED2C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	movs r5, r1
	mov r6, r0
	beq _022EEE38
	mov r0, r5
	mov r1, #6
	mov r2, #8
	bl ov29_023049A8
	mov r0, #0x10
	mov r1, #0x55
	bl ov29_022EA370
	mov r0, r5
	mov r1, #8
	bl ov29_02304A48
	mov r0, r5
	mov r1, #0x2c
	ldr r4, [r5, #0xb4]
	bl AbilityIsActive2
	cmp r0, #0
	bne _022EEE38
	ldrb r0, [r4, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022EEE38
	ldrh r0, [r4, #0x62]
	strh r0, [sp, #0x10]
	ldrh r0, [r4, #0x64]
	strh r0, [sp, #0x12]
	ldrh r0, [r4, #0x66]
	strh r0, [sp, #0x14]
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _022EEDC4
	ldrb r0, [r4, #0x63]
	bl RemoveHeldItemNoHole
_022EEDC4:
	mov r0, #0
	strb r0, [r4, #0x62]
	bl ov29_02347030
	ldr r1, _022EEE40 ; =0x0000130F
	mov r0, r5
	bl ov29_022E56A0
	ldrb r1, [r4, #0x4c]
	ldr r0, _022EEE44 ; =0x0235171C
	ldrsh r3, [r5, #4]
	mov r1, r1, lsl #0x1d
	mov r4, r1, lsr #0x1b
	ldrsh r2, [r0, r4]
	ldr r1, _022EEE48 ; =0x0235171E
	mov r0, r6
	add r2, r3, r2
	strh r2, [sp, #0xc]
	ldrsh r2, [r1, r4]
	ldrsh r3, [r5, #6]
	mov r4, #1
	ldr r1, _022EEE4C ; =0x02351844
	add r2, r3, r2
	strh r2, [sp, #0xe]
	str r4, [sp]
	str r1, [sp, #4]
	add r2, sp, #0xc
	add r3, sp, #0x10
	add r1, r5, #4
	str r4, [sp, #8]
	bl ov29_02346344
_022EEE38:
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022EEE40: .word 0x0000130F
_022EEE44: .word 0x0235171C
_022EEE48: .word 0x0235171E
_022EEE4C: .word 0x02351844
	arm_func_end ov29_022EED2C

	arm_func_start ov29_022EEE50
ov29_022EEE50: ; 0x022EEE50
	stmdb sp!, {r3, r4, r5, lr}
	movs r4, r1
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0xd
	ldr r5, [r4, #0xb4]
	bl ov29_02301EAC
	cmp r0, #0
	bne _022EEEBC
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	ldr r0, _022EEEDC ; =0x000003E7
	add r2, r2, r1
	ldr r1, _022EEEE0 ; =0x022C4770
	cmp r2, r0
	movgt r2, r0
	ldr r1, [r1]
	mov r0, r2, lsl #8
	bl MultiplyByFixedPoint
	bl sub_02001888
	mov r1, r0
	ldr r3, _022EEEE4 ; =0x0000026D
	mov r0, r4
	mov r1, r1, asr #8
	mov r2, #0x16
	bl ov29_0230D11C
	ldmia sp!, {r3, r4, r5, pc}
_022EEEBC:
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022EEEE8 ; =0x00000E6E
	mov r0, r4
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022EEEDC: .word 0x000003E7
_022EEEE0: .word 0x022C4770
_022EEEE4: .word 0x0000026D
_022EEEE8: .word 0x00000E6E
	arm_func_end ov29_022EEE50

	arm_func_start ov29_022EEEEC
ov29_022EEEEC: ; 0x022EEEEC
	stmdb sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _022EEF3C ; =0x022C45CC
	mov r0, r4
	ldrsh r1, [r1]
	mov r2, #0x15
	mov r3, #0x26c
	bl ov29_0230D11C
	mov r0, r4
	bl ov29_022FBD80
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #1
	mov r3, #0
	bl TryInflictPoisonedStatus
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022EEF3C: .word 0x022C45CC
	arm_func_end ov29_022EEEEC

	arm_func_start ov29_022EEF40
ov29_022EEF40: ; 0x022EEF40
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x64
	movs sb, r2
	str r0, [sp, #0xc]
	mov sl, r1
	str r3, [sp, #0x10]
	ldr r8, [sp, #0x88]
	beq _022EF064
	bl ov29_022E7A8C
	ldr r1, _022EF06C ; =0x022C4B18
	mov r4, r0
	ldrb r0, [r1, r4]
	cmp r0, #0
	bne _022EEFB0
	mov r0, sl
	mov r1, r8
	mov r2, r4
	bl ov29_022E58B0
	str r8, [sp]
	str r4, [sp, #4]
	mov r4, #1
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r1, sl
	mov r2, sb
	str r4, [sp, #8]
	bl ov29_022EF154
	b _022EF064
_022EEFB0:
	ldr r0, [sb, #0xb4]
	mov r5, #0
	ldrb fp, [r0, #6]
	str sb, [sp, #0x14]
	add r7, r5, #1
_022EEFC4:
	ldr r0, _022EF070 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid__022EE348
	cmp r0, #0
	cmpne sb, r6
	beq _022EF004
	ldr r0, [r6, #0xb4]
	ldrb r0, [r0, #6]
	cmp fp, r0
	addeq r0, sp, #0x14
	streq r6, [r0, r7, lsl #2]
	addeq r7, r7, #1
_022EF004:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022EEFC4
	mov sb, #0
	add r5, sp, #0x14
	mov fp, #1
	b _022EF05C
_022EF020:
	ldr r6, [r5, sb, lsl #2]
	mov r2, r4
	mov r0, r6
	add r1, r6, #4
	bl ov29_022E58B0
	str r8, [sp]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r2, r6
	mov r1, sl
	stmib sp, {r4, fp}
	bl ov29_022EF154
	mov r0, #1
	bl ov29_022E38E0
	add sb, sb, #1
_022EF05C:
	cmp sb, r7
	blt _022EF020
_022EF064:
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EF06C: .word 0x022C4B18
_022EF070: .word 0x02353538
	arm_func_end ov29_022EEF40

	arm_func_start ov29_022EF074
ov29_022EF074: ; 0x022EF074
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov r0, #3
	mov r4, r1
	bl DungeonRandInt
	mov r2, r0
	mov r0, sl
	mov r1, r4
	add r2, r2, #2
	bl ov29_022EF4B4
	cmp r0, #0
	ble _022EF0B0
	ldr r1, _022EF148 ; =0x0000030F
	mov r0, r4
	bl ov29_022E56D4
_022EF0B0:
	mov r7, #0
	ldr r4, _022EF14C ; =0x02353538
	mov r8, r7
	mov r5, #1
	mov r6, r7
_022EF0C4:
	ldr r0, [r4]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb38]
	mov r0, sb
	bl EntityIsValid__022EE348
	cmp r0, #0
	ldrne r0, [sb, #0xb4]
	ldrneb r1, [r0, #9]
	cmpne r1, #1
	ldrneb r1, [r0, #0xbc]
	cmpne r1, #7
	beq _022EF11C
	bl IsExperienceLocked
	cmp r0, #0
	bne _022EF11C
	mov r0, sb
	mov r1, sb
	mov r2, r6
	bl ov29_02314EB8
	cmp r0, #0
	movne r7, r5
_022EF11C:
	add r8, r8, #1
	cmp r8, #0x10
	blt _022EF0C4
	cmp r7, #0
	ldrne r0, _022EF150 ; =0x00000E6F
	moveq r0, #0xe70
	mov r1, r0, lsl #0x10
	mov r0, sl
	mov r1, r1, lsr #0x10
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022EF148: .word 0x0000030F
_022EF14C: .word 0x02353538
_022EF150: .word 0x00000E6F
	arm_func_end ov29_022EF074

	arm_func_start ov29_022EF154
ov29_022EF154: ; 0x022EF154
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldrb ip, [sp, #0x24]
	ldr lr, [sp, #0x20]
	mov r7, r0
	mov r6, r1
	mov r5, r2
	cmp ip, #0x20
	mov r4, #0
	addls pc, pc, ip, lsl #2
	b _022EF454
_022EF180: ; jump table
	b _022EF454 ; case 0
	b _022EF204 ; case 1
	b _022EF214 ; case 2
	b _022EF224 ; case 3
	b _022EF234 ; case 4
	b _022EF248 ; case 5
	b _022EF260 ; case 6
	b _022EF280 ; case 7
	b _022EF2A4 ; case 8
	b _022EF2C4 ; case 9
	b _022EF2F4 ; case 10
	b _022EF314 ; case 11
	b _022EF328 ; case 12
	b _022EF348 ; case 13
	b _022EF368 ; case 14
	b _022EF388 ; case 15
	b _022EF398 ; case 16
	b _022EF3BC ; case 17
	b _022EF3D0 ; case 18
	b _022EF3E4 ; case 19
	b _022EF408 ; case 20
	b _022EF418 ; case 21
	b _022EF428 ; case 22
	b _022EF438 ; case 23
	b _022EF444 ; case 24
	b _022EF454 ; case 25
	b _022EF454 ; case 26
	b _022EF454 ; case 27
	b _022EF454 ; case 28
	b _022EF454 ; case 29
	b _022EF454 ; case 30
	b _022EF454 ; case 31
	b _022EF248 ; case 32
_022EF204:
	mov r0, r6
	mov r1, r5
	bl ov29_022EE36C
	b _022EF454
_022EF214:
	mov r0, r6
	mov r1, r5
	bl ov29_022EE434
	b _022EF454
_022EF224:
	mov r0, r6
	mov r1, r5
	bl ov29_022EE62C
	b _022EF454
_022EF234:
	mov r0, r6
	mov r1, lr
	bl ov29_022EE994
	mov r4, #1
	b _022EF454
_022EF248:
	mov r2, r3
	ldrb r3, [sp, #0x28]
	mov r0, r6
	mov r1, r5
	bl ov29_022EE820
	b _022EF454
_022EF260:
	cmp r5, #0
	beq _022EF454
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r4
	bl TryWarp
	b _022EF454
_022EF280:
	cmp r5, #0
	beq _022EF454
	mov r0, #8
	bl DungeonRandInt
	mov r2, r0
	mov r0, r7
	mov r1, r5
	bl TryBlowAway
	b _022EF454
_022EF2A4:
	cmp r5, #0
	beq _022EF454
	mov r0, r6
	mov r1, r5
	mov r3, r4
	mov r2, #1
	bl TryInflictConfusedStatus
	b _022EF454
_022EF2C4:
	cmp r5, #0
	beq _022EF454
	ldr r1, _022EF460 ; =0x022C4720
	mov r0, r5
	mov r2, #1
	bl CalcStatusDuration
	mov r2, r0
	mov r0, r6
	mov r1, r5
	mov r3, #1
	bl TryInflictSleepStatus
	b _022EF454
_022EF2F4:
	cmp r5, #0
	beq _022EF454
	mov r2, #1
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl LowerSpeed
	b _022EF454
_022EF314:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl TrySealMove
	b _022EF454
_022EF328:
	cmp r5, #0
	beq _022EF454
	mov r0, r6
	mov r1, r5
	mov r3, r4
	mov r2, #1
	bl TryInflictPoisonedStatus
	b _022EF454
_022EF348:
	ldr ip, _022EF464 ; =0x00000251
	mov r0, r6
	mov r1, r5
	add r2, r5, #4
	mov r3, #1
	stmia sp, {r4, ip}
	bl ov29_02320448
	b _022EF454
_022EF368:
	ldr ip, _022EF464 ; =0x00000251
	mov r0, r6
	mov r1, r5
	add r2, r5, #4
	mov r3, #2
	stmia sp, {r4, ip}
	bl ov29_02320448
	b _022EF454
_022EF388:
	mov r0, r6
	mov r1, r5
	bl ov29_022EEA30
	b _022EF454
_022EF398:
	cmp r5, #0
	beq _022EF454
	ldr r0, _022EF468 ; =0x022C45C8
	ldr r3, _022EF46C ; =0x00000252
	ldrsh r1, [r0]
	mov r0, r5
	mov r2, #0xf
	bl ov29_0230D11C
	b _022EF454
_022EF3BC:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov29_02319624
	b _022EF454
_022EF3D0:
	mov r0, r6
	mov r1, lr
	bl ov29_022EEB18
	mov r4, #1
	b _022EF454
_022EF3E4:
	cmp r5, #0
	beq _022EF454
	ldr r0, _022EF470 ; =0x022C4418
	ldr r3, _022EF474 ; =0x00000245
	ldrsh r1, [r0]
	mov r0, r5
	mov r2, #0xa
	bl ov29_0230D11C
	b _022EF454
_022EF408:
	mov r0, r6
	mov r1, r5
	bl ov29_022EEE50
	b _022EF454
_022EF418:
	mov r0, r6
	mov r1, r5
	bl ov29_022EEEEC
	b _022EF454
_022EF428:
	mov r0, r6
	mov r1, r5
	bl ov29_022EED2C
	b _022EF454
_022EF438:
	str lr, [sp]
	bl ov29_022EEF40
	b _022EF454
_022EF444:
	mov r0, r6
	mov r1, lr
	bl ov29_022EF074
	mov r4, #1
_022EF454:
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022EF460: .word 0x022C4720
_022EF464: .word 0x00000251
_022EF468: .word 0x022C45C8
_022EF46C: .word 0x00000252
_022EF470: .word 0x022C4418
_022EF474: .word 0x00000245
	arm_func_end ov29_022EF154

	arm_func_start ov29_022EF478
ov29_022EF478: ; 0x022EF478
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, [r0, #0x10]
	mov r5, r1
	mov r0, r4
	bl EntityIsValid__022EE348
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #2
	bne _022EF4AC
	mov r0, r4
	bl ov29_022E1608
	strb r5, [r0]
_022EF4AC:
	bl ov29_02336F4C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022EF478

	arm_func_start ov29_022EF4B4
ov29_022EF4B4: ; 0x022EF4B4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov r0, #8
	mov sl, r1
	mov sb, r2
	bl DungeonRandInt
	mov r8, r0
	ldr r0, _022EF5D0 ; =0x0000017B
	mov r7, #0
	mov r6, r7
	add r5, r0, #2
	add r4, r0, #3
	b _022EF5BC
_022EF4E8:
	mov r0, #0
	bl GetMonsterIdToSpawn
	mov fp, r0
	bl FemaleToMaleForm
	ldr r1, _022EF5D0 ; =0x0000017B
	cmp r0, r1
	cmpne r0, #0x17c
	cmpne r0, r5
	cmpne r0, r4
	beq _022EF52C
	sub r0, r0, #0x1cc
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _022EF534
_022EF52C:
	mov r0, #1
	b _022EF538
_022EF534:
	mov r0, #0
_022EF538:
	cmp r0, #0
	bne _022EF5B8
	strh fp, [sp]
	ldrsh r0, [sp]
	mov r1, #0
	and r8, r8, #7
	bl MewSpawnCheck
	cmp r0, #0
	beq _022EF5B4
	ldr r1, _022EF5D4 ; =0x0235171C
	mov r0, #0
	mov r2, r8, lsl #2
	ldrsh r3, [r1, r2]
	strh r0, [sp, #8]
	strb r0, [sp, #2]
	ldrsh r0, [sl]
	add r1, r1, r8, lsl #2
	ldrsh r2, [r1, #2]
	add r0, r0, r3
	strh r0, [sp, #0xa]
	ldrsh r3, [sl, #2]
	add r0, sp, #0
	mov r1, #1
	add r2, r3, r2
	strh r2, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #4]
	strb r2, [sp, #0xe]
	bl SpawnMonster
	cmp r0, #0
	addne r7, r7, #1
_022EF5B4:
	add r8, r8, #1
_022EF5B8:
	add r6, r6, #1
_022EF5BC:
	cmp r6, sb
	blt _022EF4E8
	mov r0, r7
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EF5D0: .word 0x0000017B
_022EF5D4: .word 0x0235171C
	arm_func_end ov29_022EF4B4

	arm_func_start ov29_022EF5D8
ov29_022EF5D8: ; 0x022EF5D8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r5, #0
	bl ov29_022E333C
	ldrb r7, [r8, #0x25]
	mov r6, r0
	cmp r7, #0xff
	beq _022EF608
	mov r0, r8
	bl HasDropeyeStatus
	cmp r0, #0
	beq _022EF65C
_022EF608:
	ldrsh r0, [r8, #6]
	sub r4, r0, r6
	b _022EF648
_022EF614:
	ldrsh r0, [r8, #4]
	sub r7, r0, r6
	b _022EF634
_022EF620:
	mov r0, r7
	mov r1, r4
	bl ov29_022EF700
	orr r5, r5, r0
	add r7, r7, #1
_022EF634:
	ldrsh r0, [r8, #4]
	add r0, r0, r6
	cmp r7, r0
	ble _022EF620
	add r4, r4, #1
_022EF648:
	ldrsh r0, [r8, #6]
	add r0, r0, r6
	cmp r4, r0
	ble _022EF614
	b _022EF6C4
_022EF65C:
	ldr r0, _022EF6F4 ; =0x02353538
	mov r1, #0x1c
	ldr r0, [r0]
	add r0, r0, #0x2e8
	add r0, r0, #0xec00
	mla r4, r7, r1, r0
	ldrsh r0, [r4, #4]
	sub r6, r0, #1
	b _022EF6B4
_022EF680:
	ldrsh r0, [r4, #2]
	sub r7, r0, #1
	b _022EF6A0
_022EF68C:
	mov r0, r7
	mov r1, r6
	bl ov29_022EF700
	orr r5, r5, r0
	add r7, r7, #1
_022EF6A0:
	ldrsh r0, [r4, #6]
	add r0, r0, #1
	cmp r7, r0
	ble _022EF68C
	add r6, r6, #1
_022EF6B4:
	ldrsh r0, [r4, #8]
	add r0, r0, #1
	cmp r6, r0
	ble _022EF680
_022EF6C4:
	cmp r5, #0
	beq _022EF6E4
	ldr r1, _022EF6F8 ; =0x00000E02
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	bl ov29_02339CE8
	bl ov29_02336F4C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022EF6E4:
	ldr r1, _022EF6FC ; =0x00000E03
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022EF6F4: .word 0x02353538
_022EF6F8: .word 0x00000E02
_022EF6FC: .word 0x00000E03
	arm_func_end ov29_022EF5D8

	arm_func_start ov29_022EF700
ov29_022EF700: ; 0x022EF700
	stmdb sp!, {r3, lr}
	bl GetTile
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _022EF730
	ldr r0, [r1]
	cmp r0, #2
	ldreqb r0, [r1, #0x20]
	cmpeq r0, #0
	moveq r0, #1
	streqb r0, [r1, #0x20]
	ldmeqia sp!, {r3, pc}
_022EF730:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022EF700

	arm_func_start ov29_022EF738
ov29_022EF738: ; 0x022EF738
	stmdb sp!, {r3, lr}
	bl ov29_023361D4
	cmp r0, #0
	beq _022EF780
	ldr r0, _022EF798 ; =0x02353538
	mov r1, #0xc
	ldr r0, [r0]
	ldr r2, _022EF79C ; =0x022C6C7A
	add r0, r0, #0x4000
	ldrb r3, [r0, #0xda]
	smulbb r1, r3, r1
	ldrb r1, [r2, r1]
	cmp r1, #0
	movne r1, #2
	strneb r1, [r0, #0xca]
	moveq r1, #1
	streqb r1, [r0, #0xca]
	ldmia sp!, {r3, pc}
_022EF780:
	ldr r0, _022EF798 ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x4000
	strb r1, [r0, #0xca]
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EF798: .word 0x02353538
_022EF79C: .word 0x022C6C7A
	arm_func_end ov29_022EF738

	arm_func_start EntityIsValid__022EF7A0
EntityIsValid__022EF7A0: ; 0x022EF7A0
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__022EF7A0

	arm_func_start ov29_022EF7C4
ov29_022EF7C4: ; 0x022EF7C4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r2
	cmp r1, #5
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r4, _022EF89C ; =0x02353538
	ldr r0, [r4]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xca]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #3
	beq _022EF874
	mov r5, #1
	mov r6, #0
	b _022EF84C
_022EF804:
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb38]
	cmp r8, sb
	beq _022EF840
	mov r0, sb
	bl EntityIsValid__022EF7A0
	cmp r0, #0
	beq _022EF840
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #8]
	cmp r0, #0
	moveq r5, #0
	beq _022EF854
_022EF840:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
_022EF84C:
	cmp r6, #0x10
	blt _022EF804
_022EF854:
	cmp r5, #0
	beq _022EF874
	mov r0, #0x64
	bl ov29_0234BA54
	ldr r0, _022EF89C ; =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #6]
_022EF874:
	cmp r7, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _022EF89C ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _022EF8A0 ; =0x000003E7
	bl ov29_022EAE14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022EF89C: .word 0x02353538
_022EF8A0: .word 0x000003E7
	arm_func_end ov29_022EF7C4

	arm_func_start ov29_022EF8A4
ov29_022EF8A4: ; 0x022EF8A4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, #1
	ldr r5, _022EF934 ; =0x02353538
	mov r7, r8
	mov r6, #0
	mvn r4, #0
_022EF8BC:
	ldr r0, [r5]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb28]
	cmp sb, #0
	beq _022EF918
	mov r0, sb
	bl EntityIsValid__022EF7A0
	cmp r0, #0
	ldrne r0, [r5]
	addne r0, r0, r8, lsl #2
	addne r0, r0, #0xcc00
	ldrnesh r1, [r0, #0xec]
	cmpne r1, r4
	ldrnesh r2, [r0, #0xee]
	cmpne r2, r4
	beq _022EF918
	mov r0, sb
	mov r3, r7
	bl ov29_022F85F0
	mov r0, sb
	mov r1, r6
	bl ov29_022E1A40
_022EF918:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #4
	blt _022EF8BC
	bl ov29_023444D4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022EF934: .word 0x02353538
	arm_func_end ov29_022EF8A4

	arm_func_start ov29_022EF938
ov29_022EF938: ; 0x022EF938
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _022EF9B4 ; =0x02353538
	mov r4, #0
	mov r6, #4
_022EF948:
	ldr r0, [r5]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	cmp r7, #0
	beq _022EF99C
	mov r0, r7
	bl EntityIsValid__022EF7A0
	cmp r0, #0
	beq _022EF99C
	ldr r0, [r5]
	add r0, r0, r4
	add r0, r0, #0xc000
	ldrb r1, [r0, #0xd0c]
	mov r0, r7
	cmp r1, #0xff
	beq _022EF994
	bl ov29_022FA360
	b _022EF99C
_022EF994:
	mov r1, r6
	bl ov29_022FA360
_022EF99C:
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	cmp r4, #4
	blt _022EF948
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022EF9B4: .word 0x02353538
	arm_func_end ov29_022EF938

	arm_func_start ov29_022EF9B8
ov29_022EF9B8: ; 0x022EF9B8
	bx lr
	arm_func_end ov29_022EF9B8

	arm_func_start ov29_022EF9BC
ov29_022EF9BC: ; 0x022EF9BC
	ldr ip, _022EF9C4 ; =ov29_02348F20
	bx ip
	.align 2, 0
_022EF9C4: .word ov29_02348F20
	arm_func_end ov29_022EF9BC

	arm_func_start ov29_022EF9C8
ov29_022EF9C8: ; 0x022EF9C8
	stmdb sp!, {r3, lr}
	bl IsFloorOver
	cmp r0, #0
	ldreq r0, _022EF9E8 ; =0x02353538
	ldreq r0, [r0]
	ldreqb r0, [r0, #6]
	cmpeq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EF9E8: .word 0x02353538
	arm_func_end ov29_022EF9C8

	arm_func_start ov29_022EF9EC
ov29_022EF9EC: ; 0x022EF9EC
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xbc]
	cmp r0, #0x14
	addls pc, pc, r0, lsl #2
	b _022EFA64
_022EFA00: ; jump table
	b _022EFA5C ; case 0
	b _022EFA5C ; case 1
	b _022EFA5C ; case 2
	b _022EFA5C ; case 3
	b _022EFA5C ; case 4
	b _022EFA5C ; case 5
	b _022EFA64 ; case 6
	b _022EFA54 ; case 7
	b _022EFA5C ; case 8
	b _022EFA54 ; case 9
	b _022EFA54 ; case 10
	b _022EFA54 ; case 11
	b _022EFA54 ; case 12
	b _022EFA54 ; case 13
	b _022EFA54 ; case 14
	b _022EFA54 ; case 15
	b _022EFA5C ; case 16
	b _022EFA5C ; case 17
	b _022EFA5C ; case 18
	b _022EFA5C ; case 19
	b _022EFA5C ; case 20
_022EFA54:
	mov r0, #1
	bx lr
_022EFA5C:
	mov r0, #0
	bx lr
_022EFA64:
	mov r0, #0
	bx lr
	arm_func_end ov29_022EF9EC

	arm_func_start ov29_022EFA6C
ov29_022EFA6C: ; 0x022EFA6C
	mov r0, #1
	bx lr
	arm_func_end ov29_022EFA6C

	arm_func_start ov29_022EFA74
ov29_022EFA74: ; 0x022EFA74
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r1, _022EFAE0 ; =0x02353538
	ldr r0, _022EFAE4 ; =0x000286D0
	ldr r1, [r1]
	ldrsh r6, [r1, r0]
	cmp r6, #0
	ble _022EFAD8
	add r0, sp, #0
	mov r1, #0x44
	bl ov29_0230F798
	mov r7, r0
	cmp r7, #0
	ble _022EFAD8
	mov r8, #0
	add r5, sp, #0
	mov r4, r8
	b _022EFAD0
_022EFABC:
	ldr r0, [r5, r8, lsl #2]
	mov r1, r6
	mov r2, r4
	bl ov29_022FA144
	add r8, r8, #1
_022EFAD0:
	cmp r8, r7
	blt _022EFABC
_022EFAD8:
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022EFAE0: .word 0x02353538
_022EFAE4: .word 0x000286D0
	arm_func_end ov29_022EFA74

	arm_func_start ov29_022EFAE8
ov29_022EFAE8: ; 0x022EFAE8
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #3
	movls r0, #1
	movhi r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_022EFAE8

	arm_func_start ov29_022EFB04
ov29_022EFB04: ; 0x022EFB04
	add r0, r0, #0xf0
	and r0, r0, #0xff
	cmp r0, #4
	movls r0, #1
	movhi r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_022EFB04

	arm_func_start ov29_022EFB20
ov29_022EFB20: ; 0x022EFB20
	stmdb sp!, {r3, lr}
	cmp r0, #0
	beq _022EFB48
	mov r0, #0xa
	bl ov29_0234BA54
	mov r0, #0
	bl ov29_0234B1A4
	mov r0, #0xa
	mov r1, #0x62
	bl ov29_022EA370
_022EFB48:
	bl ov29_0234D630
	ldr r1, _022EFB7C ; =0x023535A4
	mvn r2, #1
	mov r0, #1
	strb r2, [r1]
	bl ov29_022DE5F0
	ldr r1, _022EFB80 ; =0x0237C9A0
	strh r0, [r1, #2]
	mov r0, #0
	bl ov29_022DE5F0
	ldr r1, _022EFB80 ; =0x0237C9A0
	strh r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EFB7C: .word 0x023535A4
_022EFB80: .word 0x0237C9A0
	arm_func_end ov29_022EFB20

	arm_func_start ov29_022EFB84
ov29_022EFB84: ; 0x022EFB84
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	bl ov29_0234D8A0
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0xa
	mov r1, #0x62
	bl ov29_022EA370
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022EFB84

	arm_func_start ov29_022EFBAC
ov29_022EFBAC: ; 0x022EFBAC
	ldr r1, _022F04E4 ; =0x000001FE
	cmp r0, r1
	bgt _022F0314
	bge _022F04C4
	cmp r0, #0x1d4
	bgt _022F024C
	bge _022F04C4
	sub r2, r1, #0x53
	cmp r0, r2
	bgt _022F01E4
	sub r1, r1, #0xe9
	subs r1, r0, r1
	addpl pc, pc, r1, lsl #2
	b _022EFE40
_022EFBE4: ; jump table
	b _022F04C4 ; case 0
	b _022F04C4 ; case 1
	b _022F04C4 ; case 2
	b _022F04CC ; case 3
	b _022F04DC ; case 4
	b _022F04DC ; case 5
	b _022F04DC ; case 6
	b _022F04DC ; case 7
	b _022F04DC ; case 8
	b _022F04DC ; case 9
	b _022F04DC ; case 10
	b _022F04DC ; case 11
	b _022F04CC ; case 12
	b _022F04CC ; case 13
	b _022F04DC ; case 14
	b _022F04DC ; case 15
	b _022F04DC ; case 16
	b _022F04DC ; case 17
	b _022F04C4 ; case 18
	b _022F04DC ; case 19
	b _022F04C4 ; case 20
	b _022F04DC ; case 21
	b _022F04DC ; case 22
	b _022F04DC ; case 23
	b _022F04DC ; case 24
	b _022F04DC ; case 25
	b _022F04DC ; case 26
	b _022F04DC ; case 27
	b _022F04DC ; case 28
	b _022F04C4 ; case 29
	b _022F04C4 ; case 30
	b _022F04DC ; case 31
	b _022F04DC ; case 32
	b _022F04DC ; case 33
	b _022F04DC ; case 34
	b _022F04C4 ; case 35
	b _022F04DC ; case 36
	b _022F04DC ; case 37
	b _022F04DC ; case 38
	b _022F04DC ; case 39
	b _022F04DC ; case 40
	b _022F04DC ; case 41
	b _022F04C4 ; case 42
	b _022F04C4 ; case 43
	b _022F04DC ; case 44
	b _022F04DC ; case 45
	b _022F04DC ; case 46
	b _022F04DC ; case 47
	b _022F04DC ; case 48
	b _022F04DC ; case 49
	b _022F04DC ; case 50
	b _022F04DC ; case 51
	b _022F04CC ; case 52
	b _022F04DC ; case 53
	b _022F04DC ; case 54
	b _022F04DC ; case 55
	b _022F04DC ; case 56
	b _022F04DC ; case 57
	b _022F04C4 ; case 58
	b _022F04DC ; case 59
	b _022F04DC ; case 60
	b _022F04DC ; case 61
	b _022F04DC ; case 62
	b _022F04DC ; case 63
	b _022F04CC ; case 64
	b _022F04CC ; case 65
	b _022F04DC ; case 66
	b _022F04DC ; case 67
	b _022F04DC ; case 68
	b _022F04C4 ; case 69
	b _022F04C4 ; case 70
	b _022F04C4 ; case 71
	b _022F04C4 ; case 72
	b _022F04DC ; case 73
	b _022F04DC ; case 74
	b _022F04DC ; case 75
	b _022F04C4 ; case 76
	b _022F04DC ; case 77
	b _022F04DC ; case 78
	b _022F04DC ; case 79
	b _022F04CC ; case 80
	b _022F04C4 ; case 81
	b _022F04DC ; case 82
	b _022F04DC ; case 83
	b _022F04C4 ; case 84
	b _022F04CC ; case 85
	b _022F04CC ; case 86
	b _022F04DC ; case 87
	b _022F04C4 ; case 88
	b _022F04C4 ; case 89
	b _022F04C4 ; case 90
	b _022F04C4 ; case 91
	b _022F04DC ; case 92
	b _022F04DC ; case 93
	b _022F04C4 ; case 94
	b _022F04C4 ; case 95
	b _022F04DC ; case 96
	b _022F04DC ; case 97
	b _022F04DC ; case 98
	b _022F04DC ; case 99
	b _022F04C4 ; case 100
	b _022F04DC ; case 101
	b _022F04C4 ; case 102
	b _022F04C4 ; case 103
	b _022F04C4 ; case 104
	b _022F04C4 ; case 105
	b _022F04DC ; case 106
	b _022F04DC ; case 107
	b _022F04C4 ; case 108
	b _022F04DC ; case 109
	b _022F04C4 ; case 110
	b _022F04DC ; case 111
	b _022F04DC ; case 112
	b _022F04DC ; case 113
	b _022F04DC ; case 114
	b _022F04DC ; case 115
	b _022F04DC ; case 116
	b _022F04C4 ; case 117
	b _022F04CC ; case 118
	b _022F04DC ; case 119
	b _022F04DC ; case 120
	b _022F04CC ; case 121
	b _022F04C4 ; case 122
	b _022F04C4 ; case 123
	b _022F04C4 ; case 124
	b _022F04C4 ; case 125
	b _022F04DC ; case 126
	b _022F04DC ; case 127
	b _022F04CC ; case 128
	b _022F04C4 ; case 129
	b _022F04C4 ; case 130
	b _022F04DC ; case 131
	b _022F04DC ; case 132
	b _022F04C4 ; case 133
	b _022F04DC ; case 134
	b _022F04C4 ; case 135
	b _022F04C4 ; case 136
	b _022F04C4 ; case 137
	b _022F04DC ; case 138
	b _022F04C4 ; case 139
	b _022F04C4 ; case 140
	b _022F04C4 ; case 141
	b _022F04C4 ; case 142
	b _022F04C4 ; case 143
	b _022F04C4 ; case 144
	b _022F04DC ; case 145
	b _022F04DC ; case 146
	b _022F04DC ; case 147
	b _022F04CC ; case 148
	b _022F04CC ; case 149
	b _022F04CC ; case 150
_022EFE40:
	cmp r0, #0xee
	bgt _022F0194
	subs r1, r0, #0x29
	addpl pc, pc, r1, lsl #2
	b _022F016C
_022EFE54: ; jump table
	b _022F04C4 ; case 0
	b _022F04C4 ; case 1
	b _022F04DC ; case 2
	b _022F04DC ; case 3
	b _022F04DC ; case 4
	b _022F04DC ; case 5
	b _022F04DC ; case 6
	b _022F04DC ; case 7
	b _022F04C4 ; case 8
	b _022F04CC ; case 9
	b _022F04CC ; case 10
	b _022F04DC ; case 11
	b _022F04CC ; case 12
	b _022F04DC ; case 13
	b _022F04DC ; case 14
	b _022F04DC ; case 15
	b _022F04DC ; case 16
	b _022F04CC ; case 17
	b _022F04CC ; case 18
	b _022F04DC ; case 19
	b _022F04DC ; case 20
	b _022F04DC ; case 21
	b _022F04DC ; case 22
	b _022F04DC ; case 23
	b _022F04D4 ; case 24
	b _022F04DC ; case 25
	b _022F04DC ; case 26
	b _022F04DC ; case 27
	b _022F04DC ; case 28
	b _022F04DC ; case 29
	b _022F04DC ; case 30
	b _022F04C4 ; case 31
	b _022F04C4 ; case 32
	b _022F04C4 ; case 33
	b _022F04DC ; case 34
	b _022F04DC ; case 35
	b _022F04DC ; case 36
	b _022F04DC ; case 37
	b _022F04DC ; case 38
	b _022F04DC ; case 39
	b _022F04C4 ; case 40
	b _022F04C4 ; case 41
	b _022F04DC ; case 42
	b _022F04DC ; case 43
	b _022F04DC ; case 44
	b _022F04DC ; case 45
	b _022F04DC ; case 46
	b _022F04DC ; case 47
	b _022F04DC ; case 48
	b _022F04DC ; case 49
	b _022F04C4 ; case 50
	b _022F04C4 ; case 51
	b _022F04C4 ; case 52
	b _022F04DC ; case 53
	b _022F04DC ; case 54
	b _022F04DC ; case 55
	b _022F04DC ; case 56
	b _022F04CC ; case 57
	b _022F04CC ; case 58
	b _022F04DC ; case 59
	b _022F04DC ; case 60
	b _022F04DC ; case 61
	b _022F04DC ; case 62
	b _022F04DC ; case 63
	b _022F04DC ; case 64
	b _022F04DC ; case 65
	b _022F04DC ; case 66
	b _022F04DC ; case 67
	b _022F04C4 ; case 68
	b _022F04C4 ; case 69
	b _022F04DC ; case 70
	b _022F04DC ; case 71
	b _022F04DC ; case 72
	b _022F04DC ; case 73
	b _022F04DC ; case 74
	b _022F04C4 ; case 75
	b _022F04C4 ; case 76
	b _022F04C4 ; case 77
	b _022F04C4 ; case 78
	b _022F04DC ; case 79
	b _022F04DC ; case 80
	b _022F04DC ; case 81
	b _022F04DC ; case 82
	b _022F04DC ; case 83
	b _022F04DC ; case 84
	b _022F04DC ; case 85
	b _022F04DC ; case 86
	b _022F04DC ; case 87
	b _022F04C4 ; case 88
	b _022F04C4 ; case 89
	b _022F04DC ; case 90
	b _022F04CC ; case 91
	b _022F04C4 ; case 92
	b _022F04CC ; case 93
	b _022F04CC ; case 94
	b _022F04DC ; case 95
	b _022F04C4 ; case 96
	b _022F04DC ; case 97
	b _022F04DC ; case 98
	b _022F04DC ; case 99
	b _022F04DC ; case 100
	b _022F04C4 ; case 101
	b _022F04DC ; case 102
	b _022F04C4 ; case 103
	b _022F04C4 ; case 104
	b _022F04C4 ; case 105
	b _022F04DC ; case 106
	b _022F04DC ; case 107
	b _022F04DC ; case 108
	b _022F04C4 ; case 109
	b _022F04C4 ; case 110
	b _022F04DC ; case 111
	b _022F04DC ; case 112
	b _022F04DC ; case 113
	b _022F04DC ; case 114
	b _022F04DC ; case 115
	b _022F04DC ; case 116
	b _022F04DC ; case 117
	b _022F04DC ; case 118
	b _022F04DC ; case 119
	b _022F04CC ; case 120
	b _022F04CC ; case 121
	b _022F04CC ; case 122
	b _022F04CC ; case 123
	b _022F04C4 ; case 124
	b _022F04C4 ; case 125
	b _022F04DC ; case 126
	b _022F04DC ; case 127
	b _022F04C4 ; case 128
	b _022F04C4 ; case 129
	b _022F04C4 ; case 130
	b _022F04DC ; case 131
	b _022F04DC ; case 132
	b _022F04DC ; case 133
	b _022F04DC ; case 134
	b _022F04DC ; case 135
	b _022F04DC ; case 136
	b _022F04DC ; case 137
	b _022F04DC ; case 138
	b _022F04DC ; case 139
	b _022F04DC ; case 140
	b _022F04DC ; case 141
	b _022F04DC ; case 142
	b _022F04DC ; case 143
	b _022F04DC ; case 144
	b _022F04DC ; case 145
	b _022F04C4 ; case 146
	b _022F04C4 ; case 147
	b _022F04C4 ; case 148
	b _022F04C4 ; case 149
	b _022F04C4 ; case 150
	b _022F04DC ; case 151
	b _022F04C4 ; case 152
	b _022F04DC ; case 153
	b _022F04DC ; case 154
	b _022F04DC ; case 155
	b _022F04DC ; case 156
	b _022F04CC ; case 157
	b _022F04DC ; case 158
	b _022F04C4 ; case 159
	b _022F04C4 ; case 160
	b _022F04C4 ; case 161
	b _022F04C4 ; case 162
	b _022F04C4 ; case 163
	b _022F04C4 ; case 164
	b _022F04C4 ; case 165
	b _022F04C4 ; case 166
	b _022F04C4 ; case 167
	b _022F04C4 ; case 168
	b _022F04C4 ; case 169
	b _022F04C4 ; case 170
	b _022F04C4 ; case 171
	b _022F04C4 ; case 172
	b _022F04C4 ; case 173
	b _022F04C4 ; case 174
	b _022F04C4 ; case 175
	b _022F04C4 ; case 176
	b _022F04C4 ; case 177
	b _022F04C4 ; case 178
	b _022F04C4 ; case 179
	b _022F04C4 ; case 180
	b _022F04C4 ; case 181
	b _022F04C4 ; case 182
	b _022F04C4 ; case 183
	b _022F04C4 ; case 184
	b _022F04C4 ; case 185
	b _022F04C4 ; case 186
	b _022F04C4 ; case 187
	b _022F04DC ; case 188
	b _022F04DC ; case 189
	b _022F04DC ; case 190
	b _022F04C4 ; case 191
	b _022F04DC ; case 192
	b _022F04C4 ; case 193
	b _022F04DC ; case 194
	b _022F04DC ; case 195
	b _022F04DC ; case 196
	b _022F04C4 ; case 197
_022F016C:
	cmp r0, #0xf
	bgt _022F0188
	cmp r0, #0xc
	blt _022F04DC
	cmpne r0, #0xf
	beq _022F04C4
	b _022F04DC
_022F0188:
	cmp r0, #0x16
	beq _022F04C4
	b _022F04DC
_022F0194:
	cmp r0, #0x104
	bgt _022F01D4
	subs r1, r0, #0xfa
	addpl pc, pc, r1, lsl #2
	b _022F04DC
_022F01A8: ; jump table
	b _022F04C4 ; case 0
	b _022F04DC ; case 1
	b _022F04DC ; case 2
	b _022F04C4 ; case 3
	b _022F04CC ; case 4
	b _022F04DC ; case 5
	b _022F04DC ; case 6
	b _022F04C4 ; case 7
	b _022F04DC ; case 8
	b _022F04DC ; case 9
	b _022F04C4 ; case 10
_022F01D4:
	ldr r1, _022F04E8 ; =0x00000112
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F01E4:
	sub r2, r1, #0x37
	cmp r0, r2
	bgt _022F0220
	bge _022F04C4
	sub r2, r1, #0x39
	cmp r0, r2
	bgt _022F0210
	sub r1, r1, #0x39
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F0210:
	sub r1, r1, #0x38
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F0220:
	sub r2, r1, #0x2c
	cmp r0, r2
	bgt _022F023C
	sub r1, r1, #0x2c
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F023C:
	sub r1, r1, #0x2b
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F024C:
	sub r2, r1, #0x14
	cmp r0, r2
	bgt _022F02BC
	bge _022F04CC
	sub r2, r1, #0x20
	cmp r0, r2
	bgt _022F0294
	bge _022F04C4
	sub r2, r1, #0x27
	cmp r0, r2
	bgt _022F0288
	sub r1, r1, #0x27
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F0288:
	cmp r0, #0x1d8
	beq _022F04CC
	b _022F04DC
_022F0294:
	sub r2, r1, #0x1f
	cmp r0, r2
	bgt _022F02B0
	sub r1, r1, #0x1f
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F02B0:
	cmp r0, #0x1e4
	beq _022F04C4
	b _022F04DC
_022F02BC:
	sub r2, r1, #0xb
	cmp r0, r2
	bgt _022F02F8
	bge _022F04C4
	sub r2, r1, #0xd
	cmp r0, r2
	bgt _022F02E8
	sub r1, r1, #0xd
	cmp r0, r1
	beq _022F04CC
	b _022F04DC
_022F02E8:
	sub r1, r1, #0xc
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F02F8:
	cmp r0, #0x1f4
	bgt _022F0308
	beq _022F04C4
	b _022F04DC
_022F0308:
	cmp r0, #0x1f8
	beq _022F04C4
	b _022F04DC
_022F0314:
	add r2, r1, #0x9b
	cmp r0, r2
	bgt _022F03FC
	bge _022F04D4
	add r2, r1, #0x10
	cmp r0, r2
	bgt _022F0398
	bge _022F04CC
	cmp r0, #0x204
	bgt _022F036C
	bge _022F04C4
	add r2, r1, #1
	cmp r0, r2
	bgt _022F035C
	add r1, r1, #1
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F035C:
	add r1, r1, #4
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F036C:
	add r2, r1, #0xb
	cmp r0, r2
	bgt _022F0388
	add r1, r1, #0xb
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F0388:
	add r1, r1, #0xf
	cmp r0, r1
	beq _022F04CC
	b _022F04DC
_022F0398:
	add r2, r1, #0x17
	cmp r0, r2
	bgt _022F03D0
	bge _022F04C4
	add r2, r1, #0x15
	cmp r0, r2
	bgt _022F03C4
	add r1, r1, #0x15
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F03C4:
	cmp r0, #0x214
	beq _022F04C4
	b _022F04DC
_022F03D0:
	add r2, r1, #0x37
	cmp r0, r2
	bgt _022F03EC
	add r1, r1, #0x37
	cmp r0, r1
	beq _022F04CC
	b _022F04DC
_022F03EC:
	add r1, r1, #0x38
	cmp r0, r1
	beq _022F04CC
	b _022F04DC
_022F03FC:
	ldr r2, _022F04EC ; =0x0000037F
	cmp r0, r2
	bgt _022F0464
	bge _022F04C4
	sub r1, r2, #0x82
	cmp r0, r1
	bgt _022F0440
	bge _022F04C4
	sub r1, r2, #0xa6
	cmp r0, r1
	bgt _022F0430
	beq _022F04C4
	b _022F04DC
_022F0430:
	sub r1, r2, #0xa5
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F0440:
	sub r1, r2, #0x81
	cmp r0, r1
	bgt _022F0454
	beq _022F04C4
	b _022F04DC
_022F0454:
	sub r1, r2, #0x61
	cmp r0, r1
	beq _022F04CC
	b _022F04DC
_022F0464:
	add r1, r2, #0x9f
	cmp r0, r1
	bgt _022F0498
	bge _022F04C4
	add r1, r2, #0x5a
	cmp r0, r1
	bgt _022F0488
	beq _022F04C4
	b _022F04DC
_022F0488:
	add r1, r2, #0x6a
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F0498:
	add r1, r2, #0xcb
	cmp r0, r1
	bgt _022F04B8
	bge _022F04C4
	add r1, r2, #0xab
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F04B8:
	add r1, r2, #0xcc
	cmp r0, r1
	bne _022F04DC
_022F04C4:
	mov r0, #0
	bx lr
_022F04CC:
	mov r0, #1
	bx lr
_022F04D4:
	mov r0, #0
	bx lr
_022F04DC:
	mov r0, #1
	bx lr
	.align 2, 0
_022F04E4: .word 0x000001FE
_022F04E8: .word 0x00000112
_022F04EC: .word 0x0000037F
	arm_func_end ov29_022EFBAC

	arm_func_start ov29_022F04F0
ov29_022F04F0: ; 0x022F04F0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	ldrsh r0, [r4, #4]
	bl ov29_022EFBAC
	cmp r0, #0
	movne r0, #1
	strneb r0, [r5, #0xb3]
	strneb r0, [r4, #0x171]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022F04F0

	arm_func_start ov29_022F0518
ov29_022F0518: ; 0x022F0518
	ldr r2, [r0, #0xb4]
	mov r1, #0
	ldr ip, _022F0530 ; =sub_0201D198
	add r0, r0, #0x2c
	strb r1, [r2, #0x171]
	bx ip
	.align 2, 0
_022F0530: .word sub_0201D198
	arm_func_end ov29_022F0518

	arm_func_start ov29_022F0534
ov29_022F0534: ; 0x022F0534
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _022F058C ; =0x02353538
	mov r7, r0
	mov r5, #0
_022F0544:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid__022F0590
	cmp r0, #0
	beq _022F057C
	cmp r7, #0
	mov r0, r6
	bne _022F0578
	bl ov29_022F0518
	b _022F057C
_022F0578:
	bl ov29_022F04F0
_022F057C:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022F0544
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F058C: .word 0x02353538
	arm_func_end ov29_022F0534

	arm_func_start EntityIsValid__022F0590
EntityIsValid__022F0590: ; 0x022F0590
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__022F0590

	arm_func_start ov29_022F05B4
ov29_022F05B4: ; 0x022F05B4
	stmdb sp!, {r4, lr}
	mov r4, r1
	cmp r2, #0
	bne _022F05D4
	bl ov29_022F0518
	mov r0, r4
	bl ov29_022F0518
	ldmia sp!, {r4, pc}
_022F05D4:
	bl ov29_022F04F0
	mov r0, r4
	bl ov29_022F04F0
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022F05B4

	arm_func_start ov29_022F05E4
ov29_022F05E4: ; 0x022F05E4
	stmdb sp!, {r3, lr}
	bl ov29_022F0AE0
	bl ov29_0234D668
	bl ov29_0234D838
	mov r0, #0x20
	mov r1, #0x62
	bl ov29_022EA370
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022F05E4

	arm_func_start ov29_022F0604
ov29_022F0604: ; 0x022F0604
	stmdb sp!, {r3, lr}
	mov r3, #0
	str r3, [sp]
	bl ov29_022F0984
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022F0604

	arm_func_start ov29_022F0618
ov29_022F0618: ; 0x022F0618
	stmdb sp!, {r3, lr}
	mov ip, #0
	str ip, [sp]
	bl ov29_022F0984
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022F0618

	arm_func_start ov29_022F062C
ov29_022F062C: ; 0x022F062C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, #1
	str r4, [sp]
	bl ov29_022F0984
	mov r4, r0
	bl ov29_022F0AE0
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov29_022F062C

	arm_func_start ov29_022F0654
ov29_022F0654: ; 0x022F0654
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	add r1, r1, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, r4
	and r1, r1, #0xff
	bl ov29_022FA360
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022F0654

	arm_func_start ov29_022F067C
ov29_022F067C: ; 0x022F067C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x24
	mov r7, r0
	mov r6, r2
	cmp r1, #0
	bne _022F06F4
	mov r5, #0
	ldr r8, _022F077C ; =0x02353538
	mov r4, r5
	add sb, sp, #0x10
_022F06A4:
	ldr r0, [r8]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb28]
	mov r0, sl
	bl EntityIsValid__022F0590
	cmp r0, #0
	strne sl, [sb, r5, lsl #2]
	add r4, r4, #1
	addne r5, r5, #1
	cmp r4, #4
	blt _022F06A4
	cmp r5, #4
	addlt r0, sp, #0x10
	movlt r1, #0
	strlt r1, [r0, r5, lsl #2]
	blt _022F0700
	moveq r0, #0
	streq r0, [sp, #0x20]
	b _022F0700
_022F06F4:
	mov r0, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
_022F0700:
	mov r2, #0
	mov r4, #1
	strb r4, [sp, #8]
	strh r2, [sp, #0xa]
	strh r6, [sp, #0xc]
	strb r4, [sp, #0xe]
	strb r2, [sp, #0xf]
	add r1, sp, #8
	add r3, sp, #0x10
	mov r0, r7
	stmia sp, {r2, r4}
	bl ov29_02322DDC
	mov r0, r4
	bl ov29_022E38E0
	mov r3, #0
	add r0, sp, #0x10
	add r2, sp, #8
	mov r1, r7
	str r3, [sp]
	bl ExecuteMoveEffect
	bl ov29_022E81F8
	mov r0, #0xa
	bl ov29_0234BA54
	mov r0, #0
	bl ov29_0234B1A4
	bl GetLeader
	mov r1, r4
	mov r2, r1
	bl ov29_022F98B4
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022F077C: .word 0x02353538
	arm_func_end ov29_022F067C

	arm_func_start ov29_022F0780
ov29_022F0780: ; 0x022F0780
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl ov29_0234D668
	bl ov29_0234B034
	mov r2, #0
	mov r1, r0
	mov ip, #1
	mov r0, r4
	mov r3, r2
	str ip, [sp]
	bl ov29_0234D690
	bl ov29_0234D650
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov29_022F0780

	arm_func_start ov29_022F07BC
ov29_022F07BC: ; 0x022F07BC
	stmdb sp!, {r3, lr}
	rsb r0, r0, #0
	bl AddMoneyCarried
	ldr r0, _022F07D4 ; =0x00001308
	bl sub_02017C80
	ldmia sp!, {r3, pc}
	.align 2, 0
_022F07D4: .word 0x00001308
	arm_func_end ov29_022F07BC

	arm_func_start ov29_022F07D8
ov29_022F07D8: ; 0x022F07D8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _022F0844 ; =0x02353538
	mov r4, r0
	mov r6, #0
_022F07E8:
	ldr r0, [r5]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid__022F0590
	cmp r0, #0
	beq _022F082C
	mov r0, r7
	bl ov29_022FBDF0
	cmp r0, #0
	beq _022F082C
	mov r0, r7
	mov r1, r4
	bl ov29_022FA360
	mov r0, r7
	bl UpdateAiTargetPos
_022F082C:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	cmp r6, #0x14
	blt _022F07E8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F0844: .word 0x02353538
	arm_func_end ov29_022F07D8

	arm_func_start ov29_022F0848
ov29_022F0848: ; 0x022F0848
	ldr ip, _022F0858 ; =ov29_022EA428
	mov r0, #0
	mov r1, r0
	bx ip
	.align 2, 0
_022F0858: .word ov29_022EA428
	arm_func_end ov29_022F0848

	arm_func_start ov29_022F085C
ov29_022F085C: ; 0x022F085C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r8, r1
	mov r1, #1
	mov r1, r1, lsl r8
	str r1, [sp, #4]
	mov r1, r1, lsl #8
	mov fp, r0
	mov r0, #0x100
	str r1, [sp]
	bl sub_02001AB0
	ldr r1, _022F0980 ; =0x02353538
	mov r0, #0x400
	ldr r2, [r1]
	mov r1, #0
	add r5, r2, #0x1e0
	bl MemAlloc
	mov r6, r0
	mov r4, #0
_022F08A8:
	add r3, r5, r4, lsl #2
	add r2, r6, r4, lsl #2
	mov r1, #4
_022F08B4:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _022F08B4
	add r4, r4, #1
	cmp r4, #0x100
	blt _022F08A8
	mov r4, #0
	b _022F0964
_022F08D8:
	mov r0, #0x25
	mov r7, r4, lsl #8
	bl AdvanceFrame
	ldr r0, [sp]
	mov sl, #0
	sub sb, r0, r4, lsl #8
_022F08F0:
	add r1, r6, sl, lsl #2
	ldrb r0, [r6, sl, lsl #2]
	ldrb r3, [r1, #1]
	ldrb r2, [r1, #2]
	mul r0, sb, r0
	add r1, fp, sl, lsl #2
	mul ip, sb, r3
	mul r2, sb, r2
	ldrb lr, [r1, #1]
	ldrb r3, [r1, #2]
	ldrb r1, [fp, sl, lsl #2]
	mla ip, r7, lr, ip
	mla r2, r7, r3, r2
	mla r0, r7, r1, r0
	mov r0, r0, asr #8
	mov r0, r0, asr r8
	mov r3, ip, asr #8
	mov r1, r2, asr #8
	mov r3, r3, asr r8
	strb r0, [r5, sl, lsl #2]
	add r2, r5, sl, lsl #2
	add sl, sl, #1
	strb r3, [r2, #1]
	mov r0, r1, asr r8
	strb r0, [r2, #2]
	cmp sl, #0x100
	blt _022F08F0
	bl ov29_022DE608
	add r4, r4, #1
_022F0964:
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _022F08D8
	mov r0, r6
	bl MemFree
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F0980: .word 0x02353538
	arm_func_end ov29_022F085C

	arm_func_start ov29_022F0984
ov29_022F0984: ; 0x022F0984
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r1
	ldr r4, [r6, #0xb4]
	mov r7, r0
	ldrsh r1, [r4, #2]
	add r0, sp, #0xc
	mov r5, r3
	bl ov29_0234BAC0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _022F09E0
	mov r0, r6
	bl ov29_022F9C4C
	cmp r0, #0
	bne _022F09E0
	mov r1, r6
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldrsh r0, [r4, #0xc]
	bl ov29_0234B118
	b _022F09F4
_022F09E0:
	ldrsh r1, [r4, #2]
	mov r0, #1
	bl ov29_0234B0CC
	ldrsh r0, [r4, #2]
	bl ov29_0234B104
_022F09F4:
	cmp r5, #0
	beq _022F0A6C
	mov r1, #1
	add r0, sp, #4
	mov r2, r5
	mov r3, r1
	str r1, [sp]
	bl ov29_0234D860
	ldrb r0, [sp, #0x30]
	cmp r0, #0
	beq _022F0A28
	ldr r0, _022F0AA0 ; =ov29_022F0AA4
	bl ov29_0234D878
_022F0A28:
	add r0, sp, #0xc
	bl ov29_0234D65C
	bl ov29_0234B034
	mov r1, r0
	mov ip, #0
	add r2, sp, #4
	mov r0, r7
	mov r3, #1
	str ip, [sp]
	bl ov29_0234D690
	bl ov29_0234D650
	bl ov29_0234D88C
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	b _022F0A98
_022F0A6C:
	add r0, sp, #0xc
	bl ov29_0234D65C
	bl ov29_0234B034
	mov r1, r0
	mov r3, #1
	mov r0, r7
	mov r2, #0
	str r3, [sp]
	bl ov29_0234D690
	bl ov29_0234D650
	mov r0, #1
_022F0A98:
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_022F0AA0: .word ov29_022F0AA4
	arm_func_end ov29_022F0984

	arm_func_start ov29_022F0AA4
ov29_022F0AA4: ; 0x022F0AA4
	stmdb sp!, {r3, lr}
	ldr r1, _022F0AD4 ; =0x023535A4
	mvn r0, #1
	ldrsb r1, [r1]
	cmp r1, r0
	ldmneia sp!, {r3, pc}
	ldr r0, _022F0AD8 ; =0x023526A8
	ldr r1, _022F0ADC ; =ov29_022F0B10
	bl sub_0202F8C4
	ldr r1, _022F0AD4 ; =0x023535A4
	strb r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_022F0AD4: .word 0x023535A4
_022F0AD8: .word 0x023526A8
_022F0ADC: .word ov29_022F0B10
	arm_func_end ov29_022F0AA4

	arm_func_start ov29_022F0AE0
ov29_022F0AE0: ; 0x022F0AE0
	stmdb sp!, {r3, lr}
	ldr r0, _022F0B0C ; =0x023535A4
	mvn r1, #1
	ldrsb r0, [r0]
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl sub_0202F8FC
	ldr r0, _022F0B0C ; =0x023535A4
	mvn r1, #1
	strb r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_022F0B0C: .word 0x023535A4
	arm_func_end ov29_022F0AE0

	arm_func_start ov29_022F0B10
ov29_022F0B10: ; 0x022F0B10
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xd4
	mov r4, r0
	bl sub_02027B1C
	add r0, sp, #4
	bl InitPreprocessorArgs
	bl GetGold
	str r0, [sp, #0x28]
	add r1, sp, #4
	str r1, [sp]
	ldr r2, _022F0B84 ; =0x023526B8
	add r0, sp, #0x54
	mov r1, #0x80
	mov r3, #0x400
	bl PreprocessString
	mov r1, #4
	ldr r3, _022F0B88 ; =0x00000225
	mov r0, r4
	mov r2, r1
	bl sub_02026268
	mov r0, r4
	mov r1, #0xa
	mov r2, #0x14
	add r3, sp, #0x54
	bl sub_02026214
	mov r0, r4
	bl sub_02027AF0
	add sp, sp, #0xd4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_022F0B84: .word 0x023526B8
_022F0B88: .word 0x00000225
	arm_func_end ov29_022F0B10

	arm_func_start ov29_022F0B8C
ov29_022F0B8C: ; 0x022F0B8C
	stmdb sp!, {r3, lr}
	bl ov29_022E9618
	add r0, r0, #0x4a
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022F0B8C

	arm_func_start ov29_022F0B9C
ov29_022F0B9C: ; 0x022F0B9C
	stmdb sp!, {r3, lr}
	bl ov29_022E9618
	ldrh r0, [r0, #0x4a]
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022F0B9C

	arm_func_start ov29_022F0BAC
ov29_022F0BAC: ; 0x022F0BAC
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r3, r0
	mov r6, r1
	add r0, sp, #0
	add r1, r3, #0x2c
	mov r2, #3
	ldrsh r4, [r3, #0x48]
	ldrsh r5, [r3, #0x4a]
	bl sub_0201CF90
	ldrsh r0, [sp]
	add r0, r4, r0
	sub r0, r0, #0xc
	str r0, [r6, #8]
	ldrsh r0, [sp, #2]
	add r0, r5, r0
	sub r0, r0, #0xc
	str r0, [r6]
	ldrsh r0, [sp]
	add r0, r4, r0
	add r0, r0, #0xc
	str r0, [r6, #0xc]
	ldrsh r0, [sp, #2]
	add r0, r5, r0
	add r0, r0, #0xc
	str r0, [r6, #4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov29_022F0BAC

	arm_func_start ov29_022F0C1C
ov29_022F0C1C: ; 0x022F0C1C
	stmdb sp!, {r3, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0xb4]
	mov r2, #0
	bl ov29_022F3B98
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022F0C1C

	arm_func_start ov29_022F0C3C
ov29_022F0C3C: ; 0x022F0C3C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	movs r4, r0
	moveq r0, #0
	beq _022F0C90
	cmp r1, #0
	beq _022F0C74
	add r3, sp, #0
	mov r2, #4
_022F0C60:
	ldrh r0, [r1], #2
	subs r2, r2, #1
	strh r0, [r3], #2
	bne _022F0C60
	b _022F0C80
_022F0C74:
	add r0, sp, #0
	mov r1, #0x160
	bl InitMove
_022F0C80:
	ldr r1, [r4, #0xb4]
	add r2, sp, #0
	mov r0, r4
	bl ov29_022F3B98
_022F0C90:
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022F0C3C

	arm_func_start ov29_022F0C98
ov29_022F0C98: ; 0x022F0C98
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl sub_0204AEA0
	mov r7, r0
	mov r0, #4
	mov r1, #0x2f
	mov r8, #0
	bl ov29_022EA370
	mov r0, r8
	mov r1, r0
	bl ov29_022E0DD8
	mov r0, #2
	mov r1, r8
	bl ov29_022E0DD8
	mov r0, #3
	mov r1, r8
	bl ov29_022E0DD8
	mov r0, #4
	mov r1, r8
	bl ov29_022E0DD8
	ldr r1, _022F0EC8 ; =0x02353538
	ldr r2, _022F0ECC ; =0x0237CFBB
	ldr r1, [r1]
	mov r0, #1
	strb r0, [r2]
	add r1, r1, #0x1a000
	strb r0, [r1, #0x249]
	bl ov29_0234B1A4
	mov r0, #1
	bl ov29_02338F58
	cmp sl, #0
	bne _022F0D24
	bl sub_0204AEC0
	cmp r0, #0
	bne _022F0D44
_022F0D24:
	mov r0, #0
	mov r1, r0
	bl ov29_02339D7C
	cmp sl, #0
	beq _022F0D44
	mov r0, #0xc
	mov r1, #0
	bl ov29_022EA428
_022F0D44:
	bl ov29_023391C0
	mov sb, r0
	mov r0, #0
	mov r1, r0
	bl ov29_02339190
	bl ov29_02339CE8
	mov r0, #4
	mov r1, #0x2f
	bl ov29_022EA370
	ldr r4, _022F0ED0 ; =0x0237C6A4
	ldr r5, _022F0ECC ; =0x0237CFBB
	ldr r6, _022F0ED4 ; =0x0237C694
	mov fp, #0x2f
_022F0D78:
	mov r0, fp
	bl AdvanceFrame
	ldrh r3, [r6, #2]
	tst r3, #6
	beq _022F0D98
	ldr r0, _022F0ED8 ; =0x00003F03
	bl sub_02017C80
	b _022F0E30
_022F0D98:
	ldrb r0, [r5]
	cmp r0, #0
	bne _022F0DDC
	ldrh r2, [r4]
	mov r1, #0
	tst r2, #0x40
	beq _022F0DBC
	tst r2, #2
	movne r1, #1
_022F0DBC:
	cmp r1, #0
	movne r8, #1
	cmp r8, #0
	beq _022F0DE0
	tst r2, #4
	beq _022F0DE0
	bl ov29_022E0C4C
	b _022F0E30
_022F0DDC:
	mov r8, #0
_022F0DE0:
	tst r3, #1
	bne _022F0E18
	tst r3, #0x400
	bne _022F0E18
	cmp r0, #0
	beq _022F0D78
	ldrh r1, [r4]
	mov r2, #0
	tst r1, #0x40
	beq _022F0E10
	tst r1, #2
	movne r2, #1
_022F0E10:
	cmp r2, #0
	beq _022F0D78
_022F0E18:
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	strb r0, [r5]
	bl ov29_02339CE8
	b _022F0D78
_022F0E30:
	cmp sl, #0
	bne _022F0E44
	bl sub_0204AEC0
	cmp r0, #0
	bne _022F0E64
_022F0E44:
	mov r0, #0
	mov r1, r0
	bl ov29_0233A0E8
	cmp sl, #0
	beq _022F0E64
	mov r0, #0xb
	mov r1, #0
	bl ov29_022EA428
_022F0E64:
	mov r0, sb
	mov r1, #0
	bl ov29_02339190
	mov r0, #0
	bl ov29_02338F58
	ldr r1, _022F0EC8 ; =0x02353538
	mov r0, r7
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, #0x1a000
	strb r2, [r1, #0x249]
	bl sub_0204AEB0
	ldr r0, _022F0ECC ; =0x0237CFBB
	mov r1, #1
	strb r1, [r0]
	bl ov29_02339CE8
	mov r0, #0
	bl ov29_022E0DF0
	mov r0, #0x2f
	bl AdvanceFrame
	mov r0, #0x2f
	bl AdvanceFrame
	bl sub_02006B70
	bl ov29_022E0B44
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F0EC8: .word 0x02353538
_022F0ECC: .word 0x0237CFBB
_022F0ED0: .word 0x0237C6A4
_022F0ED4: .word 0x0237C694
_022F0ED8: .word 0x00003F03
	arm_func_end ov29_022F0C98

	arm_func_start ov29_022F0EDC
ov29_022F0EDC: ; 0x022F0EDC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xdc
	ldr r1, _022F1DDC ; =0x02353538
	add r0, sp, #0xb6
	ldr r2, [r1]
	mov r1, #5
	add r2, r2, #0x21c
	add r5, r2, #0x1a000
	mov r2, #3
	str r2, [sp, #0x68]
	mov r2, #0
	str r2, [sp, #0x64]
	bl MemZero
	ldr r0, _022F1DDC ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strh r1, [r0, #0x1c]
	bl GetLeader
	mov r1, #1
	mov r2, r1
	bl ov29_022F98B4
	bl GetLeader
	bl ov29_022FB538
	bl GetLeader
	bl ov29_022FF3F4
	cmp r0, #0
	beq _022F0F58
	mov r0, #0x3c
	mov r1, #0x10
	bl ov29_022EA370
	b _022F2B34
_022F0F58:
	ldr r0, _022F1DDC ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x78e]
	bl ov29_02339CD4
	ldr r0, _022F1DDC ; =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _022F1000
	mov r0, #0
	strb r0, [r1, #5]
	bl IsGoldenChamber
	cmp r0, #0
	beq _022F0FAC
	bl ov29_0234A980
	ldr r0, _022F1DDC ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _022F2B34
_022F0FAC:
	bl GetLeader
	mov r1, #1
	bl ShouldMonsterRunAwayVariation
	cmp r0, #0
	bne _022F1000
	mov r0, #0xa
	bl ov29_0234BA54
	mov r0, #1
	bl ov29_022EB398
	bl ov29_022F2FE4
	mov r0, #0
	bl ov29_0233A248
	bl GetLeader
	mov r1, #0
	bl ov29_0234E8F8
	bl ov29_022E0B44
	bl sub_02006B70
	bl ov29_022E9618
	ldrh r0, [r0, #0x4a]
	cmp r0, #0
	bne _022F2B34
_022F1000:
	mov r0, #1
	mov r1, r0
	mov r2, r0
	bl ov29_022FA2F0
	ldr r1, _022F1DE0 ; =0x0235171C
	ldrsh r0, [r1, #0x12]
	str r0, [sp, #8]
	ldrsh r0, [r1, #0x10]
	str r0, [sp, #4]
_022F1024:
	bl GetLeader
	ldr r1, _022F1DDC ; =0x02353538
	mov r6, r0
	ldr r0, [r1]
	ldr sb, [r6, #0xb4]
	ldrb r0, [r0, #0x78b]
	cmp r0, #0
	beq _022F1064
	bl ov29_022F308C
	cmp r0, #0
	movne r0, #2
	strneh r0, [sb, #0x4a]
	movne r0, #0
	strneb r0, [sb, #0x4e]
	bne _022F2B34
	bl ov29_022F2FE4
_022F1064:
	ldr r1, _022F1DE4 ; =0x0237C9A4
	mov r2, #0
	strb r2, [r1, #2]
	ldr r0, _022F1DDC ; =0x02353538
	strb r2, [r1, #1]
	ldr r0, [r0]
	ldr r0, [r0, #0x614]
	cmp r0, #0
	strltb r2, [sp, #0xb6]
	strltb r2, [sp, #0xb7]
	strltb r2, [sp, #0xb8]
	strltb r2, [sp, #0xba]
	blt _022F10AC
	mov r0, #1
	strb r0, [sp, #0xb6]
	strb r2, [sp, #0xb7]
	strb r2, [sp, #0xb8]
	strb r2, [sp, #0xba]
_022F10AC:
	mov r0, #0
	str r0, [sp, #0x6c]
	bl ov29_022EB3C8
	ldr r0, _022F1DE4 ; =0x0237C9A4
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #3]
	sub r0, sp, #4
	str r0, [sp, #0x70]
	ldr r0, _022F1DE8 ; =0x00000BA3
	mvn r4, #0
	sub r0, r0, #1
	str r0, [sp, #0x88]
	ldr r0, _022F1DE8 ; =0x00000BA3
	sub r0, r0, #2
	str r0, [sp, #0x84]
	ldr r0, _022F1DE8 ; =0x00000BA3
	sub r0, r0, #5
	str r0, [sp, #0x80]
	ldr r0, _022F1DE8 ; =0x00000BA3
	sub r0, r0, #4
	str r0, [sp, #0x7c]
	add r0, sb, #0x100
	str r0, [sp, #0x8c]
_022F110C:
	mov r7, #0
	mov r0, r7
	str r0, [sp, #0x4c]
	str r0, [sp, #0x48]
	str r0, [sp, #0x2c]
	ldrb r0, [sp, #0xb6]
	cmp r0, #0
	bne _022F2970
	ldr r0, _022F1DE4 ; =0x0237C9A4
	ldrsh r0, [r0, #4]
	add r1, r0, #1
	ldr r0, _022F1DE4 ; =0x0237C9A4
	strh r1, [r0, #4]
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	movne r0, r7
	strne r0, [sp, #0x6c]
	ldreq r0, [sp, #0x6c]
	addeq r0, r0, #1
	streq r0, [sp, #0x6c]
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _022F117C
	subs r0, r0, #1
	str r0, [sp, #0x68]
	bne _022F117C
	mov r0, #0
	bl ov29_023055B0
_022F117C:
	mov r0, r6
	bl ov29_022F2B74
	ldr r0, _022F1DEC ; =0x0237C6A4
	mov r8, #0
	ldrh r1, [r0]
	tst r1, #0x40
	movne r0, #1
	moveq r0, #0
	and sl, r0, #0xff
	tst r1, #0x10
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	str r0, [sp, #0x58]
	tst r1, #0x20
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	tst r1, #0x200
	str r0, [sp, #0x54]
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	str r0, [sp, #0x50]
	mov r0, r8
	str r0, [sp, #0x5c]
	bl ov29_022E0C3C
	cmp r0, #0
	beq _022F1208
	cmp sl, #0
	bne _022F1200
	mov r0, r8
	bl ov29_022E0C2C
_022F1200:
	mov sl, #0
	b _022F1228
_022F1208:
	mov r0, r8
	bl ov29_022E0C2C
	ldr r0, _022F1DEC ; =0x0237C6A4
	ldrh r0, [r0]
	tst r0, #0x100
	movne r0, #1
	moveq r0, r8
	and sl, r0, #0xff
_022F1228:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _022F1268
	mov r0, r6
	add r1, sp, #0xae
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	ldrsh r1, [r6, #4]
	ldrsh r0, [sp, #0xae]
	cmp r1, r0
	ldreqsh r1, [r6, #6]
	ldreqsh r0, [sp, #0xb0]
	cmpeq r1, r0
	moveq r0, #0
	streq r0, [sp, #0x50]
_022F1268:
	ldr r0, _022F1DEC ; =0x0237C6A4
	mov r1, #0
	ldrh r0, [r0]
	tst r0, #0x80
	beq _022F1284
	tst r0, #0x1000
	movne r1, #1
_022F1284:
	cmp r1, #0
	beq _022F12E0
	mov r0, r6
	add r1, sp, #0xae
	mov r2, #0x66
	mov r3, #0
	bl ov29_022F3EA0
	mov r0, r6
	add r1, sp, #0xaa
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	ldrsh r2, [r6, #4]
	ldrsh r0, [sp, #0xae]
	cmp r2, r0
	ldreqsh r1, [r6, #6]
	ldreqsh r0, [sp, #0xb0]
	cmpeq r1, r0
	ldreqsh r0, [sp, #0xaa]
	cmpeq r2, r0
	ldreqsh r0, [sp, #0xac]
	cmpeq r1, r0
	moveq r8, #1
_022F12E0:
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _022F1344
	mov r0, r6
	add r1, sp, #0xae
	mov r2, #0x66
	mov r3, #0
	bl ov29_022F3EA0
	mov r0, r6
	add r1, sp, #0xaa
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	ldrsh r2, [r6, #4]
	ldrsh r0, [sp, #0xae]
	cmp r2, r0
	ldreqsh r1, [r6, #6]
	ldreqsh r0, [sp, #0xb0]
	cmpeq r1, r0
	ldreqsh r0, [sp, #0xaa]
	cmpeq r2, r0
	ldreqsh r0, [sp, #0xac]
	cmpeq r1, r0
	moveq r0, #1
	streq r0, [sp, #0x5c]
_022F1344:
	cmp r8, #0
	bne _022F1364
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0]
	tst r0, #1
	beq _022F13B0
	tst r0, #2
	beq _022F13B0
_022F1364:
	ldr r0, [sp, #0x8c]
	ldrh r1, [r0, #0x46]
	ldr r0, [sp, #0x70]
	strh r1, [r0]
	ldr r0, [sp, #0x8c]
	ldrh r1, [r0, #0x48]
	ldr r0, [sp, #0x70]
	strh r1, [r0, #2]
	ldr r0, [r0]
	bl CeilFixedPoint
	cmp r0, #0
	beq _022F13B0
	mov r0, #1
	bl ov29_022EB3C8
	ldr r0, _022F1DDC ; =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x78e]
	b _022F2970
_022F13B0:
	mov r0, #0
	strh r4, [sp, #0xb2]
	strh r4, [sp, #0xb4]
	str r0, [sp, #0x34]
	str r0, [sp, #0x30]
	str r0, [sp, #0x38]
	mov fp, r0
	mov r8, r0
	str r0, [sp, #0x60]
	ldr r0, _022F1DE4 ; =0x0237C9A4
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _022F1440
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _022F1408
	mov r8, #1
	bl GetEquippedThrowableItem
	cmp r0, #0
	movge r0, r8
	strge r0, [sp, #0x60]
	b _022F1440
_022F1408:
	ldr r0, _022F1DEC ; =0x0237C6A4
	mov r1, r8
	ldrh r0, [r0]
	tst r0, #0x80
	beq _022F1424
	tst r0, #2
	movne r1, #1
_022F1424:
	cmp r1, #0
	movne r8, #2
	bne _022F1440
	cmp sl, #0
	ldreq r0, [sp, #0x50]
	cmpeq r0, #0
	movne r8, #3
_022F1440:
	cmp r8, #0
	beq _022F16F4
	cmp r8, #1
	mov r0, r6
	add r1, sp, #0xa6
	mov r3, #0
	bne _022F1468
	mov r2, #0x65
	bl ov29_022F3EA0
	b _022F1470
_022F1468:
	mov r2, #0x64
	bl ov29_022F3EA0
_022F1470:
	mov r7, r0
	cmp r7, #0
	blt _022F16F4
	ldrsh r1, [r6, #4]
	ldrsh r0, [sp, #0xa6]
	cmp r1, r0
	ldreqsh r1, [r6, #6]
	ldreqsh r0, [sp, #0xa8]
	cmpeq r1, r0
	beq _022F16F4
	mov r0, r6
	add r1, sp, #0xa6
	bl ov29_022F426C
	cmp r0, #0
	bne _022F16F4
	ldrh r0, [sp, #0xa8]
	ldrh r1, [sp, #0xa6]
	mov r3, #0
	strh r0, [sp, #0x94]
	strh r0, [sp, #0xa4]
	add r0, r7, #4
	strh r1, [sp, #0xa2]
	strh r1, [sp, #0x92]
	mov r0, r0, lsl #0x1d
	ldr r1, _022F1DE0 ; =0x0235171C
	mov ip, r0, lsr #0x1b
	ldrsh r1, [r1, ip]
	ldrsh r2, [sp, #0xa2]
	ldr ip, _022F1DE0 ; =0x0235171C
	add r0, ip, r0, lsr #27
	add r1, r2, r1
	strh r1, [sp, #0xa2]
	ldrsh r0, [r0, #2]
	ldrsh ip, [sp, #0xa4]
	ldrsh r2, [r6, #4]
	ldrsh r1, [sp, #0xa2]
	add r0, ip, r0
	strh r0, [sp, #0xa4]
	cmp r2, r1
	ldreqsh r1, [r6, #6]
	ldreqsh r0, [sp, #0xa4]
	cmpeq r1, r0
	ldrh r1, [sp, #0x92]
	ldrh r0, [sp, #0x94]
	moveq r3, #1
	cmp r8, #2
	strh r1, [sp, #0xb2]
	strh r0, [sp, #0xb4]
	beq _022F1548
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _022F15C0
	cmp r3, #0
	bne _022F15C0
_022F1548:
	add r0, sp, #0xa6
	bl ov29_02337B68
	cmp r0, #0
	beq _022F16F4
	ldr r1, [sp, #0x60]
	ldr r0, [r0, #0xb4]
	cmp r1, #1
	bne _022F1584
	bl ov29_022F2B3C
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x38]
	moveq r0, #0
	streq r0, [sp, #0x38]
	b _022F16F4
_022F1584:
	cmp r1, #2
	bne _022F15A8
	bl ov29_022F2B3C
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x38]
	moveq r0, #0
	streq r0, [sp, #0x38]
	b _022F16F4
_022F15A8:
	cmp r8, #2
	moveq r0, #0
	streq r0, [sp, #0x30]
	moveq fp, #1
	streq r0, [sp, #0x34]
	b _022F16F4
_022F15C0:
	ldrsh r1, [r6, #4]
	ldrsh r0, [sp, #0xa2]
	cmp r1, r0
	ldreqsh r1, [r6, #6]
	ldreqsh r0, [sp, #0xa4]
	cmpeq r1, r0
	bne _022F16F4
	add r0, sp, #0xa6
	bl ov29_02337B68
	str r0, [sp, #0x74]
	cmp r0, #0
	beq _022F16A4
	cmp r8, #1
	ldr r0, [r0, #0xb4]
	bne _022F166C
	mov r1, #0
	str r1, [sp, #0x30]
	mov fp, r1
	bl ov29_022F2B3C
	cmp r0, #0
	beq _022F163C
	ldr r0, [sp, #0x60]
	cmp r0, #1
	mov r0, #1
	streq r0, [sp, #0x38]
	strne r0, [sp, #0x30]
	movne r0, fp
	strne r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x34]
	b _022F1698
_022F163C:
	mov r1, fp
	str r1, [sp, #0x38]
	ldr r0, [sp, #0x74]
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	mov r0, #1
	strne r0, [sp, #0x30]
	movne r0, fp
	strne r0, [sp, #0x34]
	streq r0, [sp, #0x34]
	b _022F1698
_022F166C:
	cmp r8, #3
	bne _022F1698
	bl ov29_022F2B3C
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x30]
	moveq r0, #0
	mov fp, #0
	streq r0, [sp, #0x30]
	mov r0, fp
	str r0, [sp, #0x34]
_022F1698:
	and r0, r7, #7
	strb r0, [sb, #0x4c]
	b _022F16F4
_022F16A4:
	ldrsh r1, [r6, #4]
	ldr r0, [sp, #4]
	ldrsh r2, [r6, #6]
	add r0, r1, r0
	ldr r1, [sp, #8]
	add r1, r2, r1
	bl GetTile
	ldrh r0, [r0]
	tst r0, #0x2000
	beq _022F16F4
	mov r0, #4
	strb r0, [sb, #0x4c]
	mov r0, #1
	str r0, [sp, #0x4c]
	mov r0, r6
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r6
	mov r2, #4
	bl ov29_023049A8
_022F16F4:
	bl sub_0204AF10
	cmp r0, #0
	moveq r1, #0
	beq _022F17E0
	ldr r0, _022F1DE4 ; =0x0237C9A4
	ldrb r0, [r0, #2]
	cmp r0, #0
	movne r1, #0
	bne _022F17E0
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0]
	and r0, r0, #0xf0
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	cmpeq r0, #0
	moveq r1, #0
	beq _022F17E0
	cmp r0, #0x50
	moveq r1, #3
	streq r1, [sp, #0x20]
	cmp r0, #0x60
	moveq r1, #5
	streq r1, [sp, #0x20]
	cmp r0, #0x90
	moveq r1, #1
	streq r1, [sp, #0x20]
	cmp r0, #0xa0
	moveq r1, #7
	streq r1, [sp, #0x20]
	cmp r0, #0x40
	moveq r1, #4
	streq r1, [sp, #0x20]
	cmp r0, #0x80
	moveq r1, #0
	streq r1, [sp, #0x20]
	cmp r0, #0x10
	moveq r1, #2
	streq r1, [sp, #0x20]
	cmp r0, #0x20
	moveq r0, #6
	streq r0, [sp, #0x20]
	ldr r0, _022F1DE4 ; =0x0237C9A4
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _022F17B8
	ldr r0, [sp, #0x20]
	tst r0, #1
	moveq r1, #0
	beq _022F17E0
_022F17B8:
	ldr r0, [sp, #0x20]
	ldrb r8, [sb, #0x4c]
	and r1, r0, #7
	mov r0, r6
	strb r1, [sb, #0x4c]
	bl ov29_022F87C0
	cmp r0, #0
	moveq r1, #0
	streqb r8, [sb, #0x4c]
	movne r1, #1
_022F17E0:
	ldr r0, _022F1DE4 ; =0x0237C9A4
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _022F1884
	cmp r1, #0
	beq _022F1884
	ldr r0, [sp, #0x64]
	cmp r0, #0
	bne _022F18B4
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0]
	tst r0, #2
	beq _022F1868
	mov r0, r6
	bl ov29_022F87C0
	cmp r0, #0
	beq _022F1838
	mov r0, r6
	mov r1, sb
	bl ov29_022F37D0
	cmp r0, #0
	beq _022F1844
_022F1838:
	mov r0, #0
	str r0, [sp, #0x48]
	b _022F18B4
_022F1844:
	mov r0, #1
	str r0, [sp, #0x48]
	ldr r0, _022F1DDC ; =0x02353538
	ldr r1, [r0]
	mov r0, #1
	str r0, [sp, #0x2c]
	mov r0, #0
	strb r0, [r1, #0x78c]
	b _022F18B4
_022F1868:
	mov r0, #1
	str r0, [sp, #0x48]
	ldr r0, _022F1DDC ; =0x02353538
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1, #0x78c]
	b _022F18B4
_022F1884:
	cmp r0, #0
	bne _022F18A0
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x48]
	bne _022F18B4
_022F18A0:
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0, #2]
	tst r0, #1
	movne r0, #1
	strne r0, [sp, #0x48]
_022F18B4:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #0x64]
	cmpeq fp, #0
	ldreq r0, [sp, #0x38]
	cmpeq r0, #0
	beq _022F19DC
	ldrsh r0, [sp, #0xb2]
	ldrsh r1, [sp, #0xb4]
	bl GetTileSafe
	str r0, [sp, #0x78]
	mov r0, #7
	bl sub_02017CCC
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _022F198C
	ldrsh r1, [sp, #0xb2]
	ldrsh r0, [r6, #4]
	sub r0, r1, r0
	bl Abs
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	ldrsh r1, [sp, #0xb4]
	ldrsh r0, [r6, #6]
	sub r0, r1, r0
	bl Abs
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	ldr r0, [sp, #0x78]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _022F19DC
	ldr r0, [sp, #0x60]
	cmp r0, #2
	bne _022F1968
	add r0, r6, #4
	add r1, sp, #0xb2
	bl GetDirectionTowardsPosition
	strb r0, [sb, #0x4c]
	ldrsh r0, [sp, #0xb2]
	strh r0, [sb, #0x5a]
	ldrsh r0, [sp, #0xb4]
	strh r0, [sb, #0x5c]
	b _022F19DC
_022F1968:
	cmp r8, #0
	cmpne r1, #0
	cmpne r8, r1
	bne _022F19DC
	add r0, r6, #4
	add r1, sp, #0xb2
	bl GetDirectionTowardsPosition
	strb r0, [sb, #0x4c]
	b _022F19DC
_022F198C:
	ldrsh r1, [sp, #0xb2]
	ldrsh r0, [r6, #4]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	bgt _022F19DC
	ldrsh r1, [sp, #0xb4]
	ldrsh r0, [r6, #6]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	bgt _022F19DC
	ldr r0, [sp, #0x78]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _022F19DC
	add r0, r6, #4
	add r1, sp, #0xb2
	bl GetDirectionTowardsPosition
	strb r0, [sb, #0x4c]
_022F19DC:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	ldreq r0, [sp, #0x34]
	cmpeq r0, #0
	ldreq r0, [sp, #0x30]
	cmpeq r0, #0
	cmpeq fp, #0
	beq _022F1CC0
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _022F1A64
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0]
	tst r0, #2
	beq _022F1A64
	ldr r0, [sp, #0x8c]
	ldrh r1, [r0, #0x46]
	ldr r0, [sp, #0x70]
	strh r1, [r0]
	ldr r0, [sp, #0x8c]
	ldrh r1, [r0, #0x48]
	ldr r0, [sp, #0x70]
	strh r1, [r0, #2]
	ldr r0, [r0]
	bl CeilFixedPoint
	cmp r0, #0
	beq _022F1CE0
	mov r0, #1
	bl ov29_022EB3C8
	ldr r0, _022F1DDC ; =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x78e]
	b _022F2970
_022F1A64:
	mov r0, r6
	mov r1, #1
	bl ShouldMonsterRunAwayVariation
	cmp r0, #0
	beq _022F1AA0
	ldr r1, _022F1DF4 ; =0x00000B9A
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	bl ov29_022EB3C8
	ldr r0, _022F1DDC ; =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x78e]
	b _022F2970
_022F1AA0:
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0]
	tst r0, #0x200
	cmpeq fp, #0
	beq _022F1C48
	mov r4, #0
	mov r1, r4
	mov r2, #1
	b _022F1AF4
_022F1AC4:
	add r0, sb, r4, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	beq _022F1AF0
	add r0, sb, r4, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #8
	bne _022F1AFC
_022F1AF0:
	add r4, r4, #1
_022F1AF4:
	cmp r4, #4
	blt _022F1AC4
_022F1AFC:
	cmp r4, #4
	bne _022F1B20
	ldr r1, _022F1DF8 ; =0x00000B9B
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	cmp fp, #0
	beq _022F2970
	bl sub_02006B70
	b _022F2970
_022F1B20:
	mov r3, #0
	mov r1, r3
	mov r2, #1
	b _022F1B5C
_022F1B30:
	add r0, sb, r3, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	addne r0, sb, r3, lsl #3
	ldrneb r0, [r0, #0x12a]
	cmpne r0, #0
	bne _022F1B64
	add r3, r3, #1
_022F1B5C:
	cmp r3, #4
	blt _022F1B30
_022F1B64:
	cmp r3, #4
	bne _022F1B9C
	bl sub_0204AF20
	cmp r0, #0
	beq _022F1B8C
	mov r0, r6
	mov r1, #0
	bl ov29_022F0C3C
	cmp r0, #0
	beq _022F2970
_022F1B8C:
	add r0, sb, #0x4a
	mov r1, #0x17
	bl SetMonsterActionFields
	b _022F2970
_022F1B9C:
	mov r7, r4
	mov r1, #0
	b _022F1BD8
_022F1BA8:
	cmp r7, r4
	beq _022F1BC0
	add r0, sb, r7, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #2
	beq _022F1BE0
_022F1BC0:
	add r0, sb, r7, lsl #3
	ldrb r0, [r0, #0x12a]
	cmp r0, #0
	movne r1, #1
	bne _022F1BE0
	add r7, r7, #1
_022F1BD8:
	cmp r7, #4
	blt _022F1BA8
_022F1BE0:
	cmp r1, #0
	bne _022F1C04
	ldr r1, _022F1DFC ; =0x00000B9C
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	cmp fp, #0
	beq _022F2970
	bl sub_02006B70
	b _022F2970
_022F1C04:
	bl sub_0204AF20
	cmp r0, #0
	beq _022F1C28
	add r1, sb, #0x124
	mov r0, r6
	add r1, r1, r7, lsl #3
	bl ov29_022F0C3C
	cmp r0, #0
	beq _022F2970
_022F1C28:
	mov r0, r6
	bl ov29_022E2A38
	mov r2, r4, lsl #0x10
	mov r1, r0
	add r0, sb, #0x4a
	mov r2, r2, asr #0x10
	bl ov29_022EBC98
	b _022F2970
_022F1C48:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _022F1C74
	mov r0, r6
	mov r1, sb
	bl ov29_022F37D0
	cmp r0, #0
	beq _022F1CE0
	mov r0, #1
	str r0, [sp, #0x64]
	b _022F2970
_022F1C74:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _022F1C9C
	mov r0, r6
	mov r1, sb
	bl ov29_022F37D0
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x64]
	bne _022F2970
_022F1C9C:
	mov r0, r6
	mov r1, sb
	bl ov29_022F3AFC
	cmp r0, #0
	bne _022F2970
	add r0, sb, #0x4a
	mov r1, #0x32
	bl SetMonsterActionFields
	b _022F2970
_022F1CC0:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _022F1CE0
	mov r0, r6
	mov r1, sb
	bl ov29_022F3AFC
	cmp r0, #0
	bne _022F2970
_022F1CE0:
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0, #2]
	tst r0, #0x400
	beq _022F1D10
	mov r0, #0
	mov r1, #1
	strb r1, [sp, #0xb6]
	strb r0, [sp, #0xb7]
	strb r0, [sp, #0xb8]
	strb r0, [sp, #0xb9]
	strb r0, [sp, #0xba]
	b _022F2970
_022F1D10:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _022F1D84
	mov r0, r6
	add r1, sp, #0xcc
	bl ov29_022F0BAC
	ldr r0, [sp, #0xd4]
	ldr r1, [sp, #0xcc]
	ldr r2, [sp, #0xd8]
	ldr r3, [sp, #0xd0]
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl ov29_022E0CB8
	cmp r0, #0
	beq _022F1D84
	mov r0, #0
	mov r1, #1
	strb r1, [sp, #0xb6]
	strb r0, [sp, #0xb7]
	strb r0, [sp, #0xb8]
	strb r0, [sp, #0xb9]
	strb r0, [sp, #0xba]
	b _022F2970
_022F1D84:
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0, #6]
	tst r0, #2
	beq _022F1DB0
	mov r1, #1
	mov r0, #0
	strb r1, [sp, #0xb6]
	strb r0, [sp, #0xb7]
	strb r0, [sp, #0xb8]
	strb r1, [sp, #0xb9]
	b _022F2970
_022F1DB0:
	ldr r1, [sp, #0x6c]
	ldr r0, _022F1E00 ; =0x00000708
	cmp r1, r0
	blt _022F1E04
	mov r1, #1
	mov r0, #0
	strb r1, [sp, #0xb6]
	strb r1, [sp, #0xb7]
	strb r0, [sp, #0xb8]
	strb r0, [sp, #0xb9]
	b _022F2970
	.align 2, 0
_022F1DDC: .word 0x02353538
_022F1DE0: .word 0x0235171C
_022F1DE4: .word 0x0237C9A4
_022F1DE8: .word 0x00000BA3
_022F1DEC: .word 0x0237C6A4
_022F1DF0: .word 0x0237C694
_022F1DF4: .word 0x00000B9A
_022F1DF8: .word 0x00000B9B
_022F1DFC: .word 0x00000B9C
_022F1E00: .word 0x00000708
_022F1E04:
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0]
	tst r0, #0x800
	bne _022F1E3C
	tst r0, #8
	cmpeq sl, #0
	bne _022F1E3C
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	beq _022F1E3C
	bl ov29_0233779C
	ldr r0, _022F1DE4 ; =0x0237C9A4
	mov r1, #0
	strb r1, [r0, #2]
_022F1E3C:
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0]
	tst r0, #0x200
	beq _022F1E90
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0, #2]
	tst r0, #2
	beq _022F1E90
	bl sub_0204AF78
	mov r0, #4
	bl sub_02017CCC
	mov r0, #0
	mov r1, #1
	bl OpenMessageLog
	bl sub_0204AF78
	cmp r0, #0
	beq _022F1E88
	bl ov29_0234BB38
	bl ov29_022E81F8
_022F1E88:
	bl ov29_022E0B44
	bl sub_02006B70
_022F1E90:
	mov r0, #0
	str r0, [sp, #0x44]
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0]
	tst r0, #0x100
	beq _022F1ECC
	ldr r0, _022F1DE4 ; =0x0237C9A4
	ldrb r0, [r0, #1]
	cmp r0, #0
	ldreq r0, _022F1DE4 ; =0x0237C9A4
	moveq r1, #0
	streqh r1, [r0, #4]
	mov r1, #1
	ldr r0, _022F1DE4 ; =0x0237C9A4
	b _022F1ED4
_022F1ECC:
	ldr r0, _022F1DE4 ; =0x0237C9A4
	mov r1, #0
_022F1ED4:
	strb r1, [r0, #1]
	ldr r0, _022F1DF0 ; =0x0237C694
	mov r8, #0
	ldrh r0, [r0, #2]
	tst r0, #0x800
	bne _022F1EF4
	tst r0, #8
	beq _022F1EF8
_022F1EF4:
	mov r8, #1
_022F1EF8:
	cmp sl, #0
	beq _022F1F68
	ldr r0, _022F1DE4 ; =0x0237C9A4
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _022F1F68
	mov r0, r6
	add r1, sp, #0xbc
	bl ov29_022F0BAC
	ldr r0, _022F1DEC ; =0x0237C6A4
	ldrh r0, [r0]
	tst r0, #0x100
	beq _022F1F68
	ldr r0, [sp, #0xc4]
	ldr r1, [sp, #0xbc]
	ldr r2, [sp, #0xc8]
	ldr r3, [sp, #0xc0]
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl ov29_022E0CB8
	cmp r0, #0
	movne r8, #1
_022F1F68:
	cmp r8, #0
	beq _022F20B8
	ldr r0, [r6, #0xb4]
	str r0, [sp, #0x10]
	ldrb r0, [r0, #0xf1]
	cmp r0, #2
	beq _022F2098
	mov r0, r6
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	bne _022F2098
	mov fp, #0
	b _022F2090
_022F1FA0:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldrb r1, [r0, #0x4c]
	mov r0, #1
	str r0, [sp, #0x1c]
	add r8, r1, #1
	b _022F204C
_022F1FC0:
	and r8, r8, #7
	ldr r1, _022F1DE0 ; =0x0235171C
	mov r2, r8, lsl #2
	ldrsh r3, [r1, r2]
	ldr r2, _022F1DE0 ; =0x0235171C
	ldrsh r0, [r6, #4]
	add r2, r2, r8, lsl #2
	ldrsh r1, [r6, #6]
	ldrsh r2, [r2, #2]
	add r0, r0, r3
	add r1, r1, r2
	bl GetTile
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _022F203C
	ldr r0, [r1]
	cmp r0, #1
	bne _022F203C
	ldr r0, [r1, #0xb4]
	str r0, [sp, #0xc]
	mov r0, r6
	bl ov29_022E274C
	cmp r0, #0
	beq _022F203C
	cmp fp, #0
	ldreq r0, [sp, #0xc]
	ldreqb r0, [r0, #6]
	cmpeq r0, #0
	movne r0, #1
	strne r0, [sp, #0x18]
	bne _022F2058
_022F203C:
	ldr r0, [sp, #0x1c]
	add r8, r8, #1
	add r0, r0, #1
	str r0, [sp, #0x1c]
_022F204C:
	ldr r0, [sp, #0x1c]
	cmp r0, #8
	blt _022F1FC0
_022F2058:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _022F208C
	and r2, r8, #7
	ldr r1, [r6, #0xb4]
	mov r0, r6
	strb r2, [r1, #0x4c]
	bl GetSleepAnimationId
	mov r2, r8
	mov r1, r0
	mov r0, r6
	bl ov29_023049A8
	b _022F2098
_022F208C:
	add fp, fp, #1
_022F2090:
	cmp fp, #1
	blt _022F1FA0
_022F2098:
	ldr r0, _022F1DE4 ; =0x0237C9A4
	mov r1, #1
	strb r1, [r0, #2]
	ldrb r0, [sb, #0x4c]
	strb r0, [r5, #0x36]
	mov r0, #0xff
	strb r0, [r5, #0x37]
	bl ov29_022E0B44
_022F20B8:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _022F20E4
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0]
	tst r0, #0x200
	beq _022F20EC
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0, #2]
	tst r0, #0x100
	beq _022F20EC
_022F20E4:
	mov r0, #1
	str r0, [sp, #0x44]
_022F20EC:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _022F2118
	mov r0, r6
	bl ov29_023186CC
	cmp r0, #0
	beq _022F2118
	mov r0, r6
	bl ov29_02318700
	mov r0, #0
	str r0, [sp, #0x44]
_022F2118:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _022F2180
	bl GetEquippedThrowableItem
	movs fp, r0
	bmi _022F2180
	mov r8, #1
	bl sub_0204AF20
	cmp r0, #0
	beq _022F2150
	mov r0, r6
	bl ov29_022F0C1C
	cmp r0, #0
	moveq r8, #0
_022F2150:
	cmp r8, #0
	beq _022F2970
	mov r0, #0xb
	bl ov29_022EB3C8
	add r0, fp, #1
	strb r0, [sb, #0x4e]
	mov r0, #0
	strh r0, [sb, #0x50]
	strh r0, [sb, #0x52]
	ldrh r0, [sb, #0x4a]
	cmp r0, #0
	bne _022F2970
_022F2180:
	ldr r0, _022F1DDC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x23e]
	cmp r0, #0
	bne _022F21B4
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0, #2]
	tst r0, #4
	beq _022F21B4
	mov r0, #0
	bl ov29_022F0C98
	mov sl, #0
_022F21B4:
	strh r4, [sp, #0xb2]
	strh r4, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	ldr r0, _022F1DDC ; =0x02353538
	ldr r0, [r0]
	add r1, r0, #0x100
	ldrsh r3, [r1, #0xd8]
	cmp r3, #0
	blt _022F2210
	ldrsh r2, [r6, #4]
	cmp r2, r3
	ldreqsh r1, [r1, #0xda]
	ldreqsh r2, [r6, #6]
	cmpeq r2, r1
	moveq r7, r4
	beq _022F23C4
	add r1, r0, #0x1d8
	mov r0, r6
	bl ov29_022F40B8
	mov r7, r0
	b _022F23C4
_022F2210:
	ldr r1, _022F1DE4 ; =0x0237C9A4
	ldrb r1, [r1, #2]
	cmp r1, #0
	bne _022F2324
	ldr r1, [sp, #0x58]
	cmp r1, #0
	cmpeq sl, #0
	ldreq r1, [sp, #0x50]
	cmpeq r1, #0
	beq _022F2324
	cmp sl, #0
	beq _022F225C
	mov r0, r6
	add r1, sp, #0x9e
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	mov r7, r0
	b _022F22A8
_022F225C:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _022F2284
	mov r0, r6
	add r1, sp, #0x9e
	mov r2, #0x66
	mov r3, #0
	bl ov29_022F3EA0
	mov r7, r0
	b _022F22A8
_022F2284:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _022F22A8
	mov r0, r6
	add r1, sp, #0x9e
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	mov r7, r0
_022F22A8:
	cmp r7, #0
	blt _022F23C4
	ldrsh r1, [r6, #4]
	ldrsh r0, [sp, #0x9e]
	cmp r1, r0
	ldreqsh r1, [r6, #6]
	ldreqsh r0, [sp, #0xa0]
	cmpeq r1, r0
	beq _022F231C
	mov r0, r6
	add r1, sp, #0x9e
	bl ov29_022F426C
	cmp r0, #0
	beq _022F23C4
	mov r0, r6
	add r1, sp, #0x9e
	bl ov29_022F40B8
	ldr r1, [sp, #0x50]
	mov r7, r0
	mov r0, #1
	str r0, [sp, #0x40]
	cmp r1, #0
	ldrh r1, [sp, #0x9e]
	ldrh r0, [sp, #0xa0]
	strh r1, [sp, #0xb2]
	strh r0, [sp, #0xb4]
	movne r0, #1
	strne r0, [sp, #0x3c]
	b _022F23C4
_022F231C:
	ldrb r7, [sb, #0x4c]
	b _022F23C4
_022F2324:
	ldrb r0, [r0, #0x78c]
	cmp r0, #0
	beq _022F234C
	ldr r0, _022F1DE4 ; =0x0237C9A4
	ldrb r0, [r0, #1]
	cmp r0, #0
	ldreq r0, _022F1DF0 ; =0x0237C694
	ldreqh r1, [r0, #2]
	moveq r2, r1
	beq _022F2368
_022F234C:
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r1, [r0]
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	ldrne r0, _022F1DF0 ; =0x0237C694
	ldrneh r2, [r0, #2]
	moveq r2, r1
_022F2368:
	and r0, r1, #0xf0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r7, r4
	cmp r1, #0x50
	moveq r7, #3
	and r0, r2, #0xf0
	cmp r1, #0x60
	moveq r7, #5
	mov r0, r0, lsl #0x10
	cmp r1, #0x90
	moveq r7, #1
	cmp r1, #0xa0
	mov r2, r0, lsr #0x10
	moveq r7, #7
	cmp r2, #0x40
	moveq r7, #4
	cmp r2, #0x80
	moveq r7, #0
	cmp r2, #0x10
	moveq r7, #2
	cmp r2, #0x20
	moveq r7, #6
_022F23C4:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _022F243C
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _022F243C
	mov r0, r6
	add r1, sp, #0x9a
	mov r2, #2
	mov r3, #0
	bl ov29_022F3EA0
	movs r7, r0
	bmi _022F243C
	ldrsh r1, [r6, #4]
	ldrsh r0, [sp, #0x9a]
	cmp r1, r0
	ldreqsh r1, [r6, #6]
	ldreqsh r0, [sp, #0x9c]
	cmpeq r1, r0
	beq _022F243C
	strb r7, [sb, #0x4c]
	mov r0, #1
	str r0, [sp, #0x3c]
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	beq _022F243C
	bl ov29_0233779C
	ldr r0, _022F1DE4 ; =0x0237C9A4
	mov r1, #0
	strb r1, [r0, #2]
_022F243C:
	ldr r0, _022F1DDC ; =0x02353538
	cmp sl, #0
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xdc]
	ldr r0, _022F1DDC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xde]
	ldrne r0, _022F1DE4 ; =0x0237C9A4
	ldrneb r0, [r0, #2]
	cmpne r0, #0
	beq _022F248C
	mov r0, r6
	add r1, sp, #0x96
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	mov r7, r0
	strb r7, [r5, #0x36]
_022F248C:
	cmp r7, #0
	blt _022F2944
	ldr r0, _022F1DE4 ; =0x0237C9A4
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _022F24AC
	tst r7, #1
	beq _022F2964
_022F24AC:
	ldrb r0, [sb, #0x4c]
	cmp r0, r7
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	str r0, [sp, #0x28]
	and r0, r7, #7
	strb r0, [sb, #0x4c]
	ldr r0, _022F1DE4 ; =0x0237C9A4
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _022F251C
	mov r0, r6
	strb r7, [r5, #0x36]
	bl GetSleepAnimationId
	mov r1, r0
	mov r2, r7
	mov r0, r6
	bl ov29_023049A8
	ldr r0, _022F1DDC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xd8]
	ldr r0, _022F1DDC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xda]
	b _022F2964
_022F251C:
	mov r8, #0
	mov r0, r8
	str r0, [sp, #0x24]
	add r1, sp, #0x90
	bl GetPressedButtons
	ldr fp, [r6, #0xb4]
	ldr r1, _022F1DE0 ; =0x0235171C
	ldrb r3, [fp, #0x4c]
	ldrsh r2, [r6, #4]
	ldrsh r0, [r6, #6]
	mov sl, r3, lsl #2
	ldrsh r1, [r1, sl]
	ldr sl, _022F1DE0 ; =0x0235171C
	add r3, sl, r3, lsl #2
	add r1, r2, r1
	ldrsh r3, [r3, #2]
	mov r1, r1, lsl #0x10
	add r2, r0, r3
	mov r0, r1, asr #0x10
	mov r1, r2, lsl #0x10
	mov r1, r1, asr #0x10
	bl GetTile
	ldr r0, [r0, #0xc]
	str r0, [sp, #0x14]
	cmp r0, #0
	moveq r0, r8
	beq _022F2748
	ldr r0, [r0]
	cmp r0, #1
	movne r0, r8
	bne _022F2748
	ldr r0, [sp, #0x14]
	ldr sl, [r0, #0xb4]
	ldrb r0, [sl, #6]
	cmp r0, #0
	ldrneb r0, [sl, #9]
	cmpne r0, #1
	cmpne r0, #2
	beq _022F25D8
	mov r0, sl
	bl IsExperienceLocked
	cmp r0, #0
	bne _022F25D8
	ldrb r0, [sl, #0xbc]
	cmp r0, #7
	movne r0, r8
	bne _022F2748
_022F25D8:
	mov r0, fp
	bl ov29_022F35E0
	cmp r0, #0
	moveq r0, #0
	beq _022F2748
	mov r0, sl
	bl ov29_022F35E0
	cmp r0, #0
	moveq r0, #0
	beq _022F2748
	ldrb r0, [fp, #0xd0]
	cmp r0, #2
	moveq r0, #0
	beq _022F2748
	ldrb r0, [sl, #0xd0]
	cmp r0, #2
	moveq r0, #0
	beq _022F2748
	ldrb r0, [sl, #0xbd]
	cmp r0, #0
	cmpne r0, #2
	cmpne r0, #4
	movne r0, #0
	bne _022F2748
	ldrb r0, [fp, #0xbd]
	cmp r0, #0
	cmpne r0, #2
	cmpne r0, #4
	movne r0, #0
	bne _022F2748
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl ov29_0232461C
	cmp r0, #0
	movne r0, #0
	bne _022F2748
	ldrb r1, [fp, #0x4c]
	mov r0, r6
	bl ov29_0230105C
	cmp r0, #0
	moveq r0, #0
	beq _022F2748
	ldr r0, [sp, #0x14]
	add r1, r6, #4
	bl ov29_022FF958
	cmp r0, #0
	beq _022F26B8
	mov r0, #0
	ldr r1, _022F1DE8 ; =0x00000BA3
	mov r2, #1
	mov r3, r0
	str r0, [sp]
	bl ov29_0234D518
	cmp r0, #2
	moveq r0, #0
	beq _022F2748
_022F26B8:
	add r0, fp, #0x4a
	mov r1, #2
	bl SetMonsterActionFields
	ldr r0, _022F1DF0 ; =0x0237C694
	mov r1, #2
	ldrh r0, [r0]
	tst r0, #2
	movne r0, #0
	moveq r0, #1
	strb r0, [fp, #0x4e]
	ldrh r2, [fp]
	add r0, sl, #0x4a
	orr r2, r2, #0x8000
	strh r2, [fp]
	bl SetMonsterActionFields
	mov r0, #0
	strb r0, [sl, #0x4e]
	ldrb r1, [fp, #0x4c]
	add r2, sl, #0x100
	mov r0, #1
	add r1, r1, #4
	and r1, r1, #7
	strb r1, [sl, #0x4c]
	ldrh r1, [sl]
	orr r1, r1, #0x8000
	strh r1, [sl]
	ldr r1, [sp, #0x14]
	ldrsh r1, [r1, #4]
	strh r1, [r2, #0x7e]
	ldr r1, [sp, #0x14]
	ldrsh r1, [r1, #6]
	strh r1, [r2, #0x80]
	ldr r1, _022F1DDC ; =0x02353538
	ldr r2, [r1]
	mov r1, r0
	strb r1, [r2, #0x10]
_022F2748:
	cmp r0, #0
	bne _022F2970
	ldrb r0, [sb, #0xc4]
	cmp r0, #2
	ldreq r0, [sp, #0x7c]
	streq r0, [sp, #0x24]
	orreq r0, r8, #1
	andeq r8, r0, #0xff
	beq _022F27C8
	cmp r0, #7
	ldreq r0, [sp, #0x80]
	streq r0, [sp, #0x24]
	orreq r0, r8, #1
	andeq r8, r0, #0xff
	beq _022F27C8
	cmp r0, #5
	moveq r0, #0xba0
	streq r0, [sp, #0x24]
	orreq r0, r8, #1
	andeq r8, r0, #0xff
	beq _022F27C8
	cmp r0, #3
	ldreq r0, [sp, #0x84]
	streq r0, [sp, #0x24]
	orreq r0, r8, #1
	andeq r8, r0, #0xff
	beq _022F27C8
	cmp r0, #4
	ldreq r0, [sp, #0x88]
	streq r0, [sp, #0x24]
	orreq r0, r8, #1
	andeq r8, r0, #0xff
_022F27C8:
	mov r0, r6
	mov r1, r7
	bl ov29_02300E78
	cmp r0, #0
	orreq r0, r8, #2
	andeq r8, r0, #0xff
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _022F2804
	mov r0, r6
	bl GetSleepAnimationId
	mov r2, r7
	mov r1, r0
	mov r0, r6
	bl ov29_023049A8
_022F2804:
	tst r8, #2
	bne _022F2910
	tst r8, #1
	beq _022F2864
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _022F282C
	ldr r1, [sp, #0x24]
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
_022F282C:
	mov r0, #1
	bl ov29_022EB3C8
	ldr r1, _022F1DDC ; =0x02353538
	mov r3, #1
	ldr r0, [r1]
	sub r2, r3, #2
	strb r3, [r0, #0x78e]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xd8]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xda]
	b _022F2970
_022F2864:
	mov r0, #2
	bl ov29_022EB3C8
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _022F289C
	ldr r0, _022F1DDC ; =0x02353538
	ldrh r2, [sp, #0xb2]
	ldr r1, [r0]
	mov r0, #7
	add r1, r1, #0x100
	strh r2, [r1, #0xd8]
	ldrh r2, [sp, #0xb4]
	strh r2, [r1, #0xda]
	bl sub_02017CCC
_022F289C:
	ldr r0, _022F1DF0 ; =0x0237C694
	ldrh r0, [r0]
	tst r0, #2
	ldreq r0, [sp, #0x3c]
	cmpeq r0, #0
	beq _022F2904
	add r0, sb, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0
	beq _022F2904
	ldr r0, [r6, #0xb4]
	ldrb r0, [r0, #0xd0]
	cmp r0, #2
	ldrne r0, _022F1DDC ; =0x02353538
	movne r1, #1
	ldrne r0, [r0]
	strneb r1, [r0, #0x78b]
	mov r0, #0
	strb r0, [sb, #0x4e]
	b _022F2970
_022F2904:
	mov r0, #1
	strb r0, [sb, #0x4e]
	b _022F2970
_022F2910:
	tst r8, #1
	beq _022F2920
	mov r0, #0x23
	bl ov29_022EA3B4
_022F2920:
	ldr r0, _022F1DDC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xd8]
	ldr r0, _022F1DDC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xda]
	b _022F2964
_022F2944:
	ldr r0, _022F1DDC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xd8]
	ldr r0, _022F1DDC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xda]
_022F2964:
	mov r0, #0xf
	bl AdvanceFrame
	b _022F110C
_022F2970:
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	beq _022F2980
	bl ov29_0233779C
_022F2980:
	ldrh r0, [sb, #0x4a]
	cmp r0, #0x2d
	cmpne r0, #0x13
	bne _022F29B0
	mov r0, r6
	bl ov29_022F59C4
	bl IsFloorOver
	cmp r0, #0
	bne _022F2B34
	mov r0, #0
	bl ov29_022EB3C8
	b _022F1024
_022F29B0:
	ldrb r0, [sp, #0xb6]
	cmp r0, #0
	bne _022F2A00
	ldr r0, _022F1DDC ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x78c]
	ldrh r0, [sb, #0x4a]
	cmp r0, #0
	beq _022F29F4
	mov r0, r6
	bl ov29_022EB944
	cmp r0, #0
	bne _022F2B34
	mov r0, #0xf
	bl AdvanceFrame
	b _022F2B34
_022F29F4:
	mov r0, #0xf
	bl AdvanceFrame
	b _022F1024
_022F2A00:
	mov r0, #0xf
	bl AdvanceFrame
	bl ov29_02346E5C
	mov r0, #0
	bl ov29_0233A248
	mov r0, #1
	mov r1, #0
	bl ov29_022EA428
	ldrb r0, [sp, #0xb9]
	cmp r0, #0
	beq _022F2A70
	bl GetLeader
	mov r1, #1
	bl ShouldMonsterRunAwayVariation
	cmp r0, #0
	bne _022F2A70
	mov r0, #4
	bl sub_02017CCC
	ldrb r0, [sp, #0xb7]
	ldrb r1, [sp, #0xb8]
	mov r2, #1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bl ov29_0234DDF4
	bl sub_02006B70
	b _022F2A9C
_022F2A70:
	mov r0, #4
	bl sub_02017CCC
	ldrb r0, [sp, #0xb7]
	ldrb r1, [sp, #0xb8]
	mov r2, #0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bl ov29_0234DDF4
	bl sub_02006B70
_022F2A9C:
	bl ov29_022E0B44
	ldr r0, _022F1DE4 ; =0x0237C9A4
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r5, #0x35]
	bl ov29_0233779C
	bl IsFloorOver
	cmp r0, #0
	bne _022F2B34
	ldrh r0, [sb, #0x4a]
	cmp r0, #0
	beq _022F2B18
	cmp r0, #0x2b
	bne _022F2AEC
	ldr r0, _022F1DDC ; =0x02353538
	mov r2, #1
	ldr r1, [r0]
	strb r2, [r1, #8]
	ldr r0, [r0]
	strb r2, [r0, #7]
_022F2AEC:
	ldrh r0, [sb, #0x4a]
	cmp r0, #0x2e
	bne _022F2B34
	ldr r0, _022F1DDC ; =0x02353538
	mov r3, #1
	ldr r2, [r0]
	mov r1, #0
	strb r3, [r2, #8]
	ldr r0, [r0]
	strb r1, [r0, #7]
	b _022F2B34
_022F2B18:
	mov r0, #0xf
	bl AdvanceFrame
	ldr r0, _022F1DDC ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _022F1024
_022F2B34:
	add sp, sp, #0xdc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov29_022F0EDC

	arm_func_start ov29_022F2B3C
ov29_022F2B3C: ; 0x022F2B3C
	ldrb r1, [r0, #6]
	cmp r1, #0
	beq _022F2B6C
	ldrb r1, [r0, #8]
	cmp r1, #0
	ldreqb r1, [r0, #9]
	cmpeq r1, #0
	bne _022F2B6C
	ldrb r0, [r0, #0xbc]
	cmp r0, #7
	movne r0, #1
	bxne lr
_022F2B6C:
	mov r0, #0
	bx lr
	arm_func_end ov29_022F2B3C

	arm_func_start ov29_022F2B74
ov29_022F2B74: ; 0x022F2B74
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r1, _022F2FBC ; =0x02353538
	ldr r8, _022F2FC0 ; =0x0237C9A4
	ldr r1, [r1]
	ldrb r2, [r8, #1]
	add r1, r1, #0x21c
	str r0, [sp]
	cmp r2, #0
	add r5, r1, #0x1a000
	beq _022F2D58
	ldr r0, _022F2FC4 ; =0x0000013F
	mov r6, #0x400
	rsb r6, r6, #0
	add r0, r0, #0x9c
	mov r4, #0
	str r0, [sp, #8]
	add r7, r6, #0x200
_022F2BBC:
	ldr r0, _022F2FC8 ; =0x023526D8
	mov r1, #6
	ldrh r2, [sp, #0x10]
	mla r0, r4, r1, r0
	bic r1, r2, #0x100
	strh r1, [sp, #0x10]
	ldrh r2, [sp, #0x10]
	ldrb r1, [r0, #5]
	bic r2, r2, #0x200
	strh r2, [sp, #0x10]
	cmp r1, #0
	ldrh r1, [sp, #0x10]
	movne r2, #0x10
	moveq r2, #0
	bic r1, r1, #0xc00
	strh r1, [sp, #0x10]
	ldrh r1, [sp, #0x10]
	orr r1, r1, #0x400
	strh r1, [sp, #0x10]
	ldrh r1, [sp, #0x10]
	bic r1, r1, #0x1000
	strh r1, [sp, #0x10]
	ldrh r1, [sp, #0x10]
	bic r1, r1, #0x2000
	strh r1, [sp, #0x10]
	ldrh r1, [sp, #0x10]
	orr r1, r1, #0x2000
	strh r1, [sp, #0x10]
	ldrh r1, [sp, #0x10]
	bic r1, r1, #0xc000
	strh r1, [sp, #0x10]
	ldrb r1, [r0, #4]
	cmp r1, #0
	movne r1, #8
	moveq r1, #0
	add r1, r1, r2
	ldrh r3, [sp, #0x12]
	mov sb, r1, lsl #0x1b
	ldrh r1, [sp, #0x16]
	ldrh r2, [sp, #0x14]
	bic r3, r3, #0x3e00
	bic r1, r1, #1
	and r2, r2, r6
	strh r3, [sp, #0x12]
	strh r1, [sp, #0x16]
	strh r2, [sp, #0x14]
	ldrh r1, [sp, #0x12]
	ldrh r3, [sp, #0x14]
	ldrh r2, [sp, #0x16]
	orr r1, r1, sb, lsr #18
	strh r1, [sp, #0x12]
	ldr r1, [sp, #8]
	ldrsh fp, [r0]
	orr r1, r3, r1
	strh r1, [sp, #0x14]
	bic r1, r2, #2
	strh r1, [sp, #0x16]
	ldrh r1, [sp, #0x14]
	ldrh r2, [sp, #0x12]
	ldrsh sb, [r0, #2]
	bic r1, r1, #0xc00
	bic r2, r2, #0xc000
	strh r1, [sp, #0x14]
	strh r2, [sp, #0x12]
	ldrh r2, [sp, #0x14]
	ldrh r0, [sp, #0x12]
	ldrh r1, [sp, #0x16]
	orr r2, r2, #0x800
	strh r2, [sp, #0x14]
	ldrh r2, [sp, #0x14]
	and sl, r0, r7
	ldr r0, _022F2FCC ; =0xFFFF000F
	bic r2, r2, #0xf000
	strh r2, [sp, #0x14]
	ldrsh ip, [r8, #4]
	and r3, r1, r0
	ldr r0, _022F2FD0 ; =0x020AFC4C
	add ip, ip, ip, lsr #31
	strh r3, [sp, #0x16]
	mov r3, ip, asr #1
	and r3, r3, #7
	add r3, r3, #0xa
	strh sl, [sp, #0x12]
	mul sl, fp, r3
	mul r3, sb, r3
	add sb, sl, #0x7c
	and sl, sb, r6, lsr #23
	ldrh fp, [sp, #0x12]
	add r3, r3, #0x62
	ldrh sb, [sp, #0x16]
	mov r3, r3, lsl #0x14
	orr sl, fp, sl
	orr r3, sb, r3, lsr #16
	ldr r0, [r0]
	ldr r2, _022F2FC4 ; =0x0000013F
	add r1, sp, #0x10
	strh sl, [sp, #0x12]
	strh r3, [sp, #0x16]
	bl sub_0201B9F8
	add r4, r4, #1
	cmp r4, #4
	blt _022F2BBC
	b _022F2F7C
_022F2D58:
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	beq _022F2F7C
	ldrb r3, [r5, #0x36]
	cmp r3, #0
	blt _022F2F7C
	cmp r3, #8
	bge _022F2F7C
	ldrb r0, [r8, #3]
	ldr r2, _022F2FC0 ; =0x0237C9A4
	cmp r0, #0
	ldrneb r0, [r8]
	ldrsh r2, [r2, #4]
	cmpne r0, #0
	mov r0, #0xc
	mul r1, r3, r0
	add r2, r2, r2, lsr #31
	ldr r0, _022F2FD4 ; =0x023526F0
	mov r2, r2, asr #1
	and r2, r2, #7
	ldr r3, _022F2FD8 ; =0x023526F2
	add r7, r2, #0xa
	ldrsh r4, [r0, r1]
	ldrsh r2, [r3, r1]
	movne sl, #3
	moveq sl, #1
	mul r3, r2, r7
	mul r6, r4, r7
	add r7, r6, #0x7c
	cmp sl, #0
	add r8, r3, #0x62
	mov r6, #0
	ble _022F2F7C
	ldr r3, _022F2FDC ; =0x023526F4
	mov r4, #0x400
	ldr r2, _022F2FE0 ; =0x000003FF
	ldr r3, [r3, r1]
	add sb, r0, r1
	sub r0, r2, #0x2c0
	rsb r4, r4, #0
	str r0, [sp, #4]
	add r0, r4, #0x200
	and fp, r3, r2
	str r0, [sp, #0xc]
	b _022F2F74
_022F2E0C:
	ldrh r1, [sp, #0x10]
	ldrb r0, [sb, #9]
	ldrh r3, [sp, #0x12]
	bic r1, r1, #0x100
	strh r1, [sp, #0x10]
	cmp r0, #0
	ldrh r0, [sp, #0x10]
	movne r1, #0x10
	ldrh r2, [sp, #0x14]
	bic r0, r0, #0x200
	strh r0, [sp, #0x10]
	ldrh r0, [sp, #0x10]
	bic r3, r3, #0x3e00
	strh r3, [sp, #0x12]
	bic r0, r0, #0xc00
	strh r0, [sp, #0x10]
	ldrh r0, [sp, #0x10]
	and r2, r2, r4
	strh r2, [sp, #0x14]
	orr r0, r0, #0x400
	strh r0, [sp, #0x10]
	ldrh r0, [sp, #0x10]
	moveq r1, #0
	ldrh r3, [sp, #0x12]
	bic r0, r0, #0x1000
	strh r0, [sp, #0x10]
	ldrh r0, [sp, #0x10]
	ldrh r2, [sp, #0x14]
	bic r0, r0, #0x2000
	strh r0, [sp, #0x10]
	ldrh r0, [sp, #0x10]
	orr r0, r0, #0x2000
	strh r0, [sp, #0x10]
	ldrh r0, [sp, #0x10]
	bic r0, r0, #0xc000
	strh r0, [sp, #0x10]
	ldrb r0, [sb, #8]
	cmp r0, #0
	movne r0, #8
	moveq r0, #0
	add r0, r0, r1
	ldrh r1, [sp, #0x16]
	mov r0, r0, lsl #0x1b
	orr r0, r3, r0, lsr #18
	bic r1, r1, #1
	strh r1, [sp, #0x16]
	strh r0, [sp, #0x12]
	orr r0, r2, fp
	ldrh r2, [sp, #0x12]
	ldrh r1, [sp, #0x16]
	strh r0, [sp, #0x14]
	bic r2, r2, #0xc000
	bic r0, r1, #2
	ldrh r1, [sp, #0x14]
	strh r2, [sp, #0x12]
	strh r0, [sp, #0x16]
	bic r1, r1, #0xc00
	strh r1, [sp, #0x14]
	ldrh r1, [sp, #0x14]
	ldrh r3, [sp, #0x12]
	ldrh r2, [sp, #0x16]
	orr r1, r1, #0x800
	strh r1, [sp, #0x14]
	ldr r1, [sp, #0xc]
	and r0, r7, r4, lsr #23
	and r1, r3, r1
	strh r1, [sp, #0x12]
	ldr r1, _022F2FCC ; =0xFFFF000F
	ldrh r3, [sp, #0x14]
	and r1, r2, r1
	ldrh r2, [sp, #0x12]
	strh r1, [sp, #0x16]
	bic r3, r3, #0xf000
	orr r0, r2, r0
	strh r0, [sp, #0x12]
	ldrh r1, [sp, #0x16]
	mov r0, r8, lsl #0x14
	ldr r2, [sp, #4]
	orr r0, r1, r0, lsr #16
	strh r0, [sp, #0x16]
	ldr r0, _022F2FD0 ; =0x020AFC4C
	add r1, sp, #0x10
	ldr r0, [r0]
	strh r3, [sp, #0x14]
	bl sub_0201B9F8
	ldrsh r1, [sb]
	ldrsh r0, [sb, #2]
	add r6, r6, #1
	add r7, r7, r1, lsl #2
	add r8, r8, r0, lsl #2
_022F2F74:
	cmp r6, sl
	blt _022F2E0C
_022F2F7C:
	ldr r0, _022F2FC0 ; =0x0237C9A4
	ldrb r1, [r0, #2]
	cmp r1, #0
	ldrneb r2, [r5, #0x36]
	ldrneb r1, [r5, #0x37]
	cmpne r1, r2
	beq _022F2FB4
	strb r2, [r5, #0x37]
	ldrb r3, [r0, #2]
	ldr r0, [sp]
	ldrb r1, [r5, #0x36]
	add r0, r0, #4
	mov r2, #0
	bl ov29_02337428
_022F2FB4:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F2FBC: .word 0x02353538
_022F2FC0: .word 0x0237C9A4
_022F2FC4: .word 0x0000013F
_022F2FC8: .word 0x023526D8
_022F2FCC: .word 0xFFFF000F
_022F2FD0: .word 0x020AFC4C
_022F2FD4: .word 0x023526F0
_022F2FD8: .word 0x023526F2
_022F2FDC: .word 0x023526F4
_022F2FE0: .word 0x000003FF
	arm_func_end ov29_022F2B74

	arm_func_start ov29_022F2FE4
ov29_022F2FE4: ; 0x022F2FE4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _022F3084 ; =0x02353538
	ldr r2, _022F3088 ; =0x0237C694
	ldr r6, [r1]
	mov r4, #0
	ldrb r5, [r6, #0x78c]
	ldrb r0, [r6, #0x78b]
	ldrh r7, [r2]
	sub r3, r4, #1
	orr r0, r5, r0
	strb r0, [r6, #0x78c]
	ldr r0, [r1]
	and r5, r7, #0xf0
	strb r4, [r0, #0x78b]
	ldr r0, [r1]
	mov r8, #0x54
	add r0, r0, #0x100
	strh r3, [r0, #0xd8]
	ldr r0, [r1]
	ldr r7, _022F3088 ; =0x0237C694
	add r0, r0, #0x100
	strh r3, [r0, #0xda]
	ldrh r0, [r2]
	ldr r6, _022F3084 ; =0x02353538
	tst r0, #0x100
	movne r4, #1
	b _022F3070
_022F3050:
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r7]
	and r0, r0, #0xf0
	tst r5, r0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl AdvanceFrame
_022F3070:
	ldr r0, [r6]
	ldrb r0, [r0, #0x78c]
	cmp r0, #0
	bne _022F3050
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022F3084: .word 0x02353538
_022F3088: .word 0x0237C694
	arm_func_end ov29_022F2FE4

	arm_func_start ov29_022F308C
ov29_022F308C: ; 0x022F308C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x68
	ldr r0, _022F35D4 ; =0x02353538
	ldr r5, [r0]
	bl GetLeader
	mov r4, r0
	ldrsh sl, [r4, #4]
	ldrsh sb, [r4, #6]
	ldr r2, [r4, #0xb4]
	mov r0, sl
	mov r1, sb
	ldrb r7, [r2, #0x4c]
	bl GetTile
	ldrb r1, [r5, #0x78b]
	ldr r3, _022F35D8 ; =0x0235171C
	mov r5, r7, lsl #2
	ldr r2, _022F35DC ; =0x0235171E
	ldrsh r6, [r3, r5]
	mov r8, r0
	cmp r1, #0
	ldrsh r5, [r2, r5]
	moveq r0, #0
	beq _022F35CC
	ldr r0, [r8, #0x10]
	cmp r0, #0
	movne r0, #0
	bne _022F35CC
	add r1, sp, #0x4c
	mov r0, r4
	strh sl, [sp, #0x4c]
	strh sb, [sp, #0x4e]
	bl ov29_022FFA94
	cmp r0, #0
	movne r0, #0
	bne _022F35CC
	mov r0, r4
	mov r1, r7
	bl ov29_02300FCC
	cmp r0, #0
	moveq r0, #0
	beq _022F35CC
	ldrb r0, [r8, #7]
	str r0, [sp, #0x10]
	cmp r0, #0xff
	bne _022F3160
	add r0, sl, r6
	add r1, sb, r5
	bl GetTile
	ldrb r0, [r0, #7]
	cmp r0, #0xff
	beq _022F3170
	mov r0, #0
	b _022F35CC
_022F3160:
	ldrh r0, [r8]
	tst r0, #8
	movne r0, #0
	bne _022F35CC
_022F3170:
	mvn r6, #0
	ldr r5, _022F35D8 ; =0x0235171C
	b _022F31C4
_022F317C:
	add r0, r7, r6
	mov r0, r0, lsl #0x1d
	mov r1, r0, lsr #0x1b
	add r0, r5, r0, lsr #27
	ldrsh r2, [r5, r1]
	ldrsh r1, [r0, #2]
	add r0, sl, r2
	add r1, sb, r1
	bl GetTile
	ldr r1, [r0, #0xc]
	cmp r1, #0
	movne r0, #0
	bne _022F35CC
	ldrh r0, [r0]
	tst r0, #0x200
	movne r0, #0
	bne _022F35CC
	add r6, r6, #1
_022F31C4:
	cmp r6, #1
	ble _022F317C
	add r1, r7, #4
	add r0, r7, #5
	mov r1, r1, lsl #0x1d
	mov r0, r0, lsl #0x1d
	add r2, r7, #3
	mov r2, r2, lsl #0x1d
	ldr r6, _022F35D8 ; =0x0235171C
	mov r5, r1, lsr #0x1b
	mov fp, r0, lsr #0x1b
	ldrsh r1, [r6, r5]
	ldr r8, _022F35DC ; =0x0235171E
	mov r3, r2, lsr #0x1b
	add r1, sl, r1
	ldrsh r2, [r6, r3]
	ldrsh r0, [r6, fp]
	ldrsh r6, [r8, r3]
	add r2, sl, r2
	ldrsh r5, [r8, r5]
	ldrsh r3, [r8, fp]
	add r8, sl, r0
	add r0, sb, r5
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r6, sb, r6
	str r0, [sp, #0x60]
	ldr r0, [sp, #4]
	add r1, sb, r3
	str r0, [sp, #0x54]
	and r0, r7, #1
	str r2, [sp, #0x5c]
	str r8, [sp, #0x64]
	str r6, [sp, #0x50]
	str r1, [sp, #0x58]
	str r0, [sp]
	mvn r5, #0
	b _022F33E4
_022F3260:
	add r8, sl, r5
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	mvn r6, #0
	str r0, [sp, #0x14]
	b _022F33D8
_022F3278:
	add fp, sb, r6
	mov r0, r8
	mov r1, fp
	bl GetTile
	ldr r1, [r0, #0x10]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _022F32DC
	mov r0, #0
	b _022F32C0
_022F32A0:
	add r2, sp, #0x5c
	ldr r2, [r2, r0, lsl #2]
	cmp r8, r2
	addeq r2, sp, #0x50
	ldreq r2, [r2, r0, lsl #2]
	cmpeq fp, r2
	beq _022F32C8
	add r0, r0, #1
_022F32C0:
	cmp r0, #3
	blt _022F32A0
_022F32C8:
	cmp r0, #3
	ldreq r0, [r1]
	cmpeq r0, #3
	moveq r0, #0
	beq _022F35CC
_022F32DC:
	ldr r0, [sp]
	cmp r0, #0
	beq _022F3324
	cmp r1, #0
	beq _022F3368
	ldr r0, [r1]
	cmp r0, #2
	bne _022F3368
	ldrb r0, [r1, #0x20]
	cmp r0, #0
	ldreq r0, _022F35D4 ; =0x02353538
	ldreq r0, [r0]
	addeq r0, r0, #0x1a000
	ldreqb r0, [r0, #0x244]
	cmpeq r0, #0
	beq _022F3368
	mov r0, #0
	b _022F35CC
_022F3324:
	cmp r5, #0
	cmpne r6, #0
	bne _022F3368
	cmp r1, #0
	beq _022F3368
	ldr r0, [r1]
	cmp r0, #2
	bne _022F3368
	ldrb r0, [r1, #0x20]
	cmp r0, #0
	ldreq r0, _022F35D4 ; =0x02353538
	ldreq r0, [r0]
	addeq r0, r0, #0x1a000
	ldreqb r0, [r0, #0x244]
	cmpeq r0, #0
	movne r0, #0
	bne _022F35CC
_022F3368:
	cmp r5, #0
	cmpne r6, #0
	bne _022F33D4
	cmp r5, #0
	cmpeq r6, #0
	beq _022F33D4
	ldr r0, [sp, #8]
	cmp r0, r8
	ldreq r0, [sp, #4]
	cmpeq r0, fp
	beq _022F33D4
	ldr r0, [sp, #0x14]
	add r1, sp, #0x48
	strh r0, [sp, #0x48]
	mov r0, r4
	strh fp, [sp, #0x4a]
	bl ov29_022FFA94
	cmp r0, #0
	bne _022F33D4
	ldr r0, [sp, #0x10]
	cmp r0, #0xff
	ldrne r0, [sp, #0xc]
	ldrneb r1, [r0, #7]
	ldrne r0, [sp, #0x10]
	cmpne r0, r1
	movne r0, #0
	bne _022F35CC
_022F33D4:
	add r6, r6, #1
_022F33D8:
	cmp r6, #1
	ble _022F3278
	add r5, r5, #1
_022F33E4:
	cmp r5, #1
	ble _022F3260
	ldr r0, [sp]
	cmp r0, #0
	bne _022F35C8
	cmp r7, #0
	cmpne r7, #4
	bne _022F34E8
	sub r3, sl, #1
	sub r2, sb, #1
	add r1, sp, #0x44
	mov r0, r4
	strh r3, [sp, #0x44]
	strh r2, [sp, #0x46]
	bl ov29_022FFA94
	mov r5, r0
	sub r2, sl, #1
	add r1, sp, #0x40
	mov r0, r4
	strh r2, [sp, #0x40]
	strh sb, [sp, #0x42]
	bl ov29_022FFA94
	mov r6, r0
	sub r3, sl, #1
	add r2, sb, #1
	add r1, sp, #0x3c
	mov r0, r4
	strh r3, [sp, #0x3c]
	strh r2, [sp, #0x3e]
	bl ov29_022FFA94
	cmp r6, #0
	bne _022F3474
	cmp r5, r6
	cmpeq r6, r0
	movne r0, #0
	bne _022F35CC
_022F3474:
	add r3, sl, #1
	sub r2, sb, #1
	add r1, sp, #0x38
	mov r0, r4
	strh r3, [sp, #0x38]
	strh r2, [sp, #0x3a]
	bl ov29_022FFA94
	mov r5, r0
	add r2, sl, #1
	add r1, sp, #0x34
	mov r0, r4
	strh r2, [sp, #0x34]
	strh sb, [sp, #0x36]
	bl ov29_022FFA94
	mov r6, r0
	add r3, sl, #1
	add r2, sb, #1
	add r1, sp, #0x30
	mov r0, r4
	strh r3, [sp, #0x30]
	strh r2, [sp, #0x32]
	bl ov29_022FFA94
	cmp r6, #0
	bne _022F35C8
	cmp r5, r6
	cmpeq r6, r0
	beq _022F35C8
	mov r0, #0
	b _022F35CC
_022F34E8:
	sub r3, sl, #1
	sub r2, sb, #1
	add r1, sp, #0x2c
	mov r0, r4
	strh r3, [sp, #0x2c]
	strh r2, [sp, #0x2e]
	bl ov29_022FFA94
	mov r5, r0
	sub r2, sb, #1
	add r1, sp, #0x28
	mov r0, r4
	strh sl, [sp, #0x28]
	strh r2, [sp, #0x2a]
	bl ov29_022FFA94
	mov r6, r0
	add r3, sl, #1
	sub r2, sb, #1
	add r1, sp, #0x24
	mov r0, r4
	strh r3, [sp, #0x24]
	strh r2, [sp, #0x26]
	bl ov29_022FFA94
	cmp r6, #0
	bne _022F3558
	cmp r5, r6
	cmpeq r6, r0
	movne r0, #0
	bne _022F35CC
_022F3558:
	sub r3, sl, #1
	add r2, sb, #1
	add r1, sp, #0x20
	mov r0, r4
	strh r3, [sp, #0x20]
	strh r2, [sp, #0x22]
	bl ov29_022FFA94
	mov r5, r0
	add r2, sb, #1
	add r1, sp, #0x1c
	mov r0, r4
	strh sl, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	bl ov29_022FFA94
	mov r6, r0
	add r3, sl, #1
	add r2, sb, #1
	add r1, sp, #0x18
	mov r0, r4
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	bl ov29_022FFA94
	cmp r6, #0
	bne _022F35C8
	cmp r5, r6
	cmpeq r6, r0
	movne r0, #0
	bne _022F35CC
_022F35C8:
	mov r0, #1
_022F35CC:
	add sp, sp, #0x68
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F35D4: .word 0x02353538
_022F35D8: .word 0x0235171C
_022F35DC: .word 0x0235171E
	arm_func_end ov29_022F308C

	arm_func_start ov29_022F35E0
ov29_022F35E0: ; 0x022F35E0
	ldrb r0, [r0, #0xc4]
	cmp r0, #2
	moveq r0, #0
	bxeq lr
	cmp r0, #1
	moveq r0, #0
	bxeq lr
	cmp r0, #7
	moveq r0, #0
	bxeq lr
	cmp r0, #5
	moveq r0, #0
	bxeq lr
	cmp r0, #3
	moveq r0, #0
	bxeq lr
	cmp r0, #4
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_022F35E0

	arm_func_start ov29_022F3634
ov29_022F3634: ; 0x022F3634
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	bl GetLeader
	movs r4, r0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl GetTileAtEntity
	mov r5, r0
	mov r0, r4
	mov r1, #0xd
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrne r0, [r4, #0xb4]
	ldrneb r0, [r0, #0xef]
	cmpne r0, #3
	beq _022F3698
	mov r0, r4
	mov r1, #0x10
	bl HasHeldItem
	cmp r0, #0
	bne _022F3698
	add r0, r4, #4
	bl ov29_02337D68
_022F3698:
	ldrh r0, [r5]
	tst r0, #0x200
	ldrne r0, _022F37CC ; =0x02353538
	movne r1, #1
	ldrne r0, [r0]
	strneb r1, [r0, #5]
	ldr r5, [r5, #0x10]
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022F36CC: ; jump table
	ldmia sp!, {r4, r5, r6, r7, r8, pc} ; case 0
	ldmia sp!, {r4, r5, r6, r7, r8, pc} ; case 1
	b _022F36E8 ; case 2
	b _022F3778 ; case 3
	ldmia sp!, {r4, r5, r6, r7, r8, pc} ; case 4
	b _022F37C0 ; case 5
	ldmia sp!, {r4, r5, r6, r7, r8, pc} ; case 6
_022F36E8:
	mov r0, r5
	bl ov29_022E1608
	mov r6, r0
	mov r7, #0
	mov r0, r4
	mov r1, #0x13
	mov r8, r7
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022F372C
	ldrb r0, [r5, #0x20]
	cmp r0, #0
	bne _022F372C
	mov r0, #1
	strb r0, [r5, #0x20]
	bl ov29_02336F4C
	mov r8, #1
_022F372C:
	ldrb r0, [r6, #1]
	cmp r0, #0
	moveq r7, #1
	beq _022F3750
	cmp r0, #1
	moveq r7, #0
	beq _022F3750
	cmp r0, #2
	moveq r7, #1
_022F3750:
	cmp r7, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	add r1, r4, #4
	mov r2, #0
	mov r3, #1
	bl ov29_022EDFA0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022F3778:
	mov r0, r5
	bl ov29_022E1610
	ldrb r0, [r0]
	tst r0, #2
	bne _022F37A0
	add r0, r4, #4
	mov r1, #1
	bl ov29_02345058
	bl ov29_022FB920
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022F37A0:
	mov r0, r4
	bl ShouldMonsterRunAway
	cmp r0, #0
	ldreq r0, _022F37CC ; =0x02353538
	moveq r1, #4
	ldreq r0, [r0]
	streq r1, [r0, #0x614]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022F37C0:
	mov r0, #1
	bl ov29_02338794
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022F37CC: .word 0x02353538
	arm_func_end ov29_022F3634

	arm_func_start ov29_022F37D0
ov29_022F37D0: ; 0x022F37D0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, r1
	bl ov29_022F87C0
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5]
	cmp r0, #1
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl ov29_023009CC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5, #0xb4]
	mov r6, #1
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _022F3850
	ldrb r0, [r1, #0xbc]
	cmp r0, #7
	cmpne r0, #0x10
	cmpne r0, #0x11
	cmpne r0, #0x12
	cmpne r0, #0x13
	cmpne r0, #0x14
	ldrneb r0, [r1, #9]
	cmpne r0, #1
	movne r6, #0
	b _022F3874
_022F3850:
	mov r2, #0
	mov r0, r7
	mov r1, r5
	mov r3, r2
	bl ov29_0230175C
	cmp r0, #1
	movne r0, r6
	moveq r0, #0
	and r6, r0, #0xff
_022F3874:
	cmp r6, #0
	beq _022F3888
	add r0, r4, #0x4a
	mov r1, #0x13
	bl SetMonsterActionFields
_022F3888:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022F37D0

	arm_func_start ov29_022F3890
ov29_022F3890: ; 0x022F3890
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r1
	mov r6, r0
	bl ov29_022E9618
	mov r4, r0
	cmp r5, #0
	beq _022F38D0
	ldrb r0, [r4, #0xd0]
	cmp r0, #4
	bne _022F38D0
	ldrb r0, [r4, #0x4c]
	add r1, r0, #4
	and r0, r1, #0xff
	and r0, r0, #7
	strb r0, [r4, #0x4c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022F38D0:
	ldrb r0, [r4, #0xd0]
	cmp r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, #8
	bl DungeonRandInt
	mov sb, r0
	mov r8, #0
	mov r7, #1
	b _022F3928
_022F38F4:
	cmp r5, #0
	movne r0, r7
	bne _022F390C
	mov r0, r6
	mov r1, sb
	bl ov29_02300E78
_022F390C:
	cmp r0, #0
	andne r0, sb, #7
	strneb r0, [r4, #0x4c]
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, sb, #1
	and sb, r0, #7
	add r8, r8, #1
_022F3928:
	cmp r8, #8
	blt _022F38F4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022F3890

	arm_func_start ov29_022F3934
ov29_022F3934: ; 0x022F3934
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r0, _022F3AE4 ; =0x02353538
	ldr r0, [r0]
	ldr r6, [r0, #0xc8]
	bl GetLeader
	ldr sb, [r6, #0xb4]
	mov fp, r0
	ldrb r0, [sb, #7]
	ldr sl, [fp, #0xb4]
	cmp r0, #0
	beq _022F3970
	ldr r1, _022F3AE8 ; =0x00000BA4
	mov r0, r6
	bl LogMessageByIdWithPopup
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022F3970:
	mov r0, #2
	bl ov29_02346BD8
	cmp r0, #0
	bne _022F398C
	bl ov29_022F670C
	cmp r0, #0
	beq _022F399C
_022F398C:
	ldr r1, _022F3AEC ; =0x00000BA5
	mov r0, r6
	bl LogMessageByIdWithPopup
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022F399C:
	ldr r0, _022F3AE4 ; =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x790]
	cmp r0, #0
	beq _022F39C0
	ldr r1, _022F3AF0 ; =0x00000BA6
	mov r0, r6
	bl LogMessageByIdWithPopup
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022F39C0:
	mov r5, #0
	strb r5, [r1, #0x799]
	mov r0, #1
	strb r0, [sb, #7]
	strb r5, [sl, #7]
	mvn r4, #0
_022F39D8:
	mov r0, r5
	bl GetActiveTeamMember
	mov r7, r0
	ldrb r0, [r7]
	mov r8, r4
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F3A40
	ldrsh r0, [r7, #8]
	bl CheckTeamMemberIdx__022F9C34
	cmp r0, #0
	ldrsh r0, [sb, #0xc]
	ldreqsh r8, [r7, #8]
	cmp r5, r0
	bne _022F3A38
	mov r0, #1
	strb r0, [r7, #1]
	cmp r8, r4
	beq _022F3A40
	mov r0, r8
	bl sub_02056754
	b _022F3A40
_022F3A38:
	mov r0, #0
	strb r0, [r7, #1]
_022F3A40:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
	cmp r5, #4
	blt _022F39D8
	ldr r0, _022F3AF4 ; =0x0235355C
	mov r1, #0
	str r1, [r0]
	add r3, sl, #0x4a
	add r2, sb, #0x4a
	mov r1, #0xa
_022F3A6C:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022F3A6C
	mov r0, r6
	mov r1, #1
	bl ov29_022E2E54
	bl ov29_022E8104
	bl ov29_022E81F8
	mov r0, fp
	bl ov29_022E3DD8
	bl GetLeader
	bl ov29_022E3E24
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, r6
	ldr r1, _022F3AF8 ; =0x00000BA7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #0
	bl ov29_022F62CC
	mov r0, fp
	mov r1, #0
	strh r1, [sb, #0x68]
	strh r1, [sl, #0x68]
	bl ov29_022F9EA0
	mov r0, r6
	bl ov29_022F9EA0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F3AE4: .word 0x02353538
_022F3AE8: .word 0x00000BA4
_022F3AEC: .word 0x00000BA5
_022F3AF0: .word 0x00000BA6
_022F3AF4: .word 0x0235355C
_022F3AF8: .word 0x00000BA7
	arm_func_end ov29_022F3934

	arm_func_start ov29_022F3AFC
ov29_022F3AFC: ; 0x022F3AFC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl ov29_022F89AC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrh r0, [r0]
	tst r0, #0x2000
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl ov29_023491B8
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_023009CC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl ov29_022E28D4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl ov29_023009CC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x4a
	mov r1, #0x42
	bl SetMonsterActionFields
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov29_022F3AFC

	arm_func_start ov29_022F3B8C
ov29_022F3B8C: ; 0x022F3B8C
	ldr ip, _022F3B94 ; =ov29_022FBAB4
	bx ip
	.align 2, 0
_022F3B94: .word ov29_022FBAB4
	arm_func_end ov29_022F3B8C

	arm_func_start ov29_022F3B98
ov29_022F3B98: ; 0x022F3B98
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r4, #0
	str r4, [sp, #4]
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov fp, r4
	str r4, [sp]
	bl sub_0204AF20
	cmp r0, #0
	moveq r0, r4
	beq _022F3E88
	cmp r8, #0
	ldrb r5, [sl, #0xb0]
	beq _022F3C4C
	mov r6, r4
	mov r0, sl
	mov r1, r8
	mov r2, r6
	bl GetEntityMoveTargetAndRange
	and r0, r0, #0xf0
	mov r1, r0, lsl #0x10
	mov r7, r1, asr #0x10
	mov r0, sl
	mov r1, r8
	mov r2, r4
	bl GetEntityMoveTargetAndRange
	cmp r7, #0
	cmpne r7, #0x10
	cmpne r7, #0x40
	cmpne r7, #0x50
	cmpne r7, #0x80
	and r0, r0, #0xf
	cmpne r7, #0x90
	beq _022F3C3C
	cmp r0, #4
	bne _022F3C40
	ldrh r0, [r8, #4]
	cmp r0, #0x80
	beq _022F3C40
_022F3C3C:
	mov r6, #1
_022F3C40:
	cmp r6, #0
	moveq r0, #1
	beq _022F3E88
_022F3C4C:
	bl ov29_022F2FE4
	ldr r1, _022F3E90 ; =0x0237C9A4
	mov r2, #0
	strb r2, [r1, #1]
	mov r0, #1
	strh r2, [r1, #4]
	bl ov29_0234B4CC
	mov r0, #0
	bl ov29_0234B1A4
	ldr r0, _022F3E94 ; =0x00000BA8
	bl ov29_0234FC50
	bl ov29_022E0B44
	ldr r6, _022F3E90 ; =0x0237C9A4
	mvn r8, #0
_022F3C84:
	mov r0, #0x62
	bl AdvanceFrame
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _022F3CAC
	mov r0, sl
	bl ov29_022F2B74
	ldrsh r0, [r6, #4]
	add r0, r0, #1
	strh r0, [r6, #4]
_022F3CAC:
	ldr r0, _022F3E98 ; =0x0237C6A4
	mov r1, #0
	ldrh r0, [r0]
	tst r0, #0x40
	beq _022F3CC8
	tst r0, #2
	movne r1, #1
_022F3CC8:
	cmp r1, #0
	beq _022F3D10
	add r1, sp, #8
	mov r0, sl
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	ldrsh r2, [sl, #4]
	ldrsh r1, [sp, #8]
	mov r7, r0
	cmp r2, r1
	ldreqsh r1, [sl, #6]
	ldreqsh r0, [sp, #0xa]
	cmpeq r1, r0
	movne r0, #1
	moveq r4, #1
	strne r0, [sp, #4]
	b _022F3DE0
_022F3D10:
	ldr r0, _022F3E9C ; =0x0237C694
	ldrh r0, [r0]
	tst r0, #0x100
	and r0, r0, #0xf0
	mov r0, r0, lsl #0x10
	movne r1, #1
	mov r0, r0, lsr #0x10
	strneb r1, [r6, #1]
	bne _022F3D4C
	mov r1, #0
	strb r1, [r6, #1]
	strh r1, [r6, #4]
	ldr r1, _022F3E9C ; =0x0237C694
	ldrh r1, [r1, #2]
	and r0, r0, r1
_022F3D4C:
	mov r7, r8
	cmp r0, #0x50
	moveq r7, #3
	cmp r0, #0x60
	moveq r7, #5
	cmp r0, #0x90
	moveq r7, #1
	cmp r0, #0xa0
	moveq r7, #7
	cmp r0, #0x40
	moveq r7, #4
	cmp r0, #0x80
	moveq r7, #0
	cmp r0, #0x10
	moveq r7, #2
	cmp r0, #0x20
	ldrb r0, [r6, #1]
	moveq r7, #6
	cmp r0, #0
	beq _022F3DB0
	cmp r7, #0
	blt _022F3DC0
	tst r7, #1
	bne _022F3DE0
	b _022F3DC0
_022F3DB0:
	cmp r7, #0
	blt _022F3DC0
	tst r7, #1
	beq _022F3DE0
_022F3DC0:
	ldr r0, _022F3E9C ; =0x0237C694
	ldrh r0, [r0, #2]
	tst r0, #2
	movne r4, #1
	bne _022F3DE0
	tst r0, #1
	beq _022F3C84
	mov fp, #1
_022F3DE0:
	bl ov29_0234FCA8
	cmp r0, #0
	beq _022F3DFC
	mov r0, #0x62
	bl AdvanceFrame
	mov r0, #0x62
	bl AdvanceFrame
_022F3DFC:
	cmp r4, #0
	bne _022F3E5C
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _022F3E28
	mvn r0, #0
	cmp r7, r0
	beq _022F3E24
	cmp fp, #0
	beq _022F3E28
_022F3E24:
	ldrb r7, [sb, #0x4c]
_022F3E28:
	and r1, r7, #7
	mov r0, sl
	strb r1, [sb, #0x4c]
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, sl
	mov r2, r7
	bl ov29_023049A8
	mov r0, #0x62
	bl AdvanceFrame
	mov r0, #1
	str r0, [sp]
	b _022F3E68
_022F3E5C:
	mov r0, #1
	strb r5, [sb, #0x4c]
	bl sub_02017CCC
_022F3E68:
	ldr r1, _022F3E90 ; =0x0237C9A4
	mov r0, #0
	strb r0, [r1, #1]
	strh r0, [r1, #4]
	bl ov29_0234B4CC
	bl ov29_022E0B44
	bl sub_02006B70
	ldr r0, [sp]
_022F3E88:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F3E90: .word 0x0237C9A4
_022F3E94: .word 0x00000BA8
_022F3E98: .word 0x0237C6A4
_022F3E9C: .word 0x0237C694
	arm_func_end ov29_022F3B98

	arm_func_start ov29_022F3EA0
ov29_022F3EA0: ; 0x022F3EA0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r5, r0
	mov sb, r1
	mov r4, r3
	cmp r2, #0x64
	mov r6, #0
	add r0, sp, #0
	bne _022F3ECC
	bl ov29_022E0C64
	b _022F3EE0
_022F3ECC:
	cmp r2, #0x65
	bne _022F3EDC
	bl ov29_022E0C80
	b _022F3EE0
_022F3EDC:
	bl ov29_022E0C9C
_022F3EE0:
	ldr r1, _022F40AC ; =0x02353538
	ldr r0, _022F40B0 ; =0x0001A224
	ldr r7, [r1]
	ldr r2, [sp]
	ldrsh r0, [r7, r0]
	mov r1, #0x18
	add r0, r2, r0
	bl DivideInt
	ldr r1, _022F40B4 ; =0x0001A226
	ldr r3, [sp, #4]
	ldrsh r2, [r7, r1]
	mov r7, r0
	mov r1, #0x18
	add r0, r3, r2
	bl DivideInt
	mov r8, r0
	strh r7, [sb]
	strh r8, [sb, #2]
	ldrsh r1, [sb]
	ldrsh r0, [r5, #4]
	sub r0, r1, r0
	bl Abs
	cmp r0, #2
	ble _022F3F58
	ldrsh r1, [sb, #2]
	ldrsh r0, [r5, #6]
	sub r0, r1, r0
	bl Abs
	cmp r0, #2
	bgt _022F3F5C
_022F3F58:
	mov r6, #1
_022F3F5C:
	mov r0, sb
	bl ov29_022E2CA0
	cmp r0, #0
	cmpeq r6, #0
	beq _022F40A0
	ldrsh r0, [r5, #4]
	mvn r6, #0
	cmp r0, r7
	ldreqsh r1, [r5, #6]
	cmpeq r1, r8
	moveq r6, #0
	cmp r0, r7
	bne _022F3F9C
	ldrsh r1, [r5, #6]
	cmp r1, r8
	movlt r6, #0
_022F3F9C:
	cmp r0, r7
	ldrltsh r1, [r5, #6]
	cmplt r1, r8
	movlt r6, #1
	cmp r0, r7
	bge _022F3FC0
	ldrsh r1, [r5, #6]
	cmp r1, r8
	moveq r6, #2
_022F3FC0:
	cmp r0, r7
	bge _022F3FD4
	ldrsh r1, [r5, #6]
	cmp r1, r8
	movgt r6, #3
_022F3FD4:
	cmp r0, r7
	bne _022F3FE8
	ldrsh r1, [r5, #6]
	cmp r1, r8
	movgt r6, #4
_022F3FE8:
	cmp r0, r7
	ldrgtsh r1, [r5, #6]
	cmpgt r1, r8
	movgt r6, #5
	cmp r0, r7
	ble _022F400C
	ldrsh r1, [r5, #6]
	cmp r1, r8
	moveq r6, #6
_022F400C:
	cmp r0, r7
	ble _022F4020
	ldrsh r0, [r5, #6]
	cmp r0, r8
	movlt r6, #7
_022F4020:
	cmp r6, #0
	movlt r0, r6
	blt _022F40A4
	cmp r4, #0
	beq _022F4098
	mov r0, r5
	mov r1, r6
	bl ov29_02301158
	cmp r0, #0
	movne r0, r6
	bne _022F40A4
	tst r6, #1
	moveq r0, r6
	beq _022F40A4
	sub r1, r6, #1
	mov r0, r5
	and r1, r1, #7
	bl ov29_02301158
	cmp r0, #0
	subne r0, r6, #1
	andne r0, r0, #7
	bne _022F40A4
	add r1, r6, #1
	mov r0, r5
	and r1, r1, #7
	bl ov29_02301158
	cmp r0, #0
	addne r0, r6, #1
	andne r0, r0, #7
	bne _022F40A4
_022F4098:
	mov r0, r6
	b _022F40A4
_022F40A0:
	mvn r0, #0
_022F40A4:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022F40AC: .word 0x02353538
_022F40B0: .word 0x0001A224
_022F40B4: .word 0x0001A226
	arm_func_end ov29_022F3EA0

	arm_func_start ov29_022F40B8
ov29_022F40B8: ; 0x022F40B8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sb, r1
	ldrsh r2, [sb]
	mov sl, r0
	cmp r2, #0
	movlt r0, #0
	blt _022F425C
	ldrsh r0, [sb, #2]
	cmp r0, #0
	movlt r0, #0
	blt _022F425C
	add r0, sl, #4
	bl GetDirectionTowardsPosition
	mov r5, r0
	mov r0, sl
	mov r1, r5
	bl ov29_02301158
	cmp r0, #0
	movne r0, r5
	bne _022F425C
	tst r5, #1
	beq _022F4218
	ldrsh r1, [sl, #4]
	ldrsh r0, [sb]
	sub r0, r1, r0
	bl Abs
	ldrsh r2, [sl, #6]
	ldrsh r1, [sb, #2]
	mov r6, r0
	sub r0, r2, r1
	bl Abs
	mov r7, r0
	cmp r6, r7
	movgt r1, #1
	ldr r0, _022F4264 ; =0x023526C8
	movle r1, #0
	add r0, r0, r1, lsl #3
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _022F4178
	sub r1, r5, #1
	add r0, r5, #1
	and r1, r1, #7
	and r0, r0, #7
	str r1, [sp]
	str r0, [sp, #4]
	b _022F4190
_022F4178:
	add r1, r5, #1
	sub r0, r5, #1
	and r1, r1, #7
	and r0, r0, #7
	str r1, [sp]
	str r0, [sp, #4]
_022F4190:
	mov r4, #0
	b _022F420C
_022F4198:
	add r0, sp, #0
	ldr r8, [r0, r4, lsl #2]
	ldr r0, _022F4268 ; =0x0235171C
	mov r1, r8, lsl #2
	ldrsh r1, [r0, r1]
	ldrsh r2, [sl, #4]
	ldrsh r0, [sb]
	add r1, r2, r1
	sub r0, r1, r0
	bl Abs
	ldr r1, _022F4268 ; =0x0235171C
	ldrsh r3, [sl, #6]
	add r1, r1, r8, lsl #2
	ldrsh r2, [r1, #2]
	mov fp, r0
	ldrsh r1, [sb, #2]
	add r0, r3, r2
	sub r0, r0, r1
	bl Abs
	cmp fp, r6
	cmple r0, r7
	bgt _022F4208
	mov r0, sl
	mov r1, r8
	bl ov29_02301158
	cmp r0, #0
	movne r0, r8
	bne _022F425C
_022F4208:
	add r4, r4, #1
_022F420C:
	cmp r4, #2
	blt _022F4198
	b _022F4258
_022F4218:
	sub r1, r5, #1
	mov r0, sl
	and r1, r1, #7
	bl ov29_02301158
	cmp r0, #0
	subne r0, r5, #1
	andne r0, r0, #7
	bne _022F425C
	add r1, r5, #1
	mov r0, sl
	and r1, r1, #7
	bl ov29_02301158
	cmp r0, #0
	addne r0, r5, #1
	andne r0, r0, #7
	bne _022F425C
_022F4258:
	mov r0, r5
_022F425C:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F4264: .word 0x023526C8
_022F4268: .word 0x0235171C
	arm_func_end ov29_022F40B8

	arm_func_start ov29_022F426C
ov29_022F426C: ; 0x022F426C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	bl GetTileSafe
	ldr r1, _022F42D4 ; =0x02353538
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x23e]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl ov29_022FF958
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022F42D4: .word 0x02353538
	arm_func_end ov29_022F426C

	arm_func_start ov29_022F42D8
ov29_022F42D8: ; 0x022F42D8
	stmdb sp!, {r3, lr}
	bl GetHero
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldrsh r0, [r0, #4]
	bl GetMonsterGenderVeneer
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022F42D8

	arm_func_start ov29_022F42F8
ov29_022F42F8: ; 0x022F42F8
	cmp r0, #0
	moveq r1, #0
	beq _022F4318
	ldr r1, [r0]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	and r1, r1, #0xff
_022F4318:
	cmp r1, #0
	ldrne r0, [r0, #0xb4]
	ldrneb r0, [r0, #7]
	cmpne r0, #0
	bxeq lr
	ldr r0, _022F434C ; =0x02353538
	mov r3, #0
	ldr r2, [r0]
	sub r1, r3, #1
	strb r3, [r2, #5]
	ldr r0, [r0]
	str r1, [r0, #0x614]
	bx lr
	.align 2, 0
_022F434C: .word 0x02353538
	arm_func_end ov29_022F42F8

	arm_func_start ov29_022F4350
ov29_022F4350: ; 0x022F4350
	ldr r2, [r0, #0xb4]
	mov r3, #1
	ldr ip, _022F436C ; =ov29_02345058
	add r0, r0, #4
	mov r1, #0
	strb r3, [r2, #0x4e]
	bx ip
	.align 2, 0
_022F436C: .word ov29_02345058
	arm_func_end ov29_022F4350

	arm_func_start ov29_022F4370
ov29_022F4370: ; 0x022F4370
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, r1
	mov r1, #0
	mov r2, #0xfe
	mov r6, r0
	bl ov29_022EB54C
	mov sb, #0
	mov lr, #1
	mov r4, r0
	mov ip, sb
	mov fp, sb
	mov r2, lr
	ldr r1, _022F44D4 ; =0x020AF6B8
	mov r0, #6
	b _022F441C
_022F43AC:
	mul r7, sb, r0
	ldr r3, [r1]
	ldr r8, [r3, #0x384]
	ldrb sl, [r8, r7]
	tst sl, #1
	movne r3, lr
	moveq r3, ip
	tst r3, #0xff
	beq _022F4418
	ldrb r3, [r8, r7]
	tst r3, #0x10
	beq _022F4418
	tst sl, #8
	movne r3, r2
	moveq r3, fp
	tst r3, #0xff
	beq _022F440C
	add r1, r8, r7
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F44D8 ; =0x00000BA9
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022F440C:
	ldrb r3, [r8, r7]
	bic r3, r3, #0x10
	strb r3, [r8, r7]
_022F4418:
	add sb, sb, #1
_022F441C:
	cmp sb, #0x32
	blt _022F43AC
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	ldr r0, _022F44DC ; =0x00003F07
	bl ov29_022EACCC
	cmp r5, #0
	beq _022F4494
	ldrb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4468
	ldr r1, _022F44E0 ; =0x00000BAA
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	b _022F4494
_022F4468:
	ldrsh r0, [r4, #4]
	bl GetItemCategoryVeneer
	cmp r0, #0
	bne _022F4488
	ldr r1, _022F44E4 ; =0x00000BAB
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	b _022F4494
_022F4488:
	ldr r1, _022F44E8 ; =0x00000BAC
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
_022F4494:
	ldrb r0, [r4]
	orr r0, r0, #0x10
	strb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	cmpne r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F44EC ; =0x00000BAE
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F44D4: .word 0x020AF6B8
_022F44D8: .word 0x00000BA9
_022F44DC: .word 0x00003F07
_022F44E0: .word 0x00000BAA
_022F44E4: .word 0x00000BAB
_022F44E8: .word 0x00000BAC
_022F44EC: .word 0x00000BAE
	arm_func_end ov29_022F4370

	arm_func_start ov29_022F44F0
ov29_022F44F0: ; 0x022F44F0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #0
	mov r7, #1
	mov sl, r0
	mov sb, r1
	mov r6, r8
	mov fp, r7
	ldr r5, _022F45BC ; =0x020AF6B8
	mov r4, #6
	b _022F45B0
_022F4518:
	mul r2, r8, r4
	ldr r0, [r5]
	ldr r3, [r0, #0x384]
	ldrb r1, [r3, r2]
	tst r1, #1
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	beq _022F45AC
	ldrb r0, [r3, r2]
	tst r0, #0x10
	beq _022F45AC
	tst r1, #8
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	beq _022F4578
	add r1, r3, r2
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F45C0 ; =0x00000BA9
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022F4578:
	ldrb ip, [r3, r2]
	mov r0, #0
	add r1, r3, r2
	bic ip, ip, #0x10
	strb ip, [r3, r2]
	bl ov29_02344B44
	ldr r0, _022F45C4 ; =0x00003F07
	bl ov29_022EACCC
	cmp sb, #0
	beq _022F45AC
	ldr r1, _022F45C8 ; =0x00000BAD
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
_022F45AC:
	add r8, r8, #1
_022F45B0:
	cmp r8, #0x32
	blt _022F4518
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F45BC: .word 0x020AF6B8
_022F45C0: .word 0x00000BA9
_022F45C4: .word 0x00003F07
_022F45C8: .word 0x00000BAD
	arm_func_end ov29_022F44F0

	arm_func_start ov29_022F45CC
ov29_022F45CC: ; 0x022F45CC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x14
	mov sl, r0
	mov r1, #1
	bl ov29_022EB568
	mov r4, r0
	ldr r8, [sl, #0xb4]
	mov r0, sl
	mov r1, #0
	mov r2, #2
	ldr sb, [r4, #0xb4]
	bl ov29_022EB54C
	ldrb r1, [r8, #0x4e]
	mov r5, r0
	mov r0, r5
	cmp r1, #0x80
	moveq r1, #1
	movne r1, #0
	and r6, r1, #0xff
	bl GetItemIndex
	mov r7, r0
	cmp r6, #0
	bne _022F4668
	ldrb r0, [r5]
	tst r0, #0x10
	beq _022F4668
	ldrb r0, [r5]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4668
	mov r1, r5
	mov r0, #1
	bl ov29_02344B44
	mov r0, sl
	mov r1, #0xbb0
	bl LogMessageByIdWithPopupCheckUser
	b _022F48B8
_022F4668:
	mov r1, r4
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [sb, #0x62]
	tst r0, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	beq _022F47CC
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F46C0
	add r1, sb, #0x62
	mov r0, #1
	bl ov29_02344B44
	ldr r1, _022F48C0 ; =0x00000BAF
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022F48B8
_022F46C0:
	ldrh r0, [sb, #0x62]
	cmp r6, #0
	add r1, sp, #0xc
	strh r0, [sp, #0xc]
	ldrh r2, [sb, #0x64]
	ldrb r0, [sp, #0xc]
	ldrb r3, [sp, #0xd]
	strh r2, [sp, #0xe]
	ldrh r6, [sb, #0x66]
	bic r2, r0, #0x10
	strh r6, [sp, #0x10]
	ldrh r0, [r5]
	strh r0, [sp, #6]
	ldrh r6, [r5, #2]
	ldrb r0, [sp, #6]
	strh r6, [sp, #8]
	ldrh r5, [r5, #4]
	bic r0, r0, #0x10
	strh r5, [sp, #0xa]
	strb r3, [sp, #7]
	strb r2, [sp, #0xc]
	strb r0, [sp, #6]
	beq _022F472C
	add r0, sl, #4
	mov r2, #1
	bl ov29_02345538
	b _022F4734
_022F472C:
	mov r0, r1
	bl sub_0200FB54
_022F4734:
	ldrh r0, [sp, #6]
	cmp r7, #0
	strh r0, [sb, #0x62]
	ldrh r0, [sp, #8]
	strh r0, [sb, #0x64]
	ldrh r0, [sp, #0xa]
	strh r0, [sb, #0x66]
	blt _022F4770
	ldrb r0, [r8, #0x54]
	bl ov29_022EB594
	mov r2, r0
	add r1, sp, #6
	mov r0, r7
	bl sub_0200FBE0
	b _022F4778
_022F4770:
	mov r0, sb
	bl ov29_02346F14
_022F4778:
	add r1, sp, #6
	mov r0, #0
	bl ov29_02344B44
	add r1, sp, #0xc
	mov r0, #1
	bl ov29_02344B44
	ldr r0, _022F48C4 ; =0x00001317
	bl ov29_022EACCC
	ldr r1, _022F48C8 ; =0x00000BB2
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	ldrb r0, [sp, #6]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4878
	ldr r1, _022F48CC ; =0x00000BAE
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022F4878
_022F47CC:
	ldrh r0, [r5]
	cmp r7, #0
	strh r0, [sp]
	ldrh r1, [r5, #2]
	ldrb r0, [sp]
	strh r1, [sp, #2]
	ldrh r1, [r5, #4]
	bic r0, r0, #0x10
	strb r0, [sp]
	ldrh r0, [sp]
	strh r1, [sp, #4]
	strh r0, [sb, #0x62]
	ldrh r0, [sp, #2]
	strh r0, [sb, #0x64]
	ldrh r0, [sp, #4]
	strh r0, [sb, #0x66]
	blt _022F482C
	ldrb r0, [r8, #0x54]
	bl ov29_022EB594
	mov r2, r0
	mov r0, r7
	add r1, sb, #0x62
	bl sub_0200FBE0
	b _022F4834
_022F482C:
	mov r0, sb
	bl ov29_02346F14
_022F4834:
	add r1, sp, #0
	mov r0, #0
	bl ov29_02344B44
	ldr r0, _022F48C4 ; =0x00001317
	bl ov29_022EACCC
	ldr r1, _022F48D0 ; =0x00000BB3
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	ldrb r0, [sp]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4878
	ldr r1, _022F48CC ; =0x00000BAE
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
_022F4878:
	mov r0, r4
	bl ov29_022F9EA0
	mov r0, sl
	mov r1, r4
	bl ov29_02321164
	ldrb r0, [sb, #7]
	ldr r1, _022F48D4 ; =0x02353538
	cmp r0, #0
	ldreqh r0, [sb]
	orreq r0, r0, #0x4000
	streqh r0, [sb]
	ldr r1, [r1]
	mov r0, sl
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
_022F48B8:
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022F48C0: .word 0x00000BAF
_022F48C4: .word 0x00001317
_022F48C8: .word 0x00000BB2
_022F48CC: .word 0x00000BAE
_022F48D0: .word 0x00000BB3
_022F48D4: .word 0x02353538
	arm_func_end ov29_022F45CC

	arm_func_start ov29_022F48D8
ov29_022F48D8: ; 0x022F48D8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r1, #0
	mov r6, r0
	bl ov29_022EB568
	mov r4, r0
	ldr r5, [r4, #0xb4]
	ldrb r0, [r5, #0x62]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	mov r0, #0
	beq _022F4928
	add r1, r5, #0x62
	bl ov29_02344B44
	ldr r1, _022F49D0 ; =0x00000BAE
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	b _022F49C8
_022F4928:
	ldrh r2, [r5, #0x62]
	add r1, sp, #0
	strh r2, [sp]
	ldrh r3, [r5, #0x64]
	ldrb r2, [sp]
	strh r3, [sp, #2]
	ldrh r3, [r5, #0x66]
	bic r2, r2, #0x10
	strh r3, [sp, #4]
	strb r2, [sp]
	bl ov29_02344B44
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	add r0, r5, #0x62
	bl ItemZInit
	add r0, sp, #0
	bl sub_0200FB54
	ldr r0, _022F49D4 ; =0x00001317
	bl ov29_022EACCC
	ldr r1, _022F49D8 ; =0x00000BB5
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	mov r0, r4
	bl ov29_022F9EA0
	mov r1, r4
	mov r0, r6
	bl ov29_02321164
	ldrb r0, [r5, #7]
	ldr r1, _022F49DC ; =0x02353538
	cmp r0, #0
	ldreqh r0, [r5]
	orreq r0, r0, #0x4000
	streqh r0, [r5]
	ldr r1, [r1]
	mov r0, r6
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
_022F49C8:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022F49D0: .word 0x00000BAE
_022F49D4: .word 0x00001317
_022F49D8: .word 0x00000BB5
_022F49DC: .word 0x02353538
	arm_func_end ov29_022F48D8

	arm_func_start ov29_022F49E0
ov29_022F49E0: ; 0x022F49E0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r1, #0
	mov r7, r0
	bl ov29_022EB568
	mov r4, r0
	ldr r5, [r4, #0xb4]
	ldr r2, _022F4BC8 ; =0x00001565
	mov r0, r7
	mov r1, #1
	bl ov29_022EB54C
	ldrb r1, [r5, #0x62]
	mov r6, r0
	tst r1, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4A44
	add r1, r5, #0x62
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F4BCC ; =0x00000BAE
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _022F4BC0
_022F4A44:
	ldrb r0, [r6]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4A84
	ldrb r0, [r6]
	tst r0, #0x10
	beq _022F4A84
	mov r1, r6
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F4BCC ; =0x00000BAE
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _022F4BC0
_022F4A84:
	ldrb r2, [r5, #0x62]
	add r1, r5, #0x62
	mov r0, #0
	bic r2, r2, #0x10
	strb r2, [r5, #0x62]
	ldrb r2, [r6]
	bic r2, r2, #0x10
	strb r2, [r6]
	bl ov29_02344B44
	mov r1, r6
	mov r0, #1
	bl ov29_02344B44
	mov r1, r4
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldrh r3, [r5, #0x62]
	ldrh r2, [r5, #0x64]
	ldrh r1, [r5, #0x66]
	ldrb r0, [r5, #6]
	strh r3, [sp]
	strh r2, [sp, #2]
	strh r1, [sp, #4]
	cmp r0, #0
	bne _022F4AF0
	add r0, r5, #0x62
	bl RemoveEquivItemNoHole
_022F4AF0:
	ldrh r0, [r6]
	strh r0, [r5, #0x62]
	ldrh r0, [r6, #2]
	strh r0, [r5, #0x64]
	ldrh r0, [r6, #4]
	strh r0, [r5, #0x66]
	ldrb r0, [r5, #6]
	cmp r0, #0
	movne r0, #0
	strneb r0, [r5, #0x63]
	bne _022F4B24
	mov r0, r5
	bl ov29_02346F14
_022F4B24:
	ldrh r2, [sp]
	ldrh r0, [sp, #2]
	ldrh r1, [sp, #4]
	strh r2, [r6]
	strh r0, [r6, #2]
	mov r0, r6
	strh r1, [r6, #4]
	bl ov29_02346FB8
	cmp r0, #0
	movlt r0, #0
	strltb r0, [r6, #1]
	blt _022F4B70
	ldr r2, _022F4BD0 ; =0x02353538
	add r1, r0, r0, lsl #3
	ldr r0, [r2]
	add r0, r0, #0x3f4
	add r0, r0, #0x400
	add r0, r0, r1, lsl #6
	bl ov29_02346F14
_022F4B70:
	bl ov29_02347030
	ldr r0, _022F4BD4 ; =0x00001317
	bl ov29_022EACCC
	ldr r1, _022F4BD8 ; =0x00000BB6
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, r7
	mov r1, r4
	bl ov29_02321164
	ldrb r0, [r5, #7]
	ldr r1, _022F4BD0 ; =0x02353538
	cmp r0, #0
	ldreqh r0, [r5]
	orreq r0, r0, #0x4000
	streqh r0, [r5]
	ldr r1, [r1]
	mov r0, r7
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
_022F4BC0:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F4BC8: .word 0x00001565
_022F4BCC: .word 0x00000BAE
_022F4BD0: .word 0x02353538
_022F4BD4: .word 0x00001317
_022F4BD8: .word 0x00000BB6
	arm_func_end ov29_022F49E0

	arm_func_start ov29_022F4BDC
ov29_022F4BDC: ; 0x022F4BDC
	stmdb sp!, {r3, lr}
	mov r1, #0
	bl ov29_022EB568
	ldr r0, [r0, #0xb4]
	mov r1, #1
	strb r1, [r0, #0x109]
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022F4BDC

	arm_func_start ov29_022F4BF8
ov29_022F4BF8: ; 0x022F4BF8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r1, #0
	mov r2, #4
	ldr r6, [r5, #0xb4]
	bl ov29_022EB54C
	mov r4, r0
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	ldrb r1, [r6, #0x4e]
	cmp r1, #0x80
	bne _022F4C3C
	ldr r1, _022F4D94 ; =0x00000BB7
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, pc}
_022F4C3C:
	cmp r1, #0x33
	bhs _022F4C78
	ldrb r0, [r4]
	tst r0, #0x10
	beq _022F4C78
	ldrb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4C78
	ldr r1, _022F4D98 ; =0x00000BAE
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, pc}
_022F4C78:
	cmp r1, #0x81
	bne _022F4CA8
	ldrb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4CA8
	ldr r1, _022F4D98 ; =0x00000BAE
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, pc}
_022F4CA8:
	ldrsh r0, [r5, #4]
	ldrsh r1, [r5, #6]
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x200
	beq _022F4CD0
	ldr r1, _022F4D9C ; =0x00000BB8
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, pc}
_022F4CD0:
	and r1, r1, #3
	cmp r1, #1
	beq _022F4CEC
	ldr r1, _022F4D9C ; =0x00000BB8
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, pc}
_022F4CEC:
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022F4D08
	ldr r1, _022F4D9C ; =0x00000BB8
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, pc}
_022F4D08:
	ldrb r2, [r4]
	mov r1, r4
	mov r0, #0
	bic r2, r2, #0x10
	strb r2, [r4]
	bl ov29_02344B44
	mov r1, r4
	add r0, r5, #4
	mov r2, #1
	bl ov29_02345538
	cmp r0, #0
	bne _022F4D48
	ldr r1, _022F4D9C ; =0x00000BB8
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, r5, r6, pc}
_022F4D48:
	mov r0, r4
	bl ItemZInit
	bl ov29_02347030
	ldr r0, _022F4DA0 ; =0x00001317
	bl ov29_022EACCC
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022F4DA4 ; =0x00000BB9
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, r5
	ldr r1, _022F4DA8 ; =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022F4D94: .word 0x00000BB7
_022F4D98: .word 0x00000BAE
_022F4D9C: .word 0x00000BB8
_022F4DA0: .word 0x00001317
_022F4DA4: .word 0x00000BB9
_022F4DA8: .word 0x02353538
	arm_func_end ov29_022F4BF8

	arm_func_start ov29_022F4DAC
ov29_022F4DAC: ; 0x022F4DAC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r0
	ldr r6, [r8, #0xb4]
	mov r1, #0
	mov r2, #5
	bl ov29_022EB54C
	mov r4, r0
	mov r0, r8
	mov r1, #1
	mov r2, #6
	bl ov29_022EB54C
	ldrb r1, [r6, #0x4e]
	mov r7, r0
	cmp r1, #0x80
	beq _022F4DFC
	ldr r1, _022F503C ; =0x00000BBA
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _022F5034
_022F4DFC:
	ldrb r1, [r6, #0x54]
	cmp r1, #0x33
	bhs _022F4E48
	ldrb r0, [r7]
	tst r0, #0x10
	beq _022F4E48
	ldrb r0, [r7]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4E48
	mov r1, r7
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F5040 ; =0x00000BAE
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _022F5034
_022F4E48:
	cmp r1, #0x81
	bne _022F4E84
	ldrb r0, [r7]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4E84
	mov r1, r7
	mov r0, #1
	bl ov29_02344B44
	ldr r1, _022F5044 ; =0x00000BB1
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _022F5034
_022F4E84:
	ldrsh r0, [r8, #4]
	ldrsh r1, [r8, #6]
	bl GetTile
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #3
	beq _022F4EB4
	ldr r1, _022F5048 ; =0x00000BBB
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _022F5034
_022F4EB4:
	mov r0, r4
	bl ov29_02348D3C
	ldrh r1, [r4]
	mov r5, r0
	add r0, r6, #0x50
	strh r1, [sp]
	ldrh r2, [r4, #2]
	ldrb r1, [sp]
	mov ip, #0
	strh r2, [sp, #2]
	ldrh r2, [r4, #4]
	bic r3, r1, #0x10
	mov r1, #1
	strh r2, [sp, #4]
	ldrh r2, [r7]
	strh r2, [sp, #6]
	ldrh lr, [r7, #2]
	ldrb r2, [sp, #6]
	ldrb r4, [sp, #7]
	strh lr, [sp, #8]
	ldrh lr, [r7, #4]
	bic r2, r2, #0x10
	strh lr, [sp, #0xa]
	strb ip, [sp, #7]
	strb r3, [sp]
	strb r2, [sp, #6]
	bl ov29_023456BC
	mov r0, r7
	bl RemoveEquivItemNoHole
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _022F4F3C
	mov r0, r7
	bl ItemZInit
_022F4F3C:
	add r1, sp, #6
	add r0, r6, #0x50
	mov r2, #1
	bl ov29_02345538
	cmp r0, #0
	bne _022F4F68
	ldr r1, _022F504C ; =0x00000BBC
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	bl ov29_02347030
	b _022F5034
_022F4F68:
	strb r4, [sp, #1]
	ldrb r0, [r6, #0x54]
	cmp r0, #0x81
	bne _022F4F94
	ldrh r0, [sp]
	strh r0, [r6, #0x62]
	ldrh r0, [sp, #2]
	strh r0, [r6, #0x64]
	ldrh r0, [sp, #4]
	strh r0, [r6, #0x66]
	b _022F4FDC
_022F4F94:
	mov r0, r7
	bl ov29_02346FB8
	cmp r0, #0
	blt _022F4FD0
	ldr r1, _022F5050 ; =0x02353538
	add r0, r0, r0, lsl #3
	ldr r2, [r1]
	ldrh r1, [sp]
	add r0, r2, r0, lsl #6
	add r0, r0, #0x800
	strh r1, [r0, #0x56]
	ldrh r1, [sp, #2]
	strh r1, [r0, #0x58]
	ldrh r1, [sp, #4]
	strh r1, [r0, #0x5a]
_022F4FD0:
	add r0, sp, #0
	mov r1, r4
	bl AddItemToBag
_022F4FDC:
	bl ov29_02347030
	add r1, sp, #6
	mov r0, #0
	bl ov29_02344B44
	add r1, sp, #0
	mov r0, #1
	bl ov29_02344B44
	ldr r0, _022F5054 ; =0x00001317
	bl ov29_022EACCC
	ldr r1, _022F5058 ; =0x00000BBD
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	ldr r1, _022F5050 ; =0x02353538
	mov r0, r8
	ldr r1, [r1]
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
	add r0, sp, #0
	mov r1, r5
	bl ov29_02348ECC
	cmp r0, #0
_022F5034:
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022F503C: .word 0x00000BBA
_022F5040: .word 0x00000BAE
_022F5044: .word 0x00000BB1
_022F5048: .word 0x00000BBB
_022F504C: .word 0x00000BBC
_022F5050: .word 0x02353538
_022F5054: .word 0x00001317
_022F5058: .word 0x00000BBD
	arm_func_end ov29_022F4DAC

	arm_func_start ov29_022F505C
ov29_022F505C: ; 0x022F505C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldrsh r0, [r7, #4]
	ldrsh r1, [r7, #6]
	ldr r5, [r7, #0xb4]
	bl GetTile
	mov r4, r0
	mov r0, r7
	mov r1, #0
	mov r2, #7
	bl ov29_022EB54C
	mov r6, r0
	mov r1, r6
	mov r0, #0
	bl ov29_02344B44
	ldrb r1, [r5, #0x4e]
	cmp r1, #0x33
	bhs _022F50E8
	ldrb r0, [r6]
	tst r0, #0x10
	beq _022F50E8
	ldrb r0, [r6]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F50E8
	mov r1, r6
	mov r0, #1
	bl ov29_02344B44
	ldr r1, _022F5274 ; =0x00000BB1
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _022F526C
_022F50E8:
	cmp r1, #0x81
	bne _022F5118
	ldrb r0, [r6]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F5118
	mov r0, r7
	mov r1, #0xbb0
	bl LogMessageByIdWithPopupCheckUser
	b _022F526C
_022F5118:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #3
	beq _022F513C
	ldr r1, _022F5278 ; =0x00000BBB
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _022F526C
_022F513C:
	bl ov29_022E1610
	mov r4, r0
	mov r1, r4
	mov r0, #1
	bl ov29_02344B44
	ldrh r2, [r6]
	add r0, r7, #4
	mov r1, #1
	strh r2, [sp]
	ldrh r3, [r6, #2]
	ldrb r2, [sp]
	strh r3, [sp, #2]
	ldrh ip, [r6, #4]
	bic r3, r2, #0x10
	strh ip, [sp, #4]
	ldrh r2, [r4]
	strh r2, [sp, #6]
	ldrh ip, [r4, #2]
	ldrb r2, [sp, #6]
	strh ip, [sp, #8]
	ldrh r4, [r4, #4]
	bic r2, r2, #0x10
	strh r4, [sp, #0xa]
	strb r3, [sp]
	strb r2, [sp, #6]
	bl ov29_023456BC
	mov r0, r6
	bl RemoveEquivItemNoHole
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _022F51C0
	mov r0, r6
	bl ItemZInit
_022F51C0:
	add r1, sp, #0
	add r0, r7, #4
	mov r2, #1
	bl ov29_02345538
	cmp r0, #0
	bne _022F51EC
	ldr r1, _022F527C ; =0x00000BBC
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	bl ov29_02347030
	b _022F526C
_022F51EC:
	add r0, sp, #6
	bl ov29_02348D3C
	ldrb r1, [r5, #0x4e]
	mov r4, r0
	add r0, sp, #6
	cmp r1, #0x81
	bne _022F5228
	ldrh r1, [sp, #6]
	strh r1, [r5, #0x62]
	ldrh r1, [sp, #8]
	strh r1, [r5, #0x64]
	ldrh r1, [sp, #0xa]
	strh r1, [r5, #0x66]
	bl AddItemToBagNoHeld
	b _022F522C
_022F5228:
	bl AddItemToBagNoHeld
_022F522C:
	bl ov29_02347030
	ldr r0, _022F5280 ; =0x00001317
	bl ov29_022EACCC
	ldr r1, _022F5284 ; =0x00000BBD
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	ldr r1, _022F5288 ; =0x02353538
	mov r0, r7
	ldr r1, [r1]
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
	add r0, sp, #6
	mov r1, r4
	bl ov29_02348ECC
	cmp r0, #0
_022F526C:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_022F5274: .word 0x00000BB1
_022F5278: .word 0x00000BBB
_022F527C: .word 0x00000BBC
_022F5280: .word 0x00001317
_022F5284: .word 0x00000BBD
_022F5288: .word 0x02353538
	arm_func_end ov29_022F505C

	arm_func_start EntityIsValid__022F528C
EntityIsValid__022F528C: ; 0x022F528C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__022F528C

	arm_func_start ov29_022F52B0
ov29_022F52B0: ; 0x022F52B0
	ldr ip, _022F52B8 ; =ov29_02343D30
	bx ip
	.align 2, 0
_022F52B8: .word ov29_02343D30
	arm_func_end ov29_022F52B0

	arm_func_start ov29_022F52BC
ov29_022F52BC: ; 0x022F52BC
	ldr ip, _022F52C8 ; =ov29_022F52F8
	mov r1, r0
	bx ip
	.align 2, 0
_022F52C8: .word ov29_022F52F8
	arm_func_end ov29_022F52BC

	arm_func_start ov29_022F52CC
ov29_022F52CC: ; 0x022F52CC
	ldr r2, [r0, #0xb4]
	ldr r1, _022F52F0 ; =0x02353538
	ldrb r2, [r2, #0x54]
	ldr r1, [r1]
	ldr ip, _022F52F4 ; =ov29_022F52F8
	add r1, r1, r2, lsl #2
	add r1, r1, #0x12000
	ldr r1, [r1, #0xb28]
	bx ip
	.align 2, 0
_022F52F0: .word 0x02353538
_022F52F4: .word ov29_022F52F8
	arm_func_end ov29_022F52CC

	arm_func_start ov29_022F52F8
ov29_022F52F8: ; 0x022F52F8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov r8, r1
	mov sb, r0
	mov r0, r8
	ldr r5, [r8, #0xb4]
	bl ov29_023186CC
	cmp r0, #0
	beq _022F5334
	mov r0, r8
	bl ov29_02318700
	mov r0, #0x14
	mov r1, #9
	bl ov29_022EA370
	b _022F54B0
_022F5334:
	mov r0, sb
	bl ov29_022F3B8C
	mov r0, sb
	mov r1, #0
	mov r2, #8
	bl ov29_022EB54C
	mov r4, r0
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	bl ov29_0234B034
	mov r2, r5
	mov r1, #0
	str r1, [sp]
	mov r3, r1
	bl ov29_0230040C
	mov r0, r8
	mov r1, r4
	bl ov29_0231D4A4
	cmp r0, #0
	beq _022F54B0
	mov r0, r4
	bl ov29_022EB378
	mov r1, r0
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	ldrh r2, [r4]
	mov r0, sb
	mov r1, #0
	strh r2, [sp, #8]
	ldrh r3, [r4, #2]
	mov r2, #0x66
	strh r3, [sp, #0xa]
	ldrh r3, [r4, #4]
	strh r3, [sp, #0xc]
	bl ov29_022EB60C
	mov r0, #0x1e
	mov r1, #0x11
	bl ov29_022EA370
	mov r0, #0
	str r8, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	mov r1, r0
	mov r2, r0
	mov r3, r8
	bl ApplyItemEffect
	mov r0, r8
	bl EntityIsValid__022F528C
	cmp r0, #0
	ldrne r0, [r8, #0xb4]
	ldrneb r0, [r0, #7]
	cmpne r0, #0
	beq _022F5498
	mov r0, r8
	mov r1, #0x33
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022F5498
	ldrsh r0, [sp, #0xc]
	bl ov29_02347000
	cmp r0, #0
	beq _022F5498
	mov r7, #0
	ldr r4, _022F54B8 ; =0x02353538
	add r6, sp, #8
	mov r5, r7
_022F5440:
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb28]
	cmp sl, r8
	beq _022F5484
	mov r0, sl
	bl EntityIsValid__022F528C
	cmp r0, #0
	beq _022F5484
	str sl, [sp]
	mov r0, r5
	mov r1, r5
	mov r2, r5
	mov r3, r8
	str r6, [sp, #4]
	bl ApplyItemEffect
_022F5484:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #4
	blt _022F5440
_022F5498:
	ldr r1, _022F54B8 ; =0x02353538
	mov r0, sb
	ldr r1, [r1]
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
_022F54B0:
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022F54B8: .word 0x02353538
	arm_func_end ov29_022F52F8

	arm_func_start ov29_022F54BC
ov29_022F54BC: ; 0x022F54BC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x14
	mov sb, r0
	ldr r8, [sb, #0xb4]
	bl ov29_022F3B8C
	mov r0, sb
	mov r1, #0
	mov r2, #9
	bl ov29_022EB54C
	mov r4, r0
	mov r0, sb
	bl ov29_023186CC
	cmp r0, #0
	beq _022F550C
	mov r0, sb
	bl ov29_02318700
	mov r0, #0x14
	mov r1, #9
	bl ov29_022EA370
	b _022F5978
_022F550C:
	ldrb r0, [r8, #0x4e]
	cmp r0, #0x81
	bne _022F5558
	ldrb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F5558
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F5980 ; =0x00000BAE
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #0x14
	mov r1, #0x4c
	bl ov29_022EA370
	b _022F5978
_022F5558:
	ldrsh r0, [r4, #4]
	bl GetItemCategoryVeneer
	cmp r0, #0
	beq _022F5578
	ldrsh r0, [r4, #4]
	bl GetItemCategoryVeneer
	cmp r0, #1
	bne _022F55B8
_022F5578:
	ldrb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F55B8
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F5980 ; =0x00000BAE
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #0x14
	mov r1, #0x4c
	bl ov29_022EA370
	b _022F5978
_022F55B8:
	mov r0, sb
	mov r1, #1
	bl ShouldMonsterRunAwayVariation
	cmp r0, #0
	beq _022F55E8
	ldr r1, _022F5984 ; =0x00000BBE
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #0x14
	mov r1, #0x4c
	bl ov29_022EA370
	b _022F5978
_022F55E8:
	ldrh r0, [r4]
	mov r2, #0
	add r1, sp, #0xc
	strh r0, [sp, #0xc]
	ldrh r5, [r4, #2]
	ldrb r3, [sp, #0xc]
	mov r0, sb
	strh r5, [sp, #0xe]
	ldrh r5, [r4, #4]
	bic r3, r3, #0x10
	strh r5, [sp, #0x10]
	strb r3, [sp, #0xc]
	strb r2, [sp, #0xd]
	bl ov29_0230F9A4
	ldrb r0, [r8, #0x4e]
	cmp r0, #0x80
	bne _022F563C
	add r0, r8, #0x50
	mov r1, #1
	mov r4, #0
	bl ov29_023456BC
_022F563C:
	ldrsh r0, [sp, #0x10]
	mov r5, #1
	bl GetItemCategoryVeneer
	cmp r0, #0
	beq _022F5660
	ldrsh r0, [sp, #0x10]
	bl GetItemCategoryVeneer
	cmp r0, #1
	bne _022F566C
_022F5660:
	ldrh r0, [sp, #0xe]
	cmp r0, #1
	movhi r5, #0
_022F566C:
	cmp r5, #0
	ldrb r0, [r8, #0x4e]
	beq _022F56A8
	cmp r0, #0x80
	beq _022F56F4
	mov r0, r4
	bl ov29_02346FB8
	cmp r0, #0
	blt _022F5698
	mov r0, r4
	bl RemoveEquivItemNoHole
_022F5698:
	mov r0, r4
	bl ItemZInit
	bl ov29_02347030
	b _022F56F4
_022F56A8:
	cmp r0, #0x80
	bne _022F56D0
	ldrh r2, [sp, #0xe]
	add r1, sp, #0xc
	add r0, r8, #0x50
	sub r3, r2, #1
	mov r2, #1
	strh r3, [sp, #0xe]
	bl ov29_02345538
	b _022F56F4
_022F56D0:
	mov r0, r4
	bl ov29_02346FB8
	cmp r0, #0
	blt _022F56E8
	mov r0, r4
	bl DecrementStackItem
_022F56E8:
	ldrh r0, [r4, #2]
	sub r0, r0, #1
	strh r0, [r4, #2]
_022F56F4:
	mov r0, sb
	mov r1, #0x30
	bl ItemIsActive__022F5994
	cmp r0, #0
	beq _022F5714
	mov r0, #8
	bl DungeonRandInt
	strb r0, [r8, #0x4c]
_022F5714:
	mov r0, sb
	bl ov29_022E272C
	cmp r0, #0
	beq _022F577C
	ldr r1, _022F5988 ; =0x00000103
	mov r0, sb
	ldrb r7, [r8, #0x4c]
	bl ov29_022E56A0
	mov r6, #0
	mov r5, r6
	mov r4, #2
	mov sl, #0x15
_022F5744:
	sub r0, r7, #1
	and r7, r0, #7
	mov r0, sb
	mov r1, r5
	mov r2, r7
	bl ov29_023049A8
	mov r0, r4
	mov r1, sl
	bl ov29_022EA370
	add r6, r6, #1
	cmp r6, #8
	blt _022F5744
	mov r0, #4
	strb r0, [r8, #0x179]
_022F577C:
	ldrsh r0, [sp, #0x10]
	bl GetItemCategoryVeneer
	cmp r0, #0
	beq _022F579C
	ldrsh r0, [sp, #0x10]
	bl GetItemCategoryVeneer
	cmp r0, #1
	bne _022F57A4
_022F579C:
	mov r0, #1
	strh r0, [sp, #0xe]
_022F57A4:
	add r1, sp, #0xc
	mov r0, #0
	bl ov29_02344B70
	bl ov29_0234B034
	mov r1, #0
	mov r2, r8
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	ldrsh r0, [sp, #0x10]
	bl GetItemCategoryVeneer
	cmp r0, #0
	bne _022F57E8
	mov r0, sb
	mov r1, #0xbc0
	bl LogMessageByIdWithPopupCheckUser
	b _022F57F4
_022F57E8:
	ldr r1, _022F598C ; =0x00000BBF
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
_022F57F4:
	ldrsh r0, [sp, #0x10]
	bl GetItemCategoryVeneer
	mov r1, r0
	mov r0, sb
	bl ov29_022E5728
	mov r0, sb
	mov r1, #0x2e
	bl ItemIsActive__022F5994
	cmp r0, #0
	movne r0, #1
	strneb r0, [sp, #9]
	moveq r0, #0
	streqb r0, [sp, #9]
	ldrb r0, [r8, #0xee]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022F5880
_022F5838: ; jump table
	b _022F5848 ; case 0
	b _022F585C ; case 1
	b _022F5870 ; case 2
	b _022F5880 ; case 3
_022F5848:
	mov r1, #0
	mov r0, #0xa
	strb r1, [sp, #8]
	strh r0, [sp, #0xa]
	b _022F5880
_022F585C:
	mov r1, #0
	mov r0, #0x63
	strb r1, [sp, #8]
	strh r0, [sp, #0xa]
	b _022F5880
_022F5870:
	mov r1, #1
	mov r0, #0x63
	strb r1, [sp, #8]
	strh r0, [sp, #0xa]
_022F5880:
	ldr r1, [sb, #0xb4]
	ldrb r0, [r1, #6]
	cmp r0, #0
	movne r0, #0
	bne _022F58A0
	add r0, r1, #0x228
	mov r1, #0x24
	bl ExclusiveItemEffectFlagTest
_022F58A0:
	cmp r0, #0
	movne r1, #0
	movne r0, #0x63
	strneb r1, [sp, #8]
	strneh r0, [sp, #0xa]
	mov r0, sb
	mov r1, #0x16
	bl ItemIsActive__022F5994
	cmp r0, #0
	bne _022F58DC
	mov r0, sb
	mov r1, #0x42
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022F58EC
_022F58DC:
	mov r1, #1
	mov r0, #0x63
	strb r1, [sp, #8]
	strh r0, [sp, #0xa]
_022F58EC:
	ldrsh r0, [sp, #0x10]
	bl GetItemCategoryVeneer
	cmp r0, #1
	bne _022F5928
	add r0, sp, #4
	mov r1, sb
	bl ov29_022E9A9C
	add r4, sp, #8
	add r1, sp, #0xc
	add r3, sp, #4
	mov r0, sb
	add r2, sb, #4
	str r4, [sp]
	bl ov29_02347BC8
	b _022F5944
_022F5928:
	add r0, sp, #8
	str r0, [sp]
	ldrb r3, [r8, #0x4c]
	add r1, sp, #0xc
	mov r0, sb
	add r2, sb, #4
	bl ov29_02347518
_022F5944:
	mov r0, sb
	bl EntityIsValid__022F528C
	cmp r0, #0
	beq _022F5978
	ldrb r1, [r8, #0x4c]
	mov r0, sb
	bl ov29_02304A48
	ldr r1, _022F5990 ; =0x02353538
	mov r0, sb
	ldr r1, [r1]
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
_022F5978:
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022F5980: .word 0x00000BAE
_022F5984: .word 0x00000BBE
_022F5988: .word 0x00000103
_022F598C: .word 0x00000BBF
_022F5990: .word 0x02353538
	arm_func_end ov29_022F54BC

	arm_func_start ItemIsActive__022F5994
ItemIsActive__022F5994: ; 0x022F5994
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ItemIsActive__022F5994

	arm_func_start ov29_022F59C4
ov29_022F59C4: ; 0x022F59C4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov29_022F87C0
	movs r1, r0
	moveq r1, #0
	beq _022F59FC
	ldr r0, [r1]
	cmp r0, #1
	movne r1, #0
	bne _022F59FC
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	movne r1, #0
_022F59FC:
	mov r0, r4
	mvn r2, #0
	bl ov29_022F5A40
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022F59C4

	arm_func_start ov29_022F5A0C
ov29_022F5A0C: ; 0x022F5A0C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl GetLeader
	ldr r1, _022F5A3C ; =0x02353538
	ldrb r3, [r4, #4]
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, r3, lsl #2
	add r1, r1, #0x12000
	ldr r1, [r1, #0xb28]
	bl ov29_022F5A40
	ldmia sp!, {r4, pc}
	.align 2, 0
_022F5A3C: .word 0x02353538
	arm_func_end ov29_022F5A0C

	arm_func_start ov29_022F5A40
ov29_022F5A40: ; 0x022F5A40
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov r6, r0
	movs sl, r1
	mov r5, r2
	ldr r8, [r6, #0xb4]
	bne _022F5A70
	ldr r1, _022F5D9C ; =0x00000BC1
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F5D94
_022F5A70:
	bl ov29_023009CC
	cmp r0, #0
	bne _022F5A90
	ldr r1, _022F5D9C ; =0x00000BC1
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F5D94
_022F5A90:
	ldr r0, [sl, #0xb4]
	ldrb r0, [r0, #0xbc]
	bl ov29_022EFB04
	movs r4, r0
	bne _022F5ADC
	mov r0, r6
	mov r1, sl
	mov r2, #1
	mov r3, #0
	bl ov29_0230175C
	cmp r0, #1
	beq _022F5D84
	mov r0, sl
	mov r1, r6
	mov r2, #1
	mov r3, #0
	bl ov29_0230175C
	cmp r0, #1
	beq _022F5D84
_022F5ADC:
	ldr sb, [sl, #0xb4]
	bl ov29_0234B034
	mov r1, #0
	mov r2, sb
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	bl ov29_0234B034
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	mov r2, sb
	mov r3, #7
	bl ov29_0230040C
	mov r0, #3
	bl ov29_02348C64
	mov r0, r6
	mov r1, sl
	bl ov29_02307BDC
	mov r0, sl
	bl ov29_023009CC
	cmp r0, #0
	beq _022F5B4C
	mov r0, sl
	mov r1, #1
	bl ov29_02300818
	cmp r0, #0
	beq _022F5B78
_022F5B4C:
	add r0, r6, #4
	add r1, sl, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, r6
	bl ov29_02304AFC
	ldr r1, _022F5DA0 ; =0x00000BC2
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F5D94
_022F5B78:
	add r0, r6, #4
	add r1, sl, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, r6
	bl ov29_02304AFC
	cmp r5, #0
	blt _022F5BA8
	mov r0, sl
	mov r1, r5
	bl ov29_02304AFC
	b _022F5BB8
_022F5BA8:
	ldrb r1, [r8, #0x4c]
	mov r0, sl
	add r1, r1, #4
	bl ov29_02304AFC
_022F5BB8:
	cmp r4, #0
	beq _022F5BD0
	mov r0, r6
	mov r1, sl
	bl ov29_02344544
	b _022F5D94
_022F5BD0:
	ldrb r0, [sb, #9]
	cmp r0, #1
	bne _022F5BE4
	bl ov29_022F6748
	b _022F5D94
_022F5BE4:
	ldrb r0, [sb, #0xbc]
	cmp r0, #7
	bne _022F5C3C
	ldr r0, _022F5DA4 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x790]
	cmp r0, #0
	beq _022F5C18
	ldr r1, _022F5DA8 ; =0x00000BC3
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F5D94
_022F5C18:
	bl ov29_023491A4
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	mov r0, sl
	beq _022F5C34
	bl ov29_0234A5E4
	b _022F5D94
_022F5C34:
	bl ov29_0234A2D4
	b _022F5D94
_022F5C3C:
	ldrsh r2, [sb, #0x12]
	ldrsh r1, [sb, #0x16]
	ldr r0, _022F5DAC ; =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	mov r0, r1, lsl #3
	mov r1, #0xa
	bl DivideInt
	ldrsh r1, [sb, #0x10]
	cmp r1, r0
	movge r4, #0
	bge _022F5C84
	mov r0, sl
	bl HasLowHealth
	cmp r0, #0
	moveq r4, #1
	movne r4, #2
_022F5C84:
	bl sub_02025888
	ldrb r1, [sb, #0x48]
	mov r5, r0
	cmp r1, #0xd6
	bne _022F5CA4
	ldr r1, _022F5DB0 ; =0x0000025E
	bl GetStringFromFileVeneer
	b _022F5D3C
_022F5CA4:
	mov r0, sl
	mov r6, #0x14
	bl ov29_0231AE3C
	str r0, [sp, #4]
	ldr r0, _022F5DB4 ; =0x000004D3
	sub fp, r0, #0x1b
_022F5CBC:
	mov r0, sb
	bl ov29_0234CFEC
	mov r7, r0
	cmp r7, fp
	ldrne r0, _022F5DB4 ; =0x000004D3
	cmpne r7, r0
	moveq r2, #0
	beq _022F5CE8
	ldrb r0, [r8, #0x48]
	bl ov29_0234CFA0
	mov r2, r0
_022F5CE8:
	mov r0, r7
	mov r1, r4
	bl GetTalkLine
	mov r1, r0
	mov r0, r5
	bl GetStringFromFileVeneer
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _022F5D3C
	ldr r1, _022F5DB8 ; =0x02352750
	mov r0, r5
	bl sub_02020880
	cmp r0, #0
	beq _022F5D3C
	subs r6, r6, #1
	bne _022F5D34
	ldr r1, _022F5DBC ; =0x02352758
	mov r0, r5
	bl Strcpy
_022F5D34:
	cmp r6, #0
	bne _022F5CBC
_022F5D3C:
	ldrb r0, [sb, #0x48]
	cmp r0, #0xd7
	bne _022F5D5C
	mov r0, sl
	bl HasLowHealth
	cmp r0, #0
	movne r2, #2
	bne _022F5D60
_022F5D5C:
	mov r2, #0
_022F5D60:
	ldrsh r1, [sb, #4]
	add r0, sp, #8
	bl ov29_0234BAC0
	add r1, sp, #8
	mov r0, sl
	mov r2, r5
	mov r3, #1
	bl ov29_0234D304
	b _022F5D94
_022F5D84:
	ldr r1, _022F5D9C ; =0x00000BC1
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
_022F5D94:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F5D9C: .word 0x00000BC1
_022F5DA0: .word 0x00000BC2
_022F5DA4: .word 0x02353538
_022F5DA8: .word 0x00000BC3
_022F5DAC: .word 0x000003E7
_022F5DB0: .word 0x0000025E
_022F5DB4: .word 0x000004D3
_022F5DB8: .word 0x02352750
_022F5DBC: .word 0x02352758
	arm_func_end ov29_022F5A40

	arm_func_start ov29_022F5DC0
ov29_022F5DC0: ; 0x022F5DC0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl GetLeader
	ldr r1, _022F5DF0 ; =0x02353538
	ldrb r3, [r4, #4]
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, r3, lsl #2
	add r1, r1, #0x12000
	ldr r1, [r1, #0xb28]
	bl ov29_022F5DF4
	ldmia sp!, {r4, pc}
	.align 2, 0
_022F5DF0: .word 0x02353538
	arm_func_end ov29_022F5DC0

	arm_func_start ov29_022F5DF4
ov29_022F5DF4: ; 0x022F5DF4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	movs r7, r1
	ldr r4, [r7, #0xb4]
	mov r0, #0
	bne _022F5E1C
	ldr r1, _022F5F0C ; =0x00000BC4
	mov r2, #1
	bl DisplayMessage2
	b _022F5F04
_022F5E1C:
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrsh r0, [r4, #0xc]
	ldr r5, _022F5F10 ; =0x00000BC5
	cmp r0, #0
	add r6, r5, #4
	blt _022F5E84
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl GetActiveTeamMember
	mov r4, r0
	ldrsh r0, [r4, #8]
	bl ov29_022F9C40
	cmp r0, #0
	addne r5, r5, #3
	addne r6, r5, #3
	bne _022F5E84
	ldrsh r0, [r4, #8]
	bl IsMonsterIdInNormalRange__022F9C68
	cmp r0, #0
	beq _022F5E84
	bl ov29_022E08A0
	cmp r0, #0
	addne r5, r5, #2
	ldr r6, _022F5F14 ; =0x00000BCA
	addeq r5, r5, #1
_022F5E84:
	mov r2, #1
	mov r1, r5
	mov r3, r2
	mov r0, #0
	str r2, [sp]
	bl ov29_0234D518
	cmp r0, #1
	bne _022F5F04
	mov r0, #0
	bl ov29_0233A248
	mov r0, #0
	bl sub_02024FB8
	mov r1, r0
	add r0, sp, #4
	mov r2, #0x40
	bl Strncpy
	mov r0, r7
	bl ov29_022E690C
	mov r0, r7
	mov r1, #0x25c
	mov r2, #0
	bl HandleFaint
	bl UpdateMapSurveyorFlag
	bl ov29_022E8104
	bl ov29_022E81F8
	mov r0, #0
	add r1, sp, #4
	bl ov29_0234B0B4
	mov r1, r6
	mov r0, #0
	mov r2, #1
	bl DisplayMessage
_022F5F04:
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_022F5F0C: .word 0x00000BC4
_022F5F10: .word 0x00000BC5
_022F5F14: .word 0x00000BCA
	arm_func_end ov29_022F5DF4

	arm_func_start ov29_022F5F18
ov29_022F5F18: ; 0x022F5F18
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov sb, r0
	mov r7, #0
	bl EntityIsValid__022F528C
	cmp r0, #0
	beq _022F5F88
	ldr r0, _022F6050 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bl ov29_02344160
	cmp r0, #0
	bne _022F5F60
	ldr r1, _022F6054 ; =0x00000DFD
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
	b _022F6048
_022F5F60:
	ldr r4, [sb, #0xb4]
	mov r1, r7
	mov r0, sb
	strb r1, [r4, #0x23f]
	bl ov29_0231A7A0
	cmp r0, #0
	movne r7, #1
	strneb r7, [r4, #0x23f]
	mov r0, #0
	strb r0, [r4, #0x23e]
_022F5F88:
	mov r6, #0
	mov r4, #1
	mov r5, r6
	mov sl, r4
	b _022F5FD8
_022F5F9C:
	ldr r8, [sb, #0xb4]
	mov r0, sb
	str r5, [sp]
	ldrb r1, [r8, #0x54]
	mov r2, r4
	mov r3, r5
	bl ov29_0232145C
	bl IsFloorOver
	cmp r0, #0
	ldreqb r0, [r8, #0x23e]
	cmpeq r0, #0
	ldreqb r0, [r8, #0x163]
	cmpeq r0, #0
	bne _022F5FEC
	add r6, r6, #1
_022F5FD8:
	mov r0, sb
	mov r1, sl
	bl GetNumberOfAttacks
	cmp r6, r0
	blt _022F5F9C
_022F5FEC:
	mov r0, sb
	bl EntityIsValid__022F528C
	cmp r0, #0
	beq _022F6014
	cmp r7, #0
	moveq r1, #1
	movne r1, #0
	mov r0, sb
	and r1, r1, #0xff
	bl UpdateMovePp
_022F6014:
	bl IsFloorOver
	cmp r0, #0
	bne _022F6048
	mov r0, sb
	bl EntityIsValid__022F528C
	cmp r0, #0
	beq _022F6040
	ldr r1, [sb, #0xb4]
	mov r0, sb
	ldrb r1, [r1, #0x54]
	bl ov29_022FA574
_022F6040:
	mov r0, sb
	bl TryActivateTruant
_022F6048:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022F6050: .word 0x02353538
_022F6054: .word 0x00000DFD
	arm_func_end ov29_022F5F18

	arm_func_start ov29_022F6058
ov29_022F6058: ; 0x022F6058
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	ldr r7, [sl, #0xb4]
	ldr r2, _022F61F8 ; =0x0237CA80
	mov r3, #0
	add r0, sp, #0xc
	str r3, [r2]
	mov sb, r1
	bl InitMove
	ldrb r0, [r7, #0xd0]
	cmp r0, #1
	bne _022F60AC
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022F61FC ; =0x00000BCC
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022F61F0
_022F60AC:
	ldrb r0, [r7, #0xbf]
	cmp r0, #4
	bne _022F60D8
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022F6200 ; =0x00000BCD
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022F61F0
_022F60D8:
	mov r6, #0
	cmp sb, #0x160
	moveq r8, #1
	movne r8, #0
	strb r6, [r7, #0x163]
	mov fp, r6
	mov r5, #0xa
	add r4, sp, #0xc
	b _022F6154
_022F60FC:
	mov r0, sl
	bl ov29_022F3B8C
	str fp, [r7, #0x18c]
	ldrb r1, [sp, #0xc]
	strb r5, [sp, #0x12]
	mov r0, sl
	orr r1, r1, #0xc
	strb r1, [sp, #0xc]
	str fp, [sp]
	mov r1, r8
	mov r2, fp
	mov r3, fp
	str r4, [sp, #4]
	bl ov29_02322374
	mov r0, sl
	bl EntityIsValid__022F528C
	cmp r0, #0
	beq _022F6168
	ldrb r0, [r7, #0x163]
	cmp r0, #0
	bne _022F6168
	add r6, r6, #1
_022F6154:
	mov r0, sl
	mov r1, #1
	bl GetNumberOfAttacks
	cmp r6, r0
	blt _022F60FC
_022F6168:
	mov r0, sl
	bl EntityIsValid__022F528C
	cmp r0, #0
	beq _022F61F0
	cmp sb, #0x160
	ldreq r0, _022F61F8 ; =0x0237CA80
	ldreq r0, [r0]
	cmpeq r0, #0
	bne _022F6198
	ldr r1, _022F6204 ; =0x00000BCE
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
_022F6198:
	ldrb r0, [r7, #7]
	cmp r0, #0
	cmpne sb, #0x160
	beq _022F61E8
	ldrb r1, [r7, #0x4c]
	ldr r0, _022F6208 ; =0x0235171C
	ldrsh r3, [sl, #4]
	mov r1, r1, lsl #2
	ldrsh r2, [r0, r1]
	ldr r1, _022F620C ; =0x0235171E
	add r0, sp, #8
	add r2, r3, r2
	strh r2, [sp, #8]
	ldrb r2, [r7, #0x4c]
	ldrsh r3, [sl, #6]
	mov r2, r2, lsl #2
	ldrsh r1, [r1, r2]
	add r1, r3, r1
	strh r1, [sp, #0xa]
	bl ov29_02338430
_022F61E8:
	mov r0, sl
	bl EnemyEvolution
_022F61F0:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F61F8: .word 0x0237CA80
_022F61FC: .word 0x00000BCC
_022F6200: .word 0x00000BCD
_022F6204: .word 0x00000BCE
_022F6208: .word 0x0235171C
_022F620C: .word 0x0235171E
	arm_func_end ov29_022F6058

	arm_func_start ov29_022F6210
ov29_022F6210: ; 0x022F6210
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	bl EntityIsValid__022F62A8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	ldr r7, _022F62A4 ; =0x02353538
	b _022F6294
_022F6234:
	ldr r0, [r7]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb38]
	mov r0, r5
	bl EntityIsValid__022F62A8
	cmp r0, #0
	beq _022F6288
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _022F6288
	mov r0, r5
	bl ov29_023009CC
	cmp r0, #0
	beq _022F6288
	ldrb r1, [r6, #0x25]
	ldrb r0, [r5, #0x25]
	cmp r1, r0
	moveq r0, r5
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_022F6288:
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
_022F6294:
	cmp r4, #0x10
	blt _022F6234
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F62A4: .word 0x02353538
	arm_func_end ov29_022F6210

	arm_func_start EntityIsValid__022F62A8
EntityIsValid__022F62A8: ; 0x022F62A8
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__022F62A8

	arm_func_start ov29_022F62CC
ov29_022F62CC: ; 0x022F62CC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov sl, r0
	bl IsFloorOver
	cmp r0, #0
	bne _022F66F4
	bl GetLeader
	ldr r1, _022F66FC ; =0x02353538
	mov r4, r0
	ldr r1, [r1]
	ldr r6, [r4, #0xb4]
	ldrb fp, [r1, #0x7c8]
	bl GetTileAtEntity
	ldrh r0, [r0]
	ldr r7, _022F66FC ; =0x02353538
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	and r5, r0, #0xff
	ldr r0, [r7]
	strb r5, [r0, #0x7c8]
	ldr r0, [r7]
	strb r5, [r0, #0x7c9]
	ldr r1, [r7]
	ldrb r0, [r1, #0x790]
	cmp r0, #0
	bne _022F66F4
	ldr r0, [r1, #0x7c4]
	cmp r0, #0
	beq _022F66F4
	ldrb r0, [r6, #0xef]
	cmp r0, #1
	bne _022F6380
	ldrb r0, [r1, #0x7c9]
	cmp r0, #0
	beq _022F6364
	mov r0, #0
	bl ov29_022E38E0
_022F6364:
	ldr r0, _022F66FC ; =0x02353538
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0x7c8]
	ldr r0, [r0]
	strb r2, [r0, #0x7c9]
	b _022F66F4
_022F6380:
	mov r6, #0
	mov r8, r6
_022F6388:
	ldr r0, [r7]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb38]
	mov r0, sb
	bl EntityIsValid__022F62A8
	cmp r0, #0
	beq _022F63D8
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _022F63D8
	mov r0, sb
	bl ov29_023009CC
	cmp r0, #0
	beq _022F63D8
	ldrb r1, [r4, #0x25]
	ldrb r0, [sb, #0x25]
	cmp r1, r0
	moveq r6, #1
_022F63D8:
	add r8, r8, #1
	cmp r8, #0x10
	blt _022F6388
	bl GetKecleonIdToSpawnByFloor
	mov r1, r0
	add r0, sp, #0x18
	mov r2, #0
	bl ov29_0234BAC0
	cmp fp, #0
	cmpeq r5, #1
	bne _022F6448
	cmp r6, #0
	beq _022F66F4
	mov r0, r4
	bl ov29_022F6210
	movs r5, r0
	beq _022F6434
	add r0, r5, #4
	add r1, r4, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, r5
	bl ov29_02304A48
_022F6434:
	ldr r1, _022F6700 ; =0x00000E53
	add r0, sp, #0x18
	mov r2, #1
	bl DisplayMessage2
	b _022F66F4
_022F6448:
	cmp r5, #1
	beq _022F66F4
	cmp fp, #1
	cmpeq r5, #0
	beq _022F6464
	cmp sl, #0
	beq _022F66F4
_022F6464:
	mov r7, #0
	str r7, [sp]
	bl ov29_022F670C
	cmp r0, #0
	beq _022F6620
	mov r0, #1
	str r0, [sp]
	mov r8, r7
	ldr sb, _022F66FC ; =0x02353538
	b _022F6618
_022F648C:
	ldr r0, [sb]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb38]
	mov r0, sl
	bl EntityIsValid__022F62A8
	cmp r0, #0
	beq _022F6614
	ldr r0, [sl, #0xb4]
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _022F6614
	mov r0, sl
	bl ov29_023009CC
	cmp r0, #0
	beq _022F6614
	ldrb r1, [r4, #0x25]
	ldrb r0, [sl, #0x25]
	cmp r1, r0
	bne _022F6614
	ldrsh r1, [r4, #4]
	ldrsh r0, [sl, #4]
	mov r7, #1
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	bgt _022F6510
	ldrsh r1, [r4, #6]
	ldrsh r0, [sl, #6]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	ble _022F65CC
_022F6510:
	ldr r0, _022F6704 ; =0x02352760
	mvn r8, #0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	str r8, [sp, #4]
	strh r1, [sp, #0x10]
	strh r0, [sp, #0x12]
	ldrh r0, [sp, #0x10]
	str r0, [sp, #8]
	ldrh r0, [sp, #0x12]
	str r0, [sp, #0xc]
	b _022F65C4
_022F6540:
	ldr sb, [sp, #4]
	b _022F65B8
_022F6548:
	ldr r0, [sp, #8]
	strh r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	strh r0, [sp, #0x16]
	ldrsh r0, [r4, #4]
	add r0, r8, r0
	strh r0, [sp, #0x14]
	ldrsh r1, [r4, #6]
	ldrsh r0, [sp, #0x14]
	add r1, sb, r1
	strh r1, [sp, #0x16]
	ldrsh r1, [sp, #0x16]
	bl GetTile
	ldrb r0, [r0, #7]
	cmp r0, #0xff
	beq _022F65B4
	mov r0, sl
	add r1, sp, #0x14
	bl ov29_022FF764
	cmp r0, #0
	bne _022F65B4
	add r3, sp, #0x14
	mov r0, r4
	mov r1, sl
	mov r2, #3
	bl TryWarp
	b _022F65CC
_022F65B4:
	add sb, sb, #1
_022F65B8:
	cmp sb, #1
	ble _022F6548
	add r8, r8, #1
_022F65C4:
	cmp r8, #1
	ble _022F6540
_022F65CC:
	mov r0, r4
	bl ov29_023009CC
	cmp r0, #0
	moveq r7, #0
	beq _022F65F8
	add r0, r4, #4
	add r1, sl, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, r4
	bl ov29_02304A00
_022F65F8:
	add r0, sl, #4
	add r1, r4, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, sl
	bl ov29_02304A48
	b _022F6620
_022F6614:
	add r8, r8, #1
_022F6618:
	cmp r8, #0x10
	blt _022F648C
_022F6620:
	ldr r0, [sp]
	cmp r0, #0
	beq _022F6654
	cmp r7, #0
	bne _022F6654
	ldr r0, _022F66FC ; =0x02353538
	ldr r0, [r0]
	ldr r1, [r0, #0x7c4]
	ldr r0, [r0, #0x7bc]
	cmp r1, r0
	ble _022F66F4
	bl ov29_022F6CAC
	b _022F66F4
_022F6654:
	ldr r0, [sp]
	cmp r0, #0
	beq _022F6688
	cmp r6, #0
	bne _022F6688
	ldr r0, _022F66FC ; =0x02353538
	ldr r0, [r0]
	ldr r1, [r0, #0x7c4]
	ldr r0, [r0, #0x7bc]
	cmp r1, r0
	ble _022F66F4
	bl ov29_022F6CAC
	b _022F66F4
_022F6688:
	mov r0, r7
	bl ov29_022F67D0
	mov r0, r7
	bl ov29_022F6A0C
	cmp r0, #0
	beq _022F66A8
	bl ov29_022F6CAC
	b _022F66F4
_022F66A8:
	cmp fp, #1
	cmpeq r5, #0
	bne _022F66F4
	cmp r6, #0
	beq _022F66F4
	mov r0, r4
	bl ov29_022F6210
	movs r5, r0
	beq _022F66E4
	add r0, r5, #4
	add r1, r4, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, r5
	bl ov29_02304A48
_022F66E4:
	ldr r1, _022F6708 ; =0x00000E52
	add r0, sp, #0x18
	mov r2, #1
	bl DisplayMessage2
_022F66F4:
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F66FC: .word 0x02353538
_022F6700: .word 0x00000E53
_022F6704: .word 0x02352760
_022F6708: .word 0x00000E52
	arm_func_end ov29_022F62CC

	arm_func_start ov29_022F670C
ov29_022F670C: ; 0x022F670C
	ldr r0, _022F6744 ; =0x02353538
	ldr r2, [r0]
	ldr r1, [r2, #0x7c4]
	ldr r0, [r2, #0x7bc]
	sub r0, r1, r0
	cmp r0, #0
	movgt r0, #1
	bxgt lr
	ldr r0, [r2, #0x7c0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022F6744: .word 0x02353538
	arm_func_end ov29_022F670C

	arm_func_start ov29_022F6748
ov29_022F6748: ; 0x022F6748
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	bl GetKecleonIdToSpawnByFloor
	mov r1, r0
	add r0, sp, #0
	mov r2, #0
	bl ov29_0234BAC0
	mov r0, #1
	bl ov29_022F67D0
	mov r0, #1
	bl ov29_022F6A0C
	movs r4, r0
	beq _022F67B4
	bl GetLeader
	bl GetTileAtEntity
	ldrh r0, [r0]
	tst r0, #0x20
	beq _022F67AC
	cmp r4, #2
	beq _022F67C4
	ldr r1, _022F67CC ; =0x00000E51
	add r0, sp, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F67C4
_022F67AC:
	bl ov29_022F6CAC
	b _022F67C4
_022F67B4:
	add r0, sp, #0
	mov r1, #0xe50
	mov r2, #1
	bl DisplayMessage2
_022F67C4:
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_022F67CC: .word 0x00000E51
	arm_func_end ov29_022F6748

	arm_func_start ov29_022F67D0
ov29_022F67D0: ; 0x022F67D0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r1, _022F69EC ; =0x02353538
	mov r4, r0
	ldr r0, [r1]
	mov r5, #0
	ldr r0, [r0, #0x7c0]
	cmp r0, #0
	beq _022F69E4
	mov r0, #0x3e
	bl TeamLeaderIqSkillIsEnabled
	cmp r0, #0
	movne r5, #1
	bl GetKecleonIdToSpawnByFloor
	mov r1, r0
	add r0, sp, #0x14
	mov r2, #0
	bl ov29_0234BAC0
	ldr r0, _022F69EC ; =0x02353538
	cmp r4, #0
	ldr r0, [r0]
	ldr r4, [r0, #0x7c0]
	beq _022F69E4
	ldr r0, _022F69F0 ; =0x023535A8
	cmp r5, #0
	str r4, [r0]
	beq _022F6870
	ldr r0, _022F69F4 ; =0x022C4800
	mov r1, r4, lsl #8
	ldr r3, [r0]
	mov r2, #0x64
	smull r0, r1, r3, r1
	mov r3, #0
	bl sub_0208FC8C
	bl sub_020018A4
	mov r4, r0
	ldr r1, _022F69F8 ; =0x00000E4F
	add r0, sp, #0x14
	mov r2, #1
	bl DisplayMessage2
_022F6870:
	mov r1, r4
	mov r0, #0
	bl ov29_0234B09C
	mov r2, #0
	ldr r1, _022F69FC ; =0x00000E4D
	add r0, sp, #0x14
	mov r3, r2
	str r2, [sp]
	bl ov29_0234D518
	cmp r0, #1
	bne _022F69E4
	ldr r0, _022F6A00 ; =0x00001308
	bl ov29_022EACCC
	mov r0, r4
	bl AddMoneyCarried
	ldr r1, _022F6A04 ; =0x02352760
	ldr r0, _022F69EC ; =0x02353538
	ldrh r3, [r1, #4]
	ldr r0, [r0]
	ldrh r2, [r1, #6]
	add r1, r0, #0xc000
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	ldr sl, [r0, #0x7bc]
	ldr sb, [r1, #0xd14]
	b _022F69A8
_022F68D8:
	add r0, r0, #0xc000
	ldr r8, [r0, #0xd18]
	mov r0, sb, lsl #0x10
	mov r7, r0, asr #0x10
	add r6, sp, #0xc
	add r5, sp, #8
	mov fp, #1
	ldr r4, _022F69EC ; =0x02353538
	b _022F6990
_022F68FC:
	mov r0, sb
	mov r1, r8
	strh r7, [sp, #8]
	strh r8, [sp, #0xa]
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x20
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	beq _022F698C
	ldr r1, [r0]
	cmp r1, #3
	bne _022F698C
	bl ov29_022E1610
	ldrb r1, [r0]
	tst r1, #2
	bne _022F698C
	ldrh r2, [r0]
	mov r1, fp
	strh r2, [sp, #0xc]
	ldrh r2, [r0, #2]
	strh r2, [sp, #0xe]
	ldrh r2, [r0, #4]
	mov r0, r5
	strh r2, [sp, #0x10]
	bl ov29_023456BC
	ldrsh r0, [sp, #0x10]
	bl sub_0200CCE0
	cmp r0, #0
	ldrneb r0, [sp, #0xc]
	mov r1, r6
	mov r2, #1
	orrne r0, r0, #2
	strneb r0, [sp, #0xc]
	mov r0, r5
	bl ov29_02345538
_022F698C:
	add r8, r8, #1
_022F6990:
	ldr r0, [r4]
	add r1, r0, #0xc000
	ldr r1, [r1, #0xd20]
	cmp r8, r1
	ble _022F68FC
	add sb, sb, #1
_022F69A8:
	add r1, r0, #0xc000
	ldr r1, [r1, #0xd1c]
	cmp sb, r1
	ble _022F68D8
	ldr r1, _022F69EC ; =0x02353538
	add r0, sp, #0x14
	ldr r4, [r1]
	ldr r1, _022F6A08 ; =0x00000E4A
	ldr r2, [r4, #0x7bc]
	ldr r3, [r4, #0x7c4]
	sub r2, r2, sl
	add r3, r3, r2
	mov r2, #1
	str r3, [r4, #0x7c4]
	bl DisplayMessage2
_022F69E4:
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F69EC: .word 0x02353538
_022F69F0: .word 0x023535A8
_022F69F4: .word 0x022C4800
_022F69F8: .word 0x00000E4F
_022F69FC: .word 0x00000E4D
_022F6A00: .word 0x00001308
_022F6A04: .word 0x02352760
_022F6A08: .word 0x00000E4A
	arm_func_end ov29_022F67D0

	arm_func_start ov29_022F6A0C
ov29_022F6A0C: ; 0x022F6A0C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov r5, r0
	mov r0, #0x3e
	mov r4, #0
	bl TeamLeaderIqSkillIsEnabled
	cmp r0, #0
	movne r4, #1
	bl GetKecleonIdToSpawnByFloor
	mov r1, r0
	add r0, sp, #4
	mov r2, #0
	bl ov29_0234BAC0
	ldr r0, _022F6C8C ; =0x02353538
	cmp r4, #0
	ldr r0, [r0]
	ldr r1, [r0, #0x7c4]
	ldr r0, [r0, #0x7bc]
	sub r6, r1, r0
	beq _022F6A80
	ldr r0, _022F6C90 ; =0x022C473C
	mov r3, r6, lsl #8
	ldr r0, [r0]
	mov r2, #0x64
	smull r0, r1, r3, r0
	mov r3, #0
	bl sub_0208FC8C
	bl sub_020018A4
	mov r6, r0
_022F6A80:
	cmp r6, #0
	movle r0, #0
	ble _022F6C84
	cmp r5, #0
	beq _022F6AE0
	cmp r4, #0
	beq _022F6AAC
	ldr r1, _022F6C94 ; =0x00000E4E
	add r0, sp, #4
	mov r2, #1
	bl DisplayMessage2
_022F6AAC:
	mov r1, r6
	mov r0, #0
	bl ov29_0234B09C
	mov r2, #0
	ldr r1, _022F6C98 ; =0x00000E4C
	add r0, sp, #4
	mov r3, #1
	str r2, [sp]
	bl ov29_0234D518
	cmp r0, #1
	beq _022F6AE8
	mov r0, #1
	b _022F6C84
_022F6AE0:
	mov r0, #1
	b _022F6C84
_022F6AE8:
	bl GetGold
	cmp r0, r6
	bge _022F6B0C
	ldr r1, _022F6C9C ; =0x00000E4B
	add r0, sp, #4
	mov r2, #1
	bl DisplayMessage2
	mov r0, #2
	b _022F6C84
_022F6B0C:
	ldr r0, _022F6CA0 ; =0x00001308
	bl ov29_022EACCC
	rsb r0, r6, #0
	bl AddMoneyCarried
	mov r6, #0
	mov r4, r6
_022F6B24:
	mov r5, r4
_022F6B28:
	mov r0, r6
	mov r1, r5
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x20
	bne _022F6B78
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022F6B78
	ldr r1, [r0]
	cmp r1, #3
	bne _022F6B78
	bl ov29_022E1610
	mov r7, r0
	ldrsh r0, [r7, #4]
	bl sub_0200CCE0
	cmp r0, #0
	ldrneb r0, [r7]
	bicne r0, r0, #2
	strneb r0, [r7]
_022F6B78:
	add r5, r5, #1
	cmp r5, #0x20
	blt _022F6B28
	add r6, r6, #1
	cmp r6, #0x38
	blt _022F6B24
	mov r6, #0
	ldr sb, _022F6CA4 ; =0x020AF6B8
	mov r4, r6
	mov r5, #1
	mov r8, #6
_022F6BA4:
	mul r1, r6, r8
	ldr r0, [sb]
	ldr r2, [r0, #0x384]
	ldrb r0, [r2, r1]
	add r7, r2, r1
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _022F6BE4
	ldrsh r0, [r7, #4]
	bl sub_0200CCE0
	cmp r0, #0
	ldrneb r0, [r7]
	bicne r0, r0, #2
	strneb r0, [r7]
_022F6BE4:
	add r6, r6, #1
	cmp r6, #0x32
	blt _022F6BA4
	mov r7, #0
	ldr r8, _022F6C8C ; =0x02353538
	mov r4, r7
	mov r5, #1
_022F6C00:
	ldr r0, [r8]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid__022F62A8
	cmp r0, #0
	beq _022F6C54
	ldr r6, [r6, #0xb4]
	ldrb r0, [r6, #0x62]
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _022F6C54
	ldrsh r0, [r6, #0x66]
	bl sub_0200CCE0
	cmp r0, #0
	ldrneb r0, [r6, #0x62]
	bicne r0, r0, #2
	strneb r0, [r6, #0x62]
_022F6C54:
	add r7, r7, #1
	cmp r7, #0x14
	blt _022F6C00
	ldr r1, _022F6C8C ; =0x02353538
	add r0, sp, #4
	ldr r4, [r1]
	ldr r1, _022F6CA8 ; =0x00000E49
	ldr r3, [r4, #0x7bc]
	mov r2, #1
	str r3, [r4, #0x7c4]
	bl DisplayMessage2
	mov r0, #0
_022F6C84:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022F6C8C: .word 0x02353538
_022F6C90: .word 0x022C473C
_022F6C94: .word 0x00000E4E
_022F6C98: .word 0x00000E4C
_022F6C9C: .word 0x00000E4B
_022F6CA0: .word 0x00001308
_022F6CA4: .word 0x020AF6B8
_022F6CA8: .word 0x00000E49
	arm_func_end ov29_022F6A0C

	arm_func_start ov29_022F6CAC
ov29_022F6CAC: ; 0x022F6CAC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _022F6E0C ; =0x02353538
	mov r2, #1
	ldr r1, [r0]
	strb r2, [r1, #0x790]
	ldr r0, [r0]
	strb r2, [r0, #0x791]
	bl GetLeader
	ldr r1, _022F6E10 ; =0x00000E54
	bl LogMessageByIdWithPopupCheckUser
	mov r6, #0
	mov r4, r6
_022F6CDC:
	mov r5, r4
_022F6CE0:
	mov r0, r6
	mov r1, r5
	bl GetTile
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022F6D14
	ldr r1, [r0]
	cmp r1, #3
	bne _022F6D14
	bl ov29_022E1610
	ldrb r1, [r0]
	bic r1, r1, #2
	strb r1, [r0]
_022F6D14:
	add r5, r5, #1
	cmp r5, #0x20
	blt _022F6CE0
	add r6, r6, #1
	cmp r6, #0x38
	blt _022F6CDC
	mov r7, #0
	ldr r1, _022F6E14 ; =0x020AF6B8
	mov r3, r7
	mov r4, #1
	mov r0, #6
_022F6D40:
	mul r5, r7, r0
	ldr r2, [r1]
	add r7, r7, #1
	ldr r6, [r2, #0x384]
	ldrb r2, [r6, r5]
	tst r2, #1
	movne r2, r4
	moveq r2, r3
	tst r2, #0xff
	ldrneb r2, [r6, r5]
	bicne r2, r2, #2
	strneb r2, [r6, r5]
	cmp r7, #0x32
	blt _022F6D40
	mov r8, #0
	ldr sb, _022F6E0C ; =0x02353538
	mov r6, r8
	mov r4, r8
	mov r5, #1
_022F6D8C:
	ldr r0, [sb]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb78]
	mov r0, sl
	bl EntityIsValid__022F62A8
	cmp r0, #0
	beq _022F6DDC
	ldr r7, [sl, #0xb4]
	mov r0, sl
	strb r6, [r7, #9]
	bl CalcSpeedStageWrapper
	ldrb r0, [r7, #0x62]
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	ldrneb r0, [r7, #0x62]
	bicne r0, r0, #2
	strneb r0, [r7, #0x62]
_022F6DDC:
	add r8, r8, #1
	cmp r8, #0x14
	blt _022F6D8C
	ldr r0, _022F6E0C ; =0x02353538
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1, #0x7c4]
	ldr r1, [r0]
	str r2, [r1, #0x7bc]
	ldr r0, [r0]
	str r2, [r0, #0x7c0]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022F6E0C: .word 0x02353538
_022F6E10: .word 0x00000E54
_022F6E14: .word 0x020AF6B8
	arm_func_end ov29_022F6CAC

	arm_func_start ResetDamageDesc
ResetDamageDesc: ; 0x022F6E18
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	strb r1, [r0, #0x10]
	bx lr
	arm_func_end ResetDamageDesc

	arm_func_start ov29_022F6E40
ov29_022F6E40: ; 0x022F6E40
	stmdb sp!, {r4, lr}
	ldr r0, _022F6ED8 ; =0x0001A002
	mov r1, #0
	bl MemAlloc
	ldr r2, _022F6EDC ; =0x0237C9AC
	ldr r1, _022F6ED8 ; =0x0001A002
	str r0, [r2]
	bl MemZero
	ldr r0, _022F6EDC ; =0x0237C9AC
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1a000
	strh r1, [r0]
	bl ov29_0231B490
	mov r2, #0
	ldr r0, _022F6EE0 ; =0x0237C9B0
	mov r1, r2
_022F6E84:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #2
	blt _022F6E84
	ldr r0, _022F6EE4 ; =0x00000216
	bl GetSpriteFileSize
	mov r4, r0
	ldr r0, _022F6EE8 ; =0x00000217
	bl GetSpriteFileSize
	cmp r4, r0
	bne _022F6EC0
	mov r0, #0x218
	bl GetSpriteFileSize
	ldr r0, _022F6EEC ; =0x00000211
	bl GetSpriteFileSize
_022F6EC0:
	ldr r0, _022F6EF0 ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x3000
	str r1, [r0, #0xe1c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022F6ED8: .word 0x0001A002
_022F6EDC: .word 0x0237C9AC
_022F6EE0: .word 0x0237C9B0
_022F6EE4: .word 0x00000216
_022F6EE8: .word 0x00000217
_022F6EEC: .word 0x00000211
_022F6EF0: .word 0x02353538
	arm_func_end ov29_022F6E40

	arm_func_start ov29_022F6EF4
ov29_022F6EF4: ; 0x022F6EF4
	ldr r1, _022F6F08 ; =0x0000FFFF
	ldr r0, _022F6F0C ; =0x023535AC
	strh r1, [r0, #2]
	strh r1, [r0]
	bx lr
	.align 2, 0
_022F6F08: .word 0x0000FFFF
_022F6F0C: .word 0x023535AC
	arm_func_end ov29_022F6EF4

	arm_func_start ov29_022F6F10
ov29_022F6F10: ; 0x022F6F10
	stmdb sp!, {r4, r5, r6, lr}
	bl ov29_022F7008
	ldr r0, _022F6F60 ; =0x0237C9AC
	ldr r0, [r0]
	bl MemFree
	mov r6, #0
	ldr r5, _022F6F64 ; =0x0237C9B0
	mov r4, r6
_022F6F30:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq _022F6F44
	bl MemFree
	str r4, [r5, r6, lsl #2]
_022F6F44:
	add r6, r6, #1
	cmp r6, #2
	blt _022F6F30
	ldr r0, _022F6F60 ; =0x0237C9AC
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022F6F60: .word 0x0237C9AC
_022F6F64: .word 0x0237C9B0
	arm_func_end ov29_022F6F10

	arm_func_start ov29_022F6F68
ov29_022F6F68: ; 0x022F6F68
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _022F6FFC ; =0x023535AC
	mov r5, r0
	ldrh r0, [r2, #2]
	mov r4, r1
	cmp r0, r5
	ldreqh r0, [r2]
	cmpeq r0, r4
	beq _022F6FE8
	ldr r0, _022F7000 ; =0x0237C9AC
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrsh r0, [r0]
	cmp r0, #0
	beq _022F6FA8
	bl ov29_022F7008
_022F6FA8:
	mov r1, #1
	ldr r0, _022F7004 ; =0x020AFC68
	str r1, [sp]
	ldr r1, _022F7000 ; =0x0237C9AC
	ldr r0, [r0]
	ldr r3, [r1]
	mov r1, r5
	mov r2, r4
	bl sub_0201D590
	ldr r1, _022F7000 ; =0x0237C9AC
	ldr r2, _022F6FFC ; =0x023535AC
	ldr r1, [r1]
	add r1, r1, #0x1a000
	strh r0, [r1]
	strh r5, [r2, #2]
	strh r4, [r2]
_022F6FE8:
	ldr r0, _022F7000 ; =0x0237C9AC
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrsh r0, [r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022F6FFC: .word 0x023535AC
_022F7000: .word 0x0237C9AC
_022F7004: .word 0x020AFC68
	arm_func_end ov29_022F6F68

	arm_func_start ov29_022F7008
ov29_022F7008: ; 0x022F7008
	stmdb sp!, {r3, lr}
	ldr r0, _022F7048 ; =0x0237C9AC
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrsh r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _022F704C ; =0x020AFC68
	ldr r0, [r0]
	bl DeleteWanTableEntryVeneer
	ldr r0, _022F7048 ; =0x0237C9AC
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1a000
	strh r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_022F7048: .word 0x0237C9AC
_022F704C: .word 0x020AFC68
	arm_func_end ov29_022F7008

	arm_func_start ov29_022F7050
ov29_022F7050: ; 0x022F7050
	ldr r0, _022F7064 ; =0x0237C9AC
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrsh r0, [r0]
	bx lr
	.align 2, 0
_022F7064: .word 0x0237C9AC
	arm_func_end ov29_022F7050

	arm_func_start ov29_022F7068
ov29_022F7068: ; 0x022F7068
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl IsCastform
	cmp r0, #0
	beq _022F70B4
	ldr r0, _022F70F4 ; =0x0000017B
	bl GetSpriteFileSize
	add r4, r4, r0
	mov r0, #0x17c
	bl GetSpriteFileSize
	add r4, r4, r0
	ldr r0, _022F70F8 ; =0x0000017D
	bl GetSpriteFileSize
	add r4, r4, r0
	ldr r0, _022F70FC ; =0x0000017E
	bl GetSpriteFileSize
	add r4, r4, r0
	b _022F70EC
_022F70B4:
	mov r0, r5
	bl IsCherrim
	cmp r0, #0
	beq _022F70E0
	mov r0, #0x1cc
	bl GetSpriteFileSize
	add r4, r4, r0
	ldr r0, _022F7100 ; =0x000001CD
	bl GetSpriteFileSize
	add r4, r4, r0
	b _022F70EC
_022F70E0:
	mov r0, r5
	bl GetSpriteFileSize
	add r4, r4, r0
_022F70EC:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022F70F4: .word 0x0000017B
_022F70F8: .word 0x0000017D
_022F70FC: .word 0x0000017E
_022F7100: .word 0x000001CD
	arm_func_end ov29_022F7068

	arm_func_start ov29_022F7104
ov29_022F7104: ; 0x022F7104
	ldr r1, _022F712C ; =0x02353538
	mov r3, #0x400
	ldr r0, [r1]
	mov r2, #0xa
	add r0, r0, #0x3000
	str r3, [r0, #0xe2c]
	ldr r0, [r1]
	add r0, r0, #0x3000
	str r2, [r0, #0xe30]
	bx lr
	.align 2, 0
_022F712C: .word 0x02353538
	arm_func_end ov29_022F7104

	arm_func_start ov29_022F7130
ov29_022F7130: ; 0x022F7130
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r0, _022F72F8 ; =0x02353538
	mov r2, #0
	ldr r0, [r0]
	mov r3, r2
	add r0, r0, #0x114
	add r4, r0, #0x19800
	ldr r0, _022F72FC ; =0x00000483
_022F7150:
	mov r1, r2, lsl #1
	add r2, r2, #1
	strh r3, [r4, r1]
	cmp r2, r0
	blt _022F7150
	ldr r1, _022F72F8 ; =0x02353538
	ldr r0, _022F7300 ; =0x00000229
	ldr r2, [r1]
	mov r1, #1
	add r2, r2, #0x2c000
	str r3, [r2, #0xb0c]
	bl LoadMonsterSprite
	mov r6, #0
	mov r5, #1
	ldr r4, _022F72F8 ; =0x02353538
	b _022F71AC
_022F7190:
	add r0, r1, #0x174
	add r0, r0, #0x3800
	add r0, r0, r6, lsl #3
	bl GetMonsterIdFromSpawnEntry
	mov r1, r5
	bl LoadMonsterSprite
	add r6, r6, #1
_022F71AC:
	ldr r1, [r4]
	add r0, r1, #0x3000
	ldr r0, [r0, #0xe20]
	cmp r6, r0
	blt _022F7190
	bl LoadMissionMonsterSprites
	ldr r0, _022F72F8 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsh r1, [r0, #0xa8]
	cmp r1, #0
	beq _022F71E8
	ldrsh r0, [r0, #0xa8]
	mov r1, #1
	bl LoadMonsterSprite
_022F71E8:
	mov sb, #0
	mov r8, #1
	ldr fp, _022F7304 ; =0x00000217
	mov r7, sb
	mov r5, sb
	mov r6, r8
	mov r4, sb
_022F7204:
	mov r0, sb
	bl GetActiveTeamMember
	mov sl, r0
	ldrb r0, [sl]
	tst r0, #1
	movne r1, r8
	moveq r1, r7
	tst r1, #0xff
	beq _022F7278
	tst r0, #2
	movne r0, r6
	moveq r0, r5
	tst r0, #0xff
	beq _022F7278
	ldrsh r0, [sl, #0xc]
	bl IsShaymin
	cmp r0, #0
	beq _022F726C
	mov r0, r4
	bl ov29_0231B4AC
	cmp r0, #0
	beq _022F726C
	mov r0, fp
	mov r1, #0
	bl LoadMonsterSprite
	b _022F7278
_022F726C:
	ldrsh r0, [sl, #0xc]
	mov r1, #0
	bl LoadMonsterSprite
_022F7278:
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, asr #0x10
	cmp sb, #4
	blt _022F7204
	ldr r0, _022F72F8 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	cmp r0, #0x6e
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r7, #0
	mov r6, #1
	mov r5, r7
	mov r4, r6
_022F72B4:
	mov r0, r7
	bl GetExplorerMazeMonster
	ldrb r1, [r0]
	tst r1, #1
	movne r1, r6
	moveq r1, r5
	tst r1, #0xff
	beq _022F72E0
	ldrsh r0, [r0, #4]
	mov r1, r4
	bl LoadMonsterSprite
_022F72E0:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #4
	blt _022F72B4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F72F8: .word 0x02353538
_022F72FC: .word 0x00000483
_022F7300: .word 0x00000229
_022F7304: .word 0x00000217
	arm_func_end ov29_022F7130

	arm_func_start ov29_022F7308
ov29_022F7308: ; 0x022F7308
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r4, _022F7360 ; =0x02353538
	mov r5, r6
_022F7318:
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	cmp r7, #0
	beq _022F7350
	mov r0, r7
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022F7350
	ldr r0, [r7, #0xb4]
	mov r1, r5
	ldrsh r0, [r0, #4]
	bl LoadMonsterSprite
_022F7350:
	add r6, r6, #1
	cmp r6, #0x14
	blt _022F7318
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F7360: .word 0x02353538
	arm_func_end ov29_022F7308

	arm_func_start EntityIsValid__022F7364
EntityIsValid__022F7364: ; 0x022F7364
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__022F7364

	arm_func_start GetSpriteIndex__022F7388
GetSpriteIndex__022F7388: ; 0x022F7388
	ldr r2, _022F73A0 ; =0x02353538
	ldr r1, _022F73A4 ; =0x00019914
	ldr r2, [r2]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_022F73A0: .word 0x02353538
_022F73A4: .word 0x00019914
	arm_func_end GetSpriteIndex__022F7388

	arm_func_start JoinedAtRangeCheck2Veneer
JoinedAtRangeCheck2Veneer: ; 0x022F73A8
	ldr ip, _022F73B0 ; =JoinedAtRangeCheck2
	bx ip
	.align 2, 0
_022F73B0: .word JoinedAtRangeCheck2
	arm_func_end JoinedAtRangeCheck2Veneer

	arm_func_start FloorNumberIsEven
FloorNumberIsEven: ; 0x022F73B4
	ldr r0, _022F73E8 ; =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x748]
	cmp r0, #0x5b
	ldreqb r0, [r1, #0x749]
	cmpeq r0, #0xa
	moveq r0, #0
	bxeq lr
	ldrb r0, [r1, #0x749]
	tst r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022F73E8: .word 0x02353538
	arm_func_end FloorNumberIsEven

	arm_func_start GetKecleonIdToSpawnByFloor
GetKecleonIdToSpawnByFloor: ; 0x022F73EC
	stmdb sp!, {r3, lr}
	bl FloorNumberIsEven
	cmp r0, #0
	ldrne r0, _022F7404 ; =0x000003D7
	ldreq r0, _022F7408 ; =0x0000017F
	ldmia sp!, {r3, pc}
	.align 2, 0
_022F7404: .word 0x000003D7
_022F7408: .word 0x0000017F
	arm_func_end GetKecleonIdToSpawnByFloor

	arm_func_start ov29_022F740C
ov29_022F740C: ; 0x022F740C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _022F74D0 ; =0x02353538
	mov r7, r0
	ldr r2, [r2]
	mov r6, r1
	add r1, r2, #0x114
	add r5, r1, #0x19800
	bl GetSpriteIndex__020526EC
	mov r4, r0
	mov r1, r7, lsl #1
	mov r0, r7
	strh r6, [r5, r1]
	bl GetMonsterGender
	cmp r0, #3
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0x258
	bge _022F7490
	add r6, r7, #0x258
	mov r1, r6, lsl #0x10
	mov r0, r7
	mov r1, r1, asr #0x10
	bl GendersEqualNotGenderless
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	bl GetSpriteIndex__020526EC
	cmp r4, r0
	moveq r0, r7, lsl #1
	ldreqsh r1, [r5, r0]
	moveq r0, r6, lsl #1
	streqh r1, [r5, r0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022F7490:
	sub r6, r7, #0x258
	mov r1, r6, lsl #0x10
	mov r0, r7
	mov r1, r1, asr #0x10
	bl GendersEqualNotGenderless
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	bl GetSpriteIndex__020526EC
	cmp r4, r0
	moveq r0, r7, lsl #1
	ldreqsh r1, [r5, r0]
	moveq r0, r6, lsl #1
	streqh r1, [r5, r0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F74D0: .word 0x02353538
	arm_func_end ov29_022F740C

	arm_func_start ov29_022F74D4
ov29_022F74D4: ; 0x022F74D4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r1, _022F75C4 ; =0x02353538
	mov r6, r0
	ldr r2, [r1]
	ldr r1, _022F75C8 ; =0x00019914
	add r2, r2, r6, lsl #1
	ldrsh r1, [r2, r1]
	cmp r1, #0
	bne _022F75BC
	bl GetSpriteIndex__020526EC
	mov r4, r0
	mov r0, r6
	bl IsShaymin
	cmp r0, #0
	beq _022F756C
	mov r0, r6
	bl IsShaymin
	cmp r0, #0
	mov r0, r6
	movne r5, #0
	bl GetSpriteFileSize
	mov r1, #0
	bl MemAlloc
	ldr r2, _022F75CC ; =0x0237C9B0
	mov r1, #1
	str r0, [r2, r5, lsl #2]
	str r1, [sp]
	ldr r0, _022F75D0 ; =0x020AFC68
	ldr r3, [r2, r5, lsl #2]
	ldr r0, [r0]
	mov r2, r4
	mov r1, #0
	bl sub_0201D590
	mov r1, r0
	mov r0, r6
	bl ov29_022F740C
	b _022F7598
_022F756C:
	mov r1, #1
	ldr r0, _022F75D0 ; =0x020AFC68
	str r1, [sp]
	mov r1, #0
	ldr r0, [r0]
	mov r2, r4
	mov r3, r1
	bl sub_0201D484
	mov r1, r0
	mov r0, r6
	bl ov29_022F740C
_022F7598:
	mov r1, r4
	mov r0, #0
	bl GetFileLengthInPackWithPackNb
	ldr r1, _022F75C4 ; =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x2c000
	ldr r2, [r1, #0xb0c]
	add r0, r2, r0
	str r0, [r1, #0xb0c]
_022F75BC:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_022F75C4: .word 0x02353538
_022F75C8: .word 0x00019914
_022F75CC: .word 0x0237C9B0
_022F75D0: .word 0x020AFC68
	arm_func_end ov29_022F74D4

	arm_func_start ov29_022F75D4
ov29_022F75D4: ; 0x022F75D4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r2, _022F764C ; =0x02353538
	mov r5, r1
	ldr r1, [r2]
	mov r6, r0
	add r1, r1, #0x114
	mov r0, r5
	add r4, r1, #0x19800
	bl GetSpriteIndex__020526EC
	mov r1, #1
	str r1, [sp]
	mov r1, r6, lsl #1
	ldr r2, _022F7650 ; =0x020AFC68
	mov r3, r0
	ldrsh r1, [r4, r1]
	ldr r0, [r2]
	mov r2, #0
	bl ReplaceWanFromBinFile
	mov r1, r0
	mov r0, r5
	bl ov29_022F740C
	mov r3, r6, lsl #1
	ldrsh r2, [r4, r3]
	mov r1, r5, lsl #1
	mov r0, #0
	strh r2, [r4, r1]
	strh r0, [r4, r3]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_022F764C: .word 0x02353538
_022F7650: .word 0x020AFC68
	arm_func_end ov29_022F75D4

	arm_func_start LoadMonsterSprite
LoadMonsterSprite: ; 0x022F7654
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	bne _022F769C
	ldr r0, _022F7748 ; =0xFFFFFE5E
	add r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #3
	bhi _022F769C
	ldr r0, _022F774C ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x3e00
	ldrsh r0, [r0, #0x3a]
	bl ov29_022F74D4
	ldmia sp!, {r4, pc}
_022F769C:
	mov r0, r4
	bl ov29_022F74D4
	ldr r1, _022F7750 ; =0x0000017B
	cmp r4, r1
	cmpne r4, #0x17c
	addne r0, r1, #2
	cmpne r4, r0
	addne r0, r1, #3
	cmpne r4, r0
	beq _022F76E4
	ldr r0, _022F7754 ; =0xFFFFFC2D
	add r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #3
	bhi _022F7704
_022F76E4:
	ldr r0, _022F7750 ; =0x0000017B
	bl ov29_022F74D4
	mov r0, #0x17c
	bl ov29_022F74D4
	ldr r0, _022F7758 ; =0x0000017D
	bl ov29_022F74D4
	ldr r0, _022F775C ; =0x0000017E
	bl ov29_022F74D4
_022F7704:
	cmp r4, #0x1cc
	ldrne r0, _022F7760 ; =0x000001CD
	cmpne r4, r0
	beq _022F7734
	ldr r0, _022F7764 ; =0xFFFFFBDC
	add r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	ldmhiia sp!, {r4, pc}
_022F7734:
	mov r0, #0x1cc
	bl ov29_022F74D4
	ldr r0, _022F7760 ; =0x000001CD
	bl ov29_022F74D4
	ldmia sp!, {r4, pc}
	.align 2, 0
_022F7748: .word 0xFFFFFE5E
_022F774C: .word 0x02353538
_022F7750: .word 0x0000017B
_022F7754: .word 0xFFFFFC2D
_022F7758: .word 0x0000017D
_022F775C: .word 0x0000017E
_022F7760: .word 0x000001CD
_022F7764: .word 0xFFFFFBDC
	arm_func_end LoadMonsterSprite

	arm_func_start ov29_022F7768
ov29_022F7768: ; 0x022F7768
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _022F77F4 ; =0x02353538
	mov r5, r0
	ldr r1, [r1]
	ldr r0, _022F77F8 ; =0x00019914
	add r1, r1, r5, lsl #1
	ldrsh r1, [r1, r0]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _022F77FC ; =0x020AFC68
	ldr r0, [r0]
	bl DeleteWanTableEntryVeneer
	ldr r0, _022F77F4 ; =0x02353538
	ldr r1, _022F77F8 ; =0x00019914
	ldr r2, [r0]
	mov r3, #0
	add r2, r2, r5, lsl #1
	mov r0, r5
	strh r3, [r2, r1]
	bl IsShaymin
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl IsShaymin
	cmp r0, #0
	ldr r0, _022F7800 ; =0x0237C9B0
	movne r4, #0
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl MemFree
	ldr r0, _022F7800 ; =0x0237C9B0
	mov r1, #0
	str r1, [r0, r4, lsl #2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022F77F4: .word 0x02353538
_022F77F8: .word 0x00019914
_022F77FC: .word 0x020AFC68
_022F7800: .word 0x0237C9B0
	arm_func_end ov29_022F7768

	arm_func_start ov29_022F7804
ov29_022F7804: ; 0x022F7804
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, _022F7830 ; =0x00000483
	mov r5, #0
_022F7810:
	mov r0, r5
	bl ov29_022F7768
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	cmp r4, r0, asr #16
	mov r5, r0, asr #0x10
	bgt _022F7810
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022F7830: .word 0x00000483
	arm_func_end ov29_022F7804

	arm_func_start ov29_022F7834
ov29_022F7834: ; 0x022F7834
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #0
	mov r5, r0
	mov r8, r4
	mov r6, r4
	mov r7, #1
_022F784C:
	mov r0, r8
	bl GetActiveTeamMember
	ldrb r0, [r0]
	tst r0, #1
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	addne r4, r4, #1
	cmp r8, #4
	blt _022F784C
	cmp r4, #4
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r8, r7
	mov r4, r7
	mov r6, #1
_022F78A8:
	mov r0, r8
	bl GetActiveTeamMember
	ldrb r1, [r0]
	tst r1, #1
	movne r1, r6
	moveq r1, r4
	tst r1, #0xff
	beq _022F78D4
	ldrsh r0, [r0, #0xc]
	bl GetBodySize
	add r7, r7, r0
_022F78D4:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #4
	blt _022F78A8
	ldrsh r0, [r5, #4]
	bl GetBodySize
	add r0, r7, r0
	cmp r0, #6
	movgt r0, #1
	movle r0, #0
	tst r0, #0xff
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov29_022F7834

	arm_func_start ov29_022F7910
ov29_022F7910: ; 0x022F7910
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x54
	mov sl, r0
	ldrb r0, [sl]
	mov r5, #0
	tst r0, #1
	movne r0, #1
	moveq r0, r5
	tst r0, #0xff
	ldrnesh r0, [sl, #4]
	cmpne r0, #0
	moveq r0, #0
	beq _022F7BCC
	ldrb r0, [sl, #2]
	cmp r0, #0xfa
	movne r0, #0
	bne _022F7BCC
	b _022F7AA4
_022F7958:
	mov r0, sl
	bl ov29_022F7834
	cmp r0, #0
	beq _022F7AA0
	ldrsh r1, [sl, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldr r1, _022F7BD4 ; =0x00000C0D
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	mov sb, #0
	mov r7, sb
	bl StoryRestrictionsEnabled
	cmp r0, #0
	movne sb, #1
	mov r8, #0
	mov fp, #1
	add r4, sp, #0x44
_022F79A4:
	mov r0, r8
	bl GetActiveTeamMember
	mov r6, r0
	ldrb r0, [r6]
	tst r0, #1
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	beq _022F7A14
	ldrb r0, [r6, #1]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _022F7A14
	cmp sb, #0
	beq _022F7A0C
	ldrb r0, [r6, #3]
	cmp r0, #0xd6
	moveq r1, #1
	movne r1, #0
	tst r1, #0xff
	bne _022F7A14
	bl JoinedAtRangeCheck2
	cmp r0, #0
	bne _022F7A14
_022F7A0C:
	str r6, [r4, r7, lsl #2]
	add r7, r7, #1
_022F7A14:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #4
	blt _022F79A4
	cmp r7, #0
	beq _022F7AAC
	add r0, sp, #0x44
	mov r1, r7
	bl ov29_0234EF24
	movs r4, r0
	beq _022F7AA4
	add r0, sp, #4
	mov r1, r4
	bl sub_020585B4
	add r1, sp, #4
	mov r0, #1
	bl ov29_0234B0B4
	mov r0, #0
	mov r3, #1
	ldr r1, _022F7BD8 ; =0x00000C0E
	mov r2, r0
	str r3, [sp]
	bl ov29_0234D518
	cmp r0, #1
	bne _022F7AA4
	ldr r1, _022F7BDC ; =0x00000C0F
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	ldrsh r0, [r4, #8]
	bl sub_020566C4
	mov r0, #0
	strb r0, [r4]
	b _022F7AA4
_022F7AA0:
	mov r5, #1
_022F7AA4:
	cmp r5, #0
	beq _022F7958
_022F7AAC:
	cmp r5, #0
	bne _022F7AD8
	ldrsh r1, [sl, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldr r1, _022F7BE0 ; =0x00000C0C
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	mov r0, #0
	b _022F7BCC
_022F7AD8:
	mov r4, #0
	mov r6, r4
	mov r7, #1
	b _022F7BA4
_022F7AE8:
	mov r0, r4
	bl GetActiveTeamMember
	mov r5, r0
	ldrb r0, [r5]
	tst r0, #1
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	bne _022F7B98
	ldr r2, _022F7BE4 ; =0x000055AA
	mov r0, r5
	mov r1, sl
	mov r3, r4
	bl sub_02053250
	ldr r0, _022F7BE8 ; =0x020B0A48
	mov r1, r4, lsl #1
	ldr r0, [r0]
	mvn r3, #0
	add r0, r0, #0x9000
	ldr r2, [r0, #0x870]
	ldr r0, _022F7BEC ; =0x020A1C7C
	strh r3, [r2, r1]
	ldrb r2, [r5]
	ldr r1, [r0, #0x20]
	orr r0, r2, #1
	strb r0, [r5]
	ldrsh r0, [r5, #6]
	cmp r0, r1
	bge _022F7B70
	strh r1, [r5, #6]
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #6]
	add r0, r5, #0x4c
	bl sub_02058EB0
_022F7B70:
	ldrb r1, [r5]
	add r0, r5, #0x3e
	orr r1, r1, #2
	strb r1, [r5]
	strh r4, [r5, #0xa]
	bl ItemZInit
	ldrsh r1, [sl, #4]
	mov r0, #0
	bl ov29_0234B06C
	b _022F7BAC
_022F7B98:
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
_022F7BA4:
	cmp r4, #4
	blt _022F7AE8
_022F7BAC:
	ldrsh r1, [sl, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldr r1, _022F7BF0 ; =0x00000C12
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	mov r0, #1
_022F7BCC:
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F7BD4: .word 0x00000C0D
_022F7BD8: .word 0x00000C0E
_022F7BDC: .word 0x00000C0F
_022F7BE0: .word 0x00000C0C
_022F7BE4: .word 0x000055AA
_022F7BE8: .word 0x020B0A48
_022F7BEC: .word 0x020A1C7C
_022F7BF0: .word 0x00000C12
	arm_func_end ov29_022F7910

	arm_func_start ov29_022F7BF4
ov29_022F7BF4: ; 0x022F7BF4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldrb r0, [r6]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	ldrnesh r0, [r6, #4]
	cmpne r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _022F7E18 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl IsRecruitingAllowed
	cmp r0, #0
	ldrne r0, _022F7E18 ; =0x02353538
	ldrne r0, [r0]
	ldrneb r0, [r0, #0x759]
	cmpne r0, #0
	bne _022F7C7C
	ldrb r0, [r6, #2]
	cmp r0, #0xd9
	blo _022F7C5C
	cmp r0, #0xe4
	blo _022F7C7C
_022F7C5C:
	ldrsh r1, [r6, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldr r1, _022F7E1C ; =0x00000C0B
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F7E10
_022F7C7C:
	mov r0, r6
	bl ov29_022F7834
	cmp r0, #0
	beq _022F7CD4
	ldrsh r1, [r6, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldrb r0, [r6, #2]
	cmp r0, #0xd9
	blo _022F7CC0
	cmp r0, #0xe4
	bhs _022F7CC0
	mov r0, #0
	mov r1, #0xc10
	mov r2, #1
	bl DisplayMessage2
	b _022F7E10
_022F7CC0:
	ldr r1, _022F7E20 ; =0x00000C0A
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F7E10
_022F7CD4:
	mov r4, #0
	mov r7, r4
	mov r8, #1
	b _022F7DC4
_022F7CE4:
	mov r0, r4
	bl GetActiveTeamMember
	mov r5, r0
	ldrb r0, [r5]
	tst r0, #1
	movne r0, r8
	moveq r0, r7
	tst r0, #0xff
	bne _022F7DB8
	ldr r2, _022F7E24 ; =0x000055AA
	mov r0, r5
	mov r1, r6
	mov r3, r4
	bl sub_02053250
	ldr r0, _022F7E28 ; =0x020B0A48
	mov r1, r4, lsl #1
	ldr r0, [r0]
	mvn r3, #0
	add r0, r0, #0x9000
	ldr r2, [r0, #0x870]
	ldr r0, _022F7E2C ; =0x020A1C7C
	strh r3, [r2, r1]
	ldrb r2, [r5]
	ldr r1, [r0, #0x20]
	orr r0, r2, #1
	strb r0, [r5]
	ldrsh r0, [r5, #6]
	cmp r0, r1
	bge _022F7D6C
	strh r1, [r5, #6]
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #6]
	add r0, r5, #0x4c
	bl sub_02058EB0
_022F7D6C:
	ldrb r1, [r5]
	add r0, r5, #0x3e
	orr r1, r1, #2
	strb r1, [r5]
	strh r4, [r5, #0xa]
	bl ItemZInit
	ldrsh r1, [r6, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldrb r0, [r6, #2]
	cmp r0, #0xd9
	blo _022F7DA4
	cmp r0, #0xe4
	blo _022F7E10
_022F7DA4:
	ldr r1, _022F7E30 ; =0x00000C11
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F7E10
_022F7DB8:
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
_022F7DC4:
	cmp r4, #4
	blt _022F7CE4
	ldrsh r1, [r6, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldrb r0, [r6, #2]
	cmp r0, #0xd9
	blo _022F7E00
	cmp r0, #0xe4
	bhs _022F7E00
	mov r0, #0
	mov r1, #0xc10
	mov r2, #1
	bl DisplayMessage2
	b _022F7E10
_022F7E00:
	ldr r1, _022F7E20 ; =0x00000C0A
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
_022F7E10:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022F7E18: .word 0x02353538
_022F7E1C: .word 0x00000C0B
_022F7E20: .word 0x00000C0A
_022F7E24: .word 0x000055AA
_022F7E28: .word 0x020B0A48
_022F7E2C: .word 0x020A1C7C
_022F7E30: .word 0x00000C11
	arm_func_end ov29_022F7BF4

	arm_func_start ov29_022F7E34
ov29_022F7E34: ; 0x022F7E34
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, #0
	mov r6, r8
	mov r7, #1
	mov r4, r8
	mov r5, r8
_022F7E4C:
	mov r0, r8
	bl GetActiveTeamMember
	mov sb, r0
	ldrb r0, [sb]
	tst r0, #1
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	beq _022F7E94
	ldrsh r0, [sb, #8]
	bl sub_02056264
	cmp r0, #0
	strneb r5, [sb]
	bne _022F7E94
	ldrsh r0, [sb, #8]
	bl CheckTeamMemberIdx__02056228
	cmp r0, #0
	strneb r4, [sb]
_022F7E94:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #4
	blt _022F7E4C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022F7E34

	arm_func_start ov29_022F7EAC
ov29_022F7EAC: ; 0x022F7EAC
	stmdb sp!, {r3, r4, r5, lr}
	bl GetLeader
	ldr r1, _022F7F04 ; =0x02353538
	mov r2, #0
	ldr r5, [r1]
	movs r4, r0
	strb r2, [r5, #0x78b]
	strb r2, [r5, #0x78c]
	strb r2, [r5, #0x78e]
	str r2, [r5, #0xcc]
	ldmeqia sp!, {r3, r4, r5, pc}
	bl GetTileAtEntity
	ldrh r0, [r0]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	strb r0, [r5, #0x7c8]
	and r1, r0, #0xff
	add r0, r4, #4
	strb r1, [r5, #0x7c9]
	bl ov29_02337A3C
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022F7F04: .word 0x02353538
	arm_func_end ov29_022F7EAC

	arm_func_start ov29_022F7F08
ov29_022F7F08: ; 0x022F7F08
	stmdb sp!, {r3, lr}
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _022F7F28
	bl GetForcedLossReason
	cmp r0, #1
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
_022F7F28:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022F7F08

	arm_func_start HandleFaint
HandleFaint: ; 0x022F7F30
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xbc
	mov sl, r0
	mov r8, r2
	mov sb, r1
	ldr r7, [sl, #0xb4]
	bl GetTileAtEntity
	mov r4, r0
	cmp r8, #0
	bne _022F7F64
	add r0, sp, #4
	bl ov29_022E2470
	add r8, sp, #4
_022F7F64:
	ldr r0, [r4, #0xc]
	cmp r0, sl
	moveq r0, #0
	streq r0, [r4, #0xc]
	ldrsh r0, [sl, #4]
	ldrsh r1, [sl, #6]
	bl ov29_023391EC
	mov r5, #0
	ldr fp, _022F85D0 ; =0x02353538
	mov r4, r5
_022F7F8C:
	ldr r0, [fp]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	cmp r6, #0
	beq _022F7FC4
	mov r0, r6
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022F7FC4
	ldr r1, [r6, #0xb4]
	ldr r0, [r1, #0x84]
	cmp r0, sl
	streq r4, [r1, #0x84]
_022F7FC4:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022F7F8C
	ldrb r0, [r7, #0xd8]
	cmp r0, #2
	ldreq r0, _022F85D0 ; =0x02353538
	moveq r1, #0
	ldreq r0, [r0]
	addeq r0, r0, #0x3000
	streqb r1, [r0, #0xe38]
	ldrb r0, [r7, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _022F8008
	ldr r0, [r7, #0xb4]
	bl FreeOtherWrappedMonsters
_022F8008:
	mov r0, sl
	bl ov29_023159D4
	mov r1, #0
	strb r1, [sl, #0x22]
	ldr r0, _022F85D4 ; =0x0235355C
	strb r1, [sl, #0x20]
	str r1, [r0]
	ldrb r0, [r7, #7]
	cmp r0, #0
	bne _022F8098
	ldrb r0, [r7, #0x48]
	bl JoinedAtRangeCheck2
	cmp r0, #0
	beq _022F8098
	bl StoryRestrictionsEnabled
	cmp r0, #0
	beq _022F8098
	mov r0, #1
	bl SetForcedLossReason
	mov r2, #0
	ldr r0, _022F85D0 ; =0x02353538
	strh r2, [r7, #0x10]
	ldr r0, [r0]
	mov r1, sl
	add r0, r0, #0x248
	add r0, r0, #0x400
	bl ov29_022E2A78
	ldr r0, _022F85D0 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75f]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r7, #0x165]
	bl ov29_022E8104
	bl ov29_022E81F8
	b _022F85C8
_022F8098:
	ldrb r0, [r7, #7]
	cmp r0, #0
	beq _022F83B4
	mov r0, #0
	bl ov29_0234B1A4
	ldr r0, _022F85D0 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75f]
	cmp r0, #0
	bne _022F80F4
	bl GetForcedLossReason
	cmp r0, #1
	mov r0, #1
	streqb r0, [sl, #0x20]
	strneb r0, [r7, #0x165]
	bl ov29_022E8104
	bl ov29_022E81F8
	mov r0, #0x3c
	mov r1, #0x49
	bl ov29_022EA370
	mov r0, #0
	mov r1, r0
	bl OpenMessageLog
_022F80F4:
	ldr r1, _022F85D0 ; =0x02353538
	ldr r2, [r1]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _022F825C
	mov r4, #0
	bl IsOutlawOrChallengeRequestFloor
	cmp r0, #0
	bne _022F8234
	bl GetForcedLossReason
	cmp r0, #4
	beq _022F8234
	ldr r0, _022F85D0 ; =0x02353538
	ldr r2, [r0]
	ldrb r0, [r2, #0x790]
	cmp r0, #0
	bne _022F8234
	ldr r1, _022F85D8 ; =0x0000025B
	cmp sb, r1
	addne r0, r1, #6
	cmpne sb, r0
	addne r0, r1, #0xb
	cmpne sb, r0
	addne r0, r1, #2
	cmpne sb, r0
	beq _022F8234
	add r0, r2, #0x4000
	ldrb r0, [r0, #0xca]
	cmp r0, #0
	bne _022F8234
	add r0, r2, #0x700
	ldrsb r2, [r0, #0x9b]
	cmp r2, #0
	blt _022F8234
	ldrsb r0, [r0, #0x98]
	cmp r0, #3
	cmpne r0, #2
	beq _022F8234
	cmp r2, #0
	ble _022F8220
	mov r0, r4
	mov r3, #1
	ldr r1, _022F85DC ; =0x00000C13
	mov r2, r0
	str r3, [sp]
	bl ov29_0234D518
	cmp r0, #1
	bne _022F8208
	ldr r1, _022F85E0 ; =0x00000C14
	mov r0, r4
	mov r2, #1
	bl DisplayMessage
	ldr r1, _022F85D0 ; =0x02353538
	mov r0, #1
	ldr r2, [r1]
	strb r0, [r2, #8]
	ldr r2, [r1]
	strb r0, [r2, #0xa]
	ldr r2, [r1]
	strb r0, [r2, #0x758]
	ldr r2, [r1]
	add r1, r2, #0x700
	ldrsb r1, [r1, #0x9b]
	sub r1, r1, #1
	strb r1, [r2, #0x79b]
	bl ov29_0234B010
	bl ov29_022E8104
	bl ov29_022E81F8
	b _022F85C8
_022F8208:
	cmp r0, #2
	bne _022F8240
	mov r0, r7
	bl ov29_022F7F08
	mov r4, r0
	b _022F8240
_022F8220:
	rsb r1, r1, #0xe70
	mov r0, r4
	mov r2, #1
	bl DisplayMessage2
	b _022F8240
_022F8234:
	mov r0, r7
	bl ov29_022F7F08
	mov r4, r0
_022F8240:
	mov r0, #1
	bl ov29_0234B010
	cmp r4, #0
	beq _022F8284
	mov r0, sl
	bl ov29_022E68BC
	b _022F8284
_022F825C:
	mov r0, #1
	strb r0, [r2, #8]
	ldr r2, [r1]
	strb r0, [r2, #0xa]
	ldr r1, [r1]
	strb r0, [r1, #0x758]
	bl ov29_0234B010
	bl ov29_022E8104
	bl ov29_022E81F8
	b _022F85C8
_022F8284:
	ldr r0, _022F85E4 ; =0x00000266
	cmp sb, r0
	bne _022F82B4
	ldr r1, _022F85D0 ; =0x02353538
	mov r0, sb
	ldr r2, [r1]
	mov r1, r8
	add r3, r2, #0x248
	mov r2, sl
	add r3, r3, #0x400
	bl ov29_022ECDE4
	b _022F82C8
_022F82B4:
	mov r0, sb
	mov r1, r8
	mov r2, sl
	mov r3, #0
	bl ov29_022ECDE4
_022F82C8:
	ldr r0, _022F85E8 ; =0x0000025E
	cmp sb, r0
	bne _022F83B4
	mov r5, #0
	mov r4, r5
	ldr r6, _022F85D0 ; =0x02353538
	b _022F8328
_022F82E4:
	ldr r0, [r6]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb28]
	mov r0, r8
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022F8324
	ldr r5, [r8, #0xb4]
	ldrsh r0, [r5, #0x10]
	cmp r0, #0
	bne _022F8324
	ldrb r0, [r5, #0x48]
	bl JoinedAtRangeCheck2
	cmp r0, #0
	bne _022F8330
_022F8324:
	add r4, r4, #1
_022F8328:
	cmp r4, #4
	blt _022F82E4
_022F8330:
	cmp r5, #0
	beq _022F83B4
	ldrsh r0, [r5, #0xc]
	bl GetActiveTeamMember
	mov r4, r0
	ldrsh r0, [r5, #0xc]
	mov r1, r5
	bl ov29_022FE048
	ldrsh r0, [r4, #8]
	bl IsMonsterIdInNormalRange__02056294
	cmp r0, #0
	beq _022F83A8
	ldr r0, _022F85D0 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl IsLevelResetDungeon
	cmp r0, #0
	bne _022F83A8
	ldr r0, _022F85D0 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsb r0, [r0, #0x98]
	cmp r0, #3
	beq _022F83A8
	ldrsh r0, [r5, #0xc]
	mvn r1, #0
	bl sub_02058674
	ldrsh r0, [r4, #8]
	mov r1, r4
	bl sub_0205349C
_022F83A8:
	ldrb r0, [r4]
	orr r0, r0, #8
	strb r0, [r4]
_022F83B4:
	mov r0, sl
	mov r1, #1
	bl ov29_022E1C0C
	ldrb r0, [r7, #6]
	cmp r0, #0
	ldrne r0, _022F85D8 ; =0x0000025B
	cmpne sb, r0
	beq _022F83F4
	ldrb r0, [r7, #0xbc]
	bl ov29_022EFAE8
	cmp r0, #0
	beq _022F83F4
	mov r0, #1
	bl SetMissionTargetEnemyDefeated
	mov r0, #1
	bl ov29_02349688
_022F83F4:
	ldrb r0, [r7, #0x48]
	cmp r0, #0xfa
	bne _022F8428
	mov r0, #2
	bl SetForcedLossReason
	ldr r0, _022F85D0 ; =0x02353538
	mov r1, sl
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x248
	add r0, r0, #0x400
	bl ov29_022E2A78
	b _022F8460
_022F8428:
	cmp r0, #0xe3
	beq _022F8460
	bl JoinedAtRangeCheck
	cmp r0, #0
	beq _022F8460
	mov r0, #3
	bl SetForcedLossReason
	ldr r0, _022F85D0 ; =0x02353538
	mov r1, sl
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x248
	add r0, r0, #0x400
	bl ov29_022E2A78
_022F8460:
	bl GetLeader
	cmp r0, #0
	ldrne r0, _022F85D8 ; =0x0000025B
	cmpne sb, r0
	beq _022F84AC
	ldrb r0, [r7, #7]
	cmp r0, #0
	bne _022F84AC
	bl GetForcedLossReason
	cmp r0, #0
	bne _022F84AC
	ldr r0, _022F85EC ; =0x00000233
	ldrb r1, [r7, #0xbc]
	cmp sb, r0
	moveq r2, #1
	movne r2, #0
	mov r0, sl
	and r2, r2, #0xff
	bl ov29_022EF7C4
_022F84AC:
	ldrb r0, [r7, #6]
	cmp r0, #0
	bne _022F8594
	ldrsh r0, [r7, #0xc]
	bl GetActiveTeamMember
	mov r4, r0
	ldrsh r0, [r7, #0xc]
	mov r1, r7
	bl ov29_022FE048
	ldrsh r0, [r4, #8]
	bl IsMonsterIdInNormalRange__02056294
	cmp r0, #0
	beq _022F856C
	ldr r0, _022F85D0 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl IsLevelResetDungeon
	cmp r0, #0
	bne _022F8528
	ldr r0, _022F85D0 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsb r0, [r0, #0x98]
	cmp r0, #3
	beq _022F8528
	ldrsh r0, [r7, #0xc]
	mvn r1, #0
	bl sub_02058674
	ldrsh r0, [r4, #8]
	mov r1, r4
	bl sub_0205349C
_022F8528:
	ldrb r0, [r7, #7]
	mov r5, #0
	cmp r0, #0
	ldr r0, _022F85D0 ; =0x02353538
	movne r5, #1
	ldr r0, [r0]
	ldrb r0, [r0, #0x75c]
	cmp r0, #0
	bne _022F855C
	ldrb r0, [r7, #0x48]
	bl JoinedAtRangeCheck2
	cmp r0, #0
	movne r5, #1
_022F855C:
	cmp r5, #0
	bne _022F856C
	ldrsh r0, [r4, #8]
	bl sub_020566C4
_022F856C:
	ldrb r0, [r7, #7]
	cmp r0, #0
	ldrneb r0, [r4]
	orrne r0, r0, #8
	strneb r0, [r4]
	bne _022F8594
	add r0, r7, #0x62
	bl sub_0200FB54
	mov r0, #0
	strb r0, [r4]
_022F8594:
	ldr r0, [r7, #0xb0]
	bl ov29_022DDB68
	ldr r0, _022F85D0 ; =0x02353538
	ldr r1, _022F85D4 ; =0x0235355C
	mov r2, #0
	ldr r0, [r0]
	str r2, [r1]
	mov r1, #1
	strb r1, [r0, #0xe]
	str r2, [sl]
	bl ov29_022E2978
	bl ov29_022E8104
	bl ov29_022E81F8
_022F85C8:
	add sp, sp, #0xbc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F85D0: .word 0x02353538
_022F85D4: .word 0x0235355C
_022F85D8: .word 0x0000025B
_022F85DC: .word 0x00000C13
_022F85E0: .word 0x00000C14
_022F85E4: .word 0x00000266
_022F85E8: .word 0x0000025E
_022F85EC: .word 0x00000233
	arm_func_end HandleFaint

	arm_func_start ov29_022F85F0
ov29_022F85F0: ; 0x022F85F0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov r7, r2
	mov sb, r0
	mov r0, r8
	mov r1, r7
	mov r6, r3
	bl GetTileSafe
	ldr r5, [sb, #0xb4]
	mov r4, r0
	ldrb r0, [r5, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _022F8634
	ldr r0, [r5, #0xb4]
	bl FreeOtherWrappedMonsters
_022F8634:
	ldrb r0, [r5, #0xc4]
	cmp r0, #7
	cmpne r0, #5
	cmpne r0, #2
	bne _022F8658
	mov r0, sb
	mov r1, sb
	mov r2, #1
	bl EndFrozenClassStatus
_022F8658:
	ldrsh r1, [sb, #4]
	cmp r8, r1
	ldreqsh r0, [sb, #6]
	cmpeq r7, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r1, #0
	ldrgesh r2, [sb, #6]
	cmpge r2, #0
	blt _022F8690
	mov r0, sb
	bl ov29_02337EC0
	ldrsh r0, [sb, #4]
	ldrsh r1, [sb, #6]
	bl ov29_023391EC
_022F8690:
	ldrsh r2, [sb, #4]
	mov r0, r8, lsl #0x10
	mov r1, r7, lsl #0x10
	strh r2, [sb, #8]
	ldrsh r2, [sb, #6]
	mov r0, r0, asr #0x10
	mov r1, r1, asr #0x10
	strh r2, [sb, #0xa]
	strh r0, [sb, #4]
	strh r1, [sb, #6]
	ldrb r2, [r5, #7]
	cmp r2, #0
	beq _022F86C8
	bl ov29_02338F24
_022F86C8:
	str sb, [r4, #0xc]
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _022F86FC
	mov r0, r8, lsl #0x10
	mov r1, r7, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, asr #0x10
	bl ov29_02338F24
	ldr r0, _022F87BC ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #5]
_022F86FC:
	mov r0, r8
	mov r1, r7
	bl ov29_023391EC
	cmp r6, #0
	beq _022F871C
	cmp r6, #1
	beq _022F8768
	b _022F87A8
_022F871C:
	ldrh r0, [r5, #0x72]
	strh r0, [r5, #0x76]
	ldrh r0, [r5, #0x74]
	strh r0, [r5, #0x78]
	ldrh r0, [r5, #0x6e]
	strh r0, [r5, #0x72]
	ldrh r0, [r5, #0x70]
	strh r0, [r5, #0x74]
	ldrh r0, [r5, #0x6a]
	strh r0, [r5, #0x6e]
	ldrh r0, [r5, #0x6c]
	strh r0, [r5, #0x70]
	ldrb r0, [r5, #0xef]
	cmp r0, #1
	ldrneh r0, [sb, #8]
	strneh r0, [r5, #0x6a]
	ldrneh r0, [sb, #0xa]
	strneh r0, [r5, #0x6c]
	b _022F87A8
_022F8768:
	ldrh r0, [sb, #4]
	strh r0, [r5, #0x6a]
	ldrh r0, [sb, #6]
	strh r0, [r5, #0x6c]
	ldrh r0, [r5, #0x6a]
	strh r0, [r5, #0x6e]
	ldrh r0, [r5, #0x6c]
	strh r0, [r5, #0x70]
	ldrh r0, [r5, #0x6e]
	strh r0, [r5, #0x72]
	ldrh r0, [r5, #0x70]
	strh r0, [r5, #0x74]
	ldrh r0, [r5, #0x72]
	strh r0, [r5, #0x76]
	ldrh r0, [r5, #0x74]
	strh r0, [r5, #0x78]
_022F87A8:
	ldrb r1, [r4, #7]
	mov r0, sb
	strb r1, [sb, #0x25]
	bl ov29_02304BAC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022F87BC: .word 0x02353538
	arm_func_end ov29_022F85F0

	arm_func_start ov29_022F87C0
ov29_022F87C0: ; 0x022F87C0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0xb4]
	ldrb r1, [r5, #0x4c]
	bl CanAttackInDirection
	cmp r0, #0
	beq _022F8820
	ldrb r2, [r5, #0x4c]
	ldr r1, _022F8828 ; =0x0235171C
	ldr r0, _022F882C ; =0x0235171E
	mov ip, r2, lsl #2
	ldrsh lr, [r4, #4]
	ldrsh r3, [r1, ip]
	ldrsh r2, [r4, #6]
	ldrsh r1, [r0, ip]
	add r0, lr, r3
	add r1, r2, r1
	bl GetTile
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _022F8820
	ldr r1, [r0]
	cmp r1, #1
	ldmeqia sp!, {r3, r4, r5, pc}
_022F8820:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022F8828: .word 0x0235171C
_022F882C: .word 0x0235171E
	arm_func_end ov29_022F87C0

	arm_func_start ov29_022F8830
ov29_022F8830: ; 0x022F8830
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0xb4]
	ldr r0, _022F88B8 ; =0x0235171C
	ldrb r2, [r5, #0x4c]
	ldrsh r3, [r4, #4]
	ldr r1, _022F88BC ; =0x0235171E
	mov r2, r2, lsl #2
	ldrsh r0, [r0, r2]
	add r0, r3, r0
	strh r0, [sp]
	ldrb r2, [r5, #0x4c]
	ldrsh r3, [r4, #6]
	ldrsh r0, [sp]
	mov r2, r2, lsl #2
	ldrsh r1, [r1, r2]
	add r1, r3, r1
	strh r1, [sp, #2]
	ldrsh r1, [sp, #2]
	bl GetTile
	mov r5, r0
	add r1, sp, #0
	mov r0, r4
	bl ov29_022FFB90
	cmp r0, #0
	bne _022F88B0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _022F88B0
	ldr r1, [r0]
	cmp r1, #1
	ldmeqia sp!, {r3, r4, r5, pc}
_022F88B0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022F88B8: .word 0x0235171C
_022F88BC: .word 0x0235171E
	arm_func_end ov29_022F8830

	arm_func_start ov29_022F88C0
ov29_022F88C0: ; 0x022F88C0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	ldr r0, _022F89A4 ; =0x0235171C
	ldrb r2, [r4, #0x4c]
	ldrsh r3, [r5, #4]
	ldr r1, _022F89A8 ; =0x0235171E
	mov r2, r2, lsl #2
	ldrsh r0, [r0, r2]
	add r0, r3, r0
	strh r0, [sp]
	ldrb r2, [r4, #0x4c]
	ldrsh r3, [r5, #6]
	ldrsh r0, [sp]
	mov r2, r2, lsl #2
	ldrsh r1, [r1, r2]
	add r1, r3, r1
	strh r1, [sp, #2]
	ldrsh r1, [sp, #2]
	bl GetTile
	add r1, sp, #0
	mov r0, r5
	bl ov29_022FFB90
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r1, [r4, #0x4c]
	ldr r0, _022F89A4 ; =0x0235171C
	ldrsh r2, [r5, #4]
	mov r1, r1, lsl #2
	ldrsh r0, [r0, r1]
	ldr r1, _022F89A8 ; =0x0235171E
	add r0, r2, r0, lsl #1
	strh r0, [sp]
	ldrb r2, [r4, #0x4c]
	ldrsh r3, [r5, #6]
	ldrsh r0, [sp]
	mov r2, r2, lsl #2
	ldrsh r1, [r1, r2]
	add r1, r3, r1, lsl #1
	strh r1, [sp, #2]
	ldrsh r1, [sp, #2]
	bl GetTile
	mov r4, r0
	add r1, sp, #0
	mov r0, r5
	bl ov29_022FFB90
	cmp r0, #0
	bne _022F899C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022F899C
	ldr r1, [r0]
	cmp r1, #1
	ldmeqia sp!, {r3, r4, r5, pc}
_022F899C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022F89A4: .word 0x0235171C
_022F89A8: .word 0x0235171E
	arm_func_end ov29_022F88C0

	arm_func_start ov29_022F89AC
ov29_022F89AC: ; 0x022F89AC
	stmdb sp!, {r3, lr}
	mov r1, r0
	add r0, sp, #0
	bl ov29_022F8FF8
	ldrsh r0, [sp]
	ldrsh r1, [sp, #2]
	bl GetTile
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022F89AC

	arm_func_start ov29_022F89CC
ov29_022F89CC: ; 0x022F89CC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldr r5, [r6, #0xb4]
	mov r7, r0
	mov r1, r5
	add r0, r7, #2
	bl ov29_02300164
	ldrsh r1, [r5, #2]
	ldr r0, _022F8FF0 ; =0x000003E7
	mov r3, #0
	strh r1, [r7]
	ldrsh r1, [r5, #0x10]
	str r1, [r7, #0x24]
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	str r1, [r7, #0x28]
	ldrb r0, [r5, #0xa]
	str r0, [r7, #0x2c]
	ldr r0, [r5, #0x20]
	str r0, [r7, #0x30]
_022F8A28:
	add r2, r5, r3
	ldrb r0, [r2, #0x1a]
	add r1, r7, r3
	add r3, r3, #1
	strb r0, [r1, #0x34]
	ldrb r0, [r2, #0x1c]
	cmp r3, #2
	strb r0, [r1, #0x36]
	ldrb r0, [r2, #0x5e]
	strb r0, [r1, #0x16]
	ldrb r0, [r2, #0x60]
	strb r0, [r1, #0x18]
	blt _022F8A28
	ldrb r0, [r5, #7]
	mov r1, #0
	strb r0, [r7, #0x38]
	strb r1, [r7, #0x39]
	strb r1, [r7, #0x3a]
	strb r1, [r7, #0x3b]
	strb r1, [r7, #0x3c]
	ldrb r0, [r5, #0xd8]
	cmp r0, #4
	moveq r0, #1
	streqb r0, [r7, #0x45]
	strneb r1, [r7, #0x45]
	mov r0, r6
	mov r1, #0x6f
	bl AbilityIsActive2
	str r0, [sp]
	ldrsh r1, [r5, #2]
	ldrsh r3, [r5, #0xe]
	mov r0, r7
	add r2, r5, #0x62
	bl sub_0205A450
	ldrb r2, [r5, #0xa8]
	mov r1, #0
	add r0, r5, #0x90
	strb r2, [r7, #0x54]
	ldrh r2, [r5, #0x62]
	add r4, r7, #0x48
	ldr r3, _022F8FF4 ; =0x02353538
	strh r2, [r7, #0x1c]
	ldrh r2, [r5, #0x64]
	strh r2, [r7, #0x1e]
	ldrh r2, [r5, #0x66]
	strh r2, [r7, #0x20]
	ldrsh r2, [r5, #0xe]
	strh r2, [r7, #0x3e]
	ldrb r2, [r5, #0x48]
	strb r2, [r7, #0x1a]
	ldrb r2, [r5, #0x49]
	strb r2, [r7, #0x1b]
	strb r1, [r7, #0x42]
	strb r1, [r7, #0x43]
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r0, [r3]
	ldrb r0, [r0, #0x75a]
	cmp r0, #0
	moveq r0, #3
	beq _022F8B24
	mov r0, r5
	bl ov29_022F9B8C
_022F8B24:
	strb r0, [r7, #0x44]
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	ldr r0, _022F8FF0 ; =0x000003E7
	mov r4, #0
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	ldrsh r1, [r5, #0x10]
	sub r2, sp, #4
	cmp r1, r0, asr #2
	movle r0, #6
	strleb r0, [r7, #0x58]
	ldr r0, _022F8FF4 ; =0x02353538
	addle r4, r4, #1
	ldr r0, [r0]
	ldrb r0, [r0, #0x78d]
	cmp r0, #0
	addne r0, r7, r4
	movne r1, #0xb
	strneb r1, [r0, #0x58]
	add r0, r5, #0x100
	ldrh r1, [r0, #0x46]
	addne r4, r4, #1
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0
	bne _022F8BC4
	ldrb r0, [r5, #7]
	cmp r0, #0
	movne r1, #0x13
	add r0, r7, r4
	moveq r1, #0x42
	strb r1, [r0, #0x58]
	add r4, r4, #1
_022F8BC4:
	ldr r0, [r6, #0xb4]
	ldr r0, [r0, #0x110]
	cmp r0, #1
	addgt r0, r7, r4
	movgt r1, #0x1b
	strgtb r1, [r0, #0x58]
	ldr r0, [r6, #0xb4]
	addgt r4, r4, #1
	ldr r0, [r0, #0x110]
	cmp r0, #1
	addlt r0, r7, r4
	movlt r1, #0x29
	strltb r1, [r0, #0x58]
	ldr r0, [r5, #0x34]
	addlt r4, r4, #1
	cmp r0, #0x100
	ldrge r0, [r5, #0x38]
	cmpge r0, #0x100
	ldrge r0, [r5, #0x3c]
	cmpge r0, #0x100
	ldrge r0, [r5, #0x40]
	cmpge r0, #0x100
	ldrgesh r0, [r5, #0x24]
	cmpge r0, #0xa
	ldrgesh r0, [r5, #0x26]
	cmpge r0, #0xa
	ldrgesh r0, [r5, #0x28]
	cmpge r0, #0xa
	ldrgesh r0, [r5, #0x2a]
	cmpge r0, #0xa
	ldrgesh r0, [r5, #0x2c]
	cmpge r0, #0xa
	ldrgesh r0, [r5, #0x2e]
	cmpge r0, #0xa
	addlt r0, r7, r4
	movlt r1, #0x3b
	strltb r1, [r0, #0x58]
	ldr r0, [r5, #0x34]
	addlt r4, r4, #1
	cmp r0, #0x100
	ldrle r0, [r5, #0x38]
	cmple r0, #0x100
	ldrle r0, [r5, #0x3c]
	cmple r0, #0x100
	ldrle r0, [r5, #0x40]
	cmple r0, #0x100
	ldrlesh r0, [r5, #0x24]
	cmple r0, #0xa
	ldrlesh r0, [r5, #0x26]
	cmple r0, #0xa
	ldrlesh r0, [r5, #0x28]
	cmple r0, #0xa
	ldrlesh r0, [r5, #0x2a]
	cmple r0, #0xa
	ldrlesh r0, [r5, #0x2c]
	cmple r0, #0xa
	ldrlesh r0, [r5, #0x2e]
	cmple r0, #0xa
	addgt r0, r7, r4
	movgt r1, #0x45
	strgtb r1, [r0, #0x58]
	ldrb r1, [r5, #0xbd]
	addgt r4, r4, #1
	cmp r1, #0
	beq _022F8CD8
	cmp r4, #0x1e
	addlt r0, r7, r4
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8CD8:
	ldrb r1, [r5, #0xbf]
	cmp r1, #0
	beq _022F8CF8
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #6
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8CF8:
	ldrb r1, [r5, #0xc4]
	cmp r1, #0
	beq _022F8D18
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0xb
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8D18:
	ldrb r1, [r5, #0xd0]
	cmp r1, #0
	beq _022F8D38
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x13
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8D38:
	ldrb r1, [r5, #0xd2]
	cmp r1, #0
	beq _022F8D58
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x1b
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8D58:
	ldrb r1, [r5, #0xd5]
	cmp r1, #0
	beq _022F8D78
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x29
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8D78:
	ldrb r1, [r5, #0xd8]
	cmp r1, #0
	beq _022F8D98
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x3b
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8D98:
	ldrb r1, [r5, #0xe0]
	cmp r1, #0
	beq _022F8DB8
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x42
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8DB8:
	ldrb r1, [r5, #0xec]
	cmp r1, #0
	beq _022F8DD8
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x45
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8DD8:
	ldrb r1, [r5, #0xee]
	cmp r1, #0
	beq _022F8DF8
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x4a
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8DF8:
	ldrb r1, [r5, #0xef]
	cmp r1, #0
	beq _022F8E18
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x4d
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8E18:
	ldrb r1, [r5, #0xf1]
	cmp r1, #0
	beq _022F8E38
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x52
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8E38:
	ldrb r1, [r5, #0xf3]
	cmp r1, #0
	beq _022F8E58
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x57
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8E58:
	ldrb r1, [r5, #0xf5]
	cmp r1, #0
	beq _022F8E78
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x59
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8E78:
	ldrb r1, [r5, #0xf7]
	cmp r1, #0
	beq _022F8E98
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x5b
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8E98:
	ldrb r0, [r5, #0x11e]
	cmp r0, #0
	beq _022F8EB8
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x5d
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8EB8:
	ldrb r0, [r5, #0xf9]
	cmp r0, #0
	beq _022F8ED8
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x5e
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8ED8:
	ldrb r0, [r5, #0xfa]
	cmp r0, #0
	beq _022F8EF8
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x5f
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8EF8:
	ldrb r0, [r5, #0xfd]
	cmp r0, #0
	beq _022F8F18
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x60
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8F18:
	ldrb r0, [r5, #0xfe]
	cmp r0, #0
	beq _022F8F38
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x61
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8F38:
	mov r0, r6
	bl ShouldMonsterRunAway
	cmp r0, #0
	beq _022F8F5C
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x62
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8F5C:
	ldrb r0, [r5, #0x106]
	cmp r0, #0
	beq _022F8F7C
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x63
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8F7C:
	mov r0, r6
	mov r1, #0
	bl GetNumberOfAttacks
	cmp r0, #2
	blt _022F8FA4
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x64
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8FA4:
	ldrb r0, [r5, #0xfb]
	cmp r0, #0
	beq _022F8FC4
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x65
	strltb r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8FC4:
	mov r1, #0
	b _022F8FD8
_022F8FCC:
	add r0, r7, r4
	strb r1, [r0, #0x58]
	add r4, r4, #1
_022F8FD8:
	cmp r4, #0x1e
	blt _022F8FCC
	add r0, r7, r4
	mov r1, #0
	strb r1, [r0, #0x58]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F8FF0: .word 0x000003E7
_022F8FF4: .word 0x02353538
	arm_func_end ov29_022F89CC

	arm_func_start ov29_022F8FF8
ov29_022F8FF8: ; 0x022F8FF8
	stmdb sp!, {r4, lr}
	ldr r2, [r1, #0xb4]
	ldr ip, _022F9050 ; =0x0235171C
	ldrb lr, [r2, #0x4c]
	ldrsh r4, [r1, #4]
	ldr r3, _022F9054 ; =0x0235171E
	mov lr, lr, lsl #2
	ldrsh ip, [ip, lr]
	add r4, r4, ip
	strh r4, [r0]
	ldrb ip, [r2, #0x4c]
	ldrsh lr, [r1, #6]
	mov r1, ip, lsl #2
	ldrsh r1, [r3, r1]
	add r1, lr, r1
	strh r1, [r0, #2]
	ldrb r0, [r2, #0x4c]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	.align 2, 0
_022F9050: .word 0x0235171C
_022F9054: .word 0x0235171E
	arm_func_end ov29_022F8FF8

	arm_func_start ov29_022F9058
ov29_022F9058: ; 0x022F9058
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r4, [r1, #0xb4]
	mov r5, r0
	ldrsh r0, [r4, #2]
	strh r0, [r5]
	ldrh r0, [r1, #4]
	strh r0, [r5, #2]
	ldrh r0, [r1, #6]
	strh r0, [r5, #4]
	ldrb r0, [r4, #0x100]
	cmp r0, #0
	ldrnesh r0, [r4, #0x14]
	ldreqsh r0, [r4, #0x12]
	strh r0, [r5, #6]
	ldrb r1, [r4, #0xa]
	add r0, sp, #0
	strh r1, [r5, #0xc]
	ldrsh r1, [r4, #2]
	ldrb r2, [r4, #0xa]
	bl GetLvlStats
	ldr r0, [sp]
	add r3, r4, #0x124
	str r0, [r5, #0x10]
	ldrb r0, [r4, #0x1a]
	add r2, r5, #0x22
	mov r1, #0x11
	strb r0, [r5, #8]
	ldrb r0, [r4, #0x1b]
	strb r0, [r5, #9]
	ldrb r0, [r4, #0x1c]
	strb r0, [r5, #0xa]
	ldrb r0, [r4, #0x1d]
	strb r0, [r5, #0xb]
	ldrh r0, [r4, #0x62]
	strh r0, [r5, #0x1c]
	ldrh r0, [r4, #0x64]
	strh r0, [r5, #0x1e]
	ldrh r0, [r4, #0x66]
	strh r0, [r5, #0x20]
_022F90F8:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022F90F8
	add r0, r4, #0x100
	ldrh r1, [r0, #0x46]
	strh r1, [r5, #0x14]
	ldrh r1, [r0, #0x48]
	strh r1, [r5, #0x16]
	ldrh r1, [r0, #0x4a]
	strh r1, [r5, #0x18]
	ldrh r0, [r0, #0x4c]
	strh r0, [r5, #0x1a]
	ldrh r0, [r4, #0x44]
	strh r0, [r5, #0x44]
	ldrh r0, [r4, #0x46]
	strh r0, [r5, #0x46]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov29_022F9058

	arm_func_start UpdateAiTargetPos
UpdateAiTargetPos: ; 0x022F9144
	stmdb sp!, {r3, lr}
	ldr lr, [r0, #0xb4]
	ldr r2, _022F918C ; =0x0235171C
	ldrb r3, [lr, #0x4c]
	ldrsh ip, [r0, #4]
	add r1, lr, #0x100
	mov r3, r3, lsl #2
	ldrsh r3, [r2, r3]
	ldr r2, _022F9190 ; =0x0235171E
	add r3, ip, r3
	strh r3, [r1, #0x7e]
	ldrb r3, [lr, #0x4c]
	ldrsh ip, [r0, #6]
	mov r0, r3, lsl #2
	ldrsh r0, [r2, r0]
	add r0, ip, r0
	strh r0, [r1, #0x80]
	ldmia sp!, {r3, pc}
	.align 2, 0
_022F918C: .word 0x0235171C
_022F9190: .word 0x0235171E
	arm_func_end UpdateAiTargetPos

	arm_func_start ov29_022F9194
ov29_022F9194: ; 0x022F9194
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r1, #0x25
	ldr r4, [r5, #0xb4]
	bl AbilityIsActive2
	cmp r0, #0
	beq _022F91D8
	mov r0, r5
	bl GetApparentWeather
	mov r1, #6
	mul r2, r0, r1
	ldr r1, _022F9234 ; =0x022C4C6C
	mov r0, #0
	ldrb r1, [r1, r2]
	strb r1, [r4, #0x5e]
	strb r0, [r4, #0x5f]
	b _022F91FC
_022F91D8:
	mov r5, #0
_022F91DC:
	ldrsh r0, [r4, #2]
	mov r1, r5
	bl GetType
	add r1, r4, r5
	add r5, r5, #1
	strb r0, [r1, #0x5e]
	cmp r5, #2
	blt _022F91DC
_022F91FC:
	mov r5, #0
_022F9200:
	ldrsh r0, [r4, #2]
	mov r1, r5
	bl GetAbility
	add r1, r4, r5
	add r5, r5, #1
	strb r0, [r1, #0x60]
	cmp r5, #2
	blt _022F9200
	ldr r0, _022F9238 ; =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0xe]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022F9234: .word 0x022C4C6C
_022F9238: .word 0x02353538
	arm_func_end ov29_022F9194

	arm_func_start TryActivateSlowStart
TryActivateSlowStart: ; 0x022F923C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, #0
	mov r7, #1
	ldr r5, _022F92D0 ; =0x00000C17
	ldr r4, _022F92D4 ; =0x02353538
	mov r6, sb
	mov fp, r7
	mov r8, #0x5e
_022F925C:
	ldr r0, [r4]
	add r0, r0, sb, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb78]
	mov r0, sl
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022F92C0
	mov r0, sl
	mov r1, r8
	bl AbilityIsActive2
	cmp r0, #0
	beq _022F92C0
	mov r0, r7
	mov r1, sl
	mov r2, r6
	bl SubstitutePlaceholderStringTags
	mov r0, sl
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, sl
	mov r1, sl
	mov r2, fp
	mov r3, #0
	bl LowerSpeed
_022F92C0:
	add sb, sb, #1
	cmp sb, #0x14
	blt _022F925C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F92D0: .word 0x00000C17
_022F92D4: .word 0x02353538
	arm_func_end TryActivateSlowStart

	arm_func_start TryActivateArtificialWeatherAbilities
TryActivateArtificialWeatherAbilities: ; 0x022F92D8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bl IsSecretFloor
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _022F9404 ; =0x02353538
	ldr r1, [r4]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov sb, #0
	strb sb, [r1, #0xe]
	ldr r0, [r4]
	mov r5, #1
	add r0, r0, #0xc000
	strb sb, [r0, #0xd5d]
	mov r6, r5
	mov r7, r5
	mov r8, r5
	mov fp, r5
_022F9324:
	ldr r0, [r4]
	add r0, r0, sb, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb78]
	mov r0, sl
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022F93F4
	mov r0, sl
	mov r1, #4
	bl AbilityIsActive2
	cmp r0, #0
	ldrne r0, [r4]
	addne r0, r0, #0xcd00
	strneh r8, [r0, #0x52]
	bne _022F93C0
	mov r0, sl
	mov r1, #0x1c
	bl AbilityIsActive2
	cmp r0, #0
	ldrne r0, [r4]
	addne r0, r0, #0xcd00
	strneh r7, [r0, #0x4e]
	bne _022F93C0
	mov r0, sl
	mov r1, #0x31
	bl AbilityIsActive2
	cmp r0, #0
	ldrne r0, [r4]
	addne r0, r0, #0xcd00
	strneh r6, [r0, #0x4c]
	bne _022F93C0
	mov r0, sl
	mov r1, #0x78
	bl AbilityIsActive2
	cmp r0, #0
	ldrne r0, [r4]
	addne r0, r0, #0xcd00
	strneh r5, [r0, #0x54]
_022F93C0:
	mov r0, sl
	mov r1, #8
	bl AbilityIsActive2
	cmp r0, #0
	bne _022F93E8
	mov r0, sl
	mov r1, #0x2d
	bl AbilityIsActive2
	cmp r0, #0
	beq _022F93F4
_022F93E8:
	ldr r0, [r4]
	add r0, r0, #0xc000
	strb fp, [r0, #0xd5d]
_022F93F4:
	add sb, sb, #1
	cmp sb, #0x14
	blt _022F9324
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F9404: .word 0x02353538
	arm_func_end TryActivateArtificialWeatherAbilities

	arm_func_start ov29_022F9408
ov29_022F9408: ; 0x022F9408
	stmdb sp!, {r4, lr}
	movs r4, r0
	beq _022F94A8
	ldr r2, _022F94E0 ; =0x0000017B
	cmp r1, r2
	blt _022F945C
	add r2, r2, #3
	cmp r1, r2
	bgt _022F945C
	mov r1, #0x25
	bl AbilityIsActive2
	cmp r0, #0
	ldreq r0, _022F94E0 ; =0x0000017B
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl GetApparentWeather
	mov r1, #6
	mul r1, r0, r1
	ldr r0, _022F94E4 ; =0x022C4C6E
	ldrsh r0, [r0, r1]
	ldmia sp!, {r4, pc}
_022F945C:
	ldr r0, _022F94E8 ; =0x000003D3
	cmp r1, r0
	blt _022F94D8
	add r0, r0, #3
	cmp r1, r0
	bgt _022F94D8
	mov r0, r4
	mov r1, #0x25
	bl AbilityIsActive2
	cmp r0, #0
	ldreq r0, _022F94E8 ; =0x000003D3
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl GetApparentWeather
	mov r1, #6
	mul r1, r0, r1
	ldr r0, _022F94EC ; =0x022C4C70
	ldrsh r0, [r0, r1]
	ldmia sp!, {r4, pc}
_022F94A8:
	ldr r0, _022F94E0 ; =0x0000017B
	cmp r1, r0
	blt _022F94C0
	add r2, r0, #3
	cmp r1, r2
	ldmleia sp!, {r4, pc}
_022F94C0:
	ldr r0, _022F94E8 ; =0x000003D3
	cmp r1, r0
	blt _022F94D8
	add r2, r0, #3
	cmp r1, r2
	ldmleia sp!, {r4, pc}
_022F94D8:
	mov r0, r1
	ldmia sp!, {r4, pc}
	.align 2, 0
_022F94E0: .word 0x0000017B
_022F94E4: .word 0x022C4C6E
_022F94E8: .word 0x000003D3
_022F94EC: .word 0x022C4C70
	arm_func_end ov29_022F9408

	arm_func_start ov29_022F94F0
ov29_022F94F0: ; 0x022F94F0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	bl EntityIsValid__022F7364
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r8
	bl EntityIsValid__022F7364
	cmp r0, #0
	cmpne sb, r8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r5, [sb, #0xb4]
	ldr r6, [r8, #0xb4]
	ldrb r0, [r5, #0xbc]
	bl ov29_022EFB04
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r6, #0x60]
	mvn r4, #0
	cmp r0, #0x28
	ldrb r0, [r6, #0x61]
	moveq r4, #0
	cmp r0, #0x28
	moveq r4, #1
	cmp r4, #0
	blt _022F95FC
	ldrb r1, [r5, #0x60]
	ldrb r2, [r5, #0x61]
	mov r0, #0
	cmp r1, #0
	strneb r1, [sp]
	addne r0, r0, #1
	cmp r2, #0
	addne r1, sp, #0
	strneb r2, [r1, r0]
	addne r0, r0, #1
	cmp r0, #0
	mvneq r0, #0
	beq _022F95A0
	cmp r0, #1
	moveq r0, #0
	beq _022F95A0
	bl DungeonRandInt
_022F95A0:
	cmp r0, #0
	blt _022F95FC
	add r1, sp, #0
	ldrb r3, [r1, r0]
	ldr r1, _022F96BC ; =0x02353538
	add r2, r6, r4
	strb r3, [r2, #0x60]
	mov r0, #0
	ldr r3, [r1]
	mov r4, #1
	mov r1, r8
	mov r2, r0
	strb r4, [r3, #0xe]
	bl SubstitutePlaceholderStringTags
	ldr r2, _022F96C0 ; =0x00000C18
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r8
	bl ov29_022E6260
	mov r0, sb
	mov r1, r8
	bl ov29_022FA7DC
_022F95FC:
	ldrb r0, [r6, #0x164]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r4, #0
	mov r0, sb
	mov r1, r8
	mov r2, #0x3b
	mov r3, #1
	strb r4, [r6, #0x164]
	bl DefenderAbilityIsActive__022F96CC
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, sb
	mov r1, r7
	bl GetMoveTypeForMonster
	ldrh r1, [r7, #4]
	mov r4, r0
	cmp r1, #0x1f
	bne _022F9658
	mov r0, sb
	bl GetApparentWeather
	ldr r1, _022F96C4 ; =0x022C48DC
	ldrb r4, [r1, r0]
_022F9658:
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r8
	mov r1, r4
	bl MonsterIsType
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, #0
	strb r4, [r6, #0x5e]
	strb r0, [r6, #0x5f]
	mov r3, #1
	mov r1, r8
	mov r2, r0
	strb r3, [r6, #0xff]
	bl SubstitutePlaceholderStringTags
	ldrb r1, [r6, #0x5e]
	mov r0, #0
	bl ov29_0234B084
	ldr r2, _022F96C8 ; =0x00000C19
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r8
	bl ov29_022E647C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022F96BC: .word 0x02353538
_022F96C0: .word 0x00000C18
_022F96C4: .word 0x022C48DC
_022F96C8: .word 0x00000C19
	arm_func_end ov29_022F94F0

	arm_func_start DefenderAbilityIsActive__022F96CC
DefenderAbilityIsActive__022F96CC: ; 0x022F96CC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r7, r6
	beq _022F9710
	bl IsMonster__022F9720
	cmp r0, #0
	cmpne r4, #0
	beq _022F9710
	mov r0, r7
	mov r1, #0x53
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_022F9710:
	mov r0, r6
	mov r1, r5
	bl AbilityIsActive2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DefenderAbilityIsActive__022F96CC

	arm_func_start IsMonster__022F9720
IsMonster__022F9720: ; 0x022F9720
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end IsMonster__022F9720

	arm_func_start ov29_022F9744
ov29_022F9744: ; 0x022F9744
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r4, r2
	bl EntityIsValid__022F7364
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl EntityIsValid__022F7364
	cmp r0, #0
	cmpne r7, r6
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, [r6, #0xb4]
	mov r0, r6
	bl Conversion2IsActive
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r4
	bl GetMoveTypeForMonster
	bl sub_02050964
	movs r4, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl ov29_02307CE0
	mov r0, r6
	strb r4, [r5, #0x5e]
	mov r1, #0
	strb r1, [r5, #0x5f]
	bl ov29_022E4160
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r4
	mov r0, #0
	bl ov29_0234B084
	mov r0, r7
	mov r1, r6
	ldr r2, _022F97EC ; =0x00000C16
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F97EC: .word 0x00000C16
	arm_func_end ov29_022F9744

	arm_func_start TryActivateTruant
TryActivateTruant: ; 0x022F97F0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022F9838
	mov r0, r4
	mov r1, #0x2a
	bl AbilityIsActive2
	cmp r0, #0
	beq _022F9838
	mov r2, #0
	str r2, [sp]
	mov r0, r4
	mov r1, r4
	mov r3, #1
	str r2, [sp, #4]
	bl TryInflictPausedStatus
_022F9838:
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end TryActivateTruant

	arm_func_start ov29_022F9840
ov29_022F9840: ; 0x022F9840
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl EntityIsValid__022F7364
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5]
	cmp r0, #1
	bne _022F987C
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	moveq r0, #1
	movne r0, r4
	and r4, r0, #0xff
_022F987C:
	bl sub_0204AEF0
	cmp r0, #0
	moveq r4, #0
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_022E272C
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl ov29_022F98B4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022F9840

	arm_func_start ov29_022F98B4
ov29_022F98B4: ; 0x022F98B4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl EntityIsValid__022F7364
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6]
	cmp r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _022F9968 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldr r0, [r0, #0x22c]
	cmp r0, r6
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	beq _022F9928
	mov r0, #1
	bl ov29_022E38E0
	mov r7, #0x34
	ldr r5, _022F9968 ; =0x02353538
	b _022F9918
_022F9910:
	mov r0, r7
	bl AdvanceFrame
_022F9918:
	ldr r0, [r5]
	ldrsh r0, [r0, #0x1c]
	cmp r0, #0x3c
	blt _022F9910
_022F9928:
	mov r0, #4
	mov r1, #0x44
	bl ov29_022EA370
	mov r0, r6
	mov r1, r4
	bl ov29_022E2E54
	cmp r4, #0
	beq _022F9950
	add r0, r6, #4
	bl ov29_02337A3C
_022F9950:
	ldr r0, _022F9968 ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strh r1, [r0, #0x1c]
	bl ov29_022E81F8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F9968: .word 0x02353538
	arm_func_end ov29_022F98B4

	arm_func_start ov29_022F996C
ov29_022F996C: ; 0x022F996C
	bx lr
	arm_func_end ov29_022F996C

	arm_func_start ov29_022F9970
ov29_022F9970: ; 0x022F9970
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _022F99E8 ; =0x02353538
	b _022F99DC
_022F9980:
	ldr r0, [r6]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb78]
	mov r0, r5
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022F99D8
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #3
	bne _022F99D8
	ldr r1, _022F99E8 ; =0x02353538
	ldr r0, [r1]
	add r0, r0, #0x19000
	str r5, [r0, #0x904]
	ldr r2, [r5, #0xb4]
	ldr r0, [r1]
	ldr r1, [r2, #0xb0]
	add r0, r0, #0x19000
	str r1, [r0, #0x90c]
	ldmia sp!, {r4, r5, r6, pc}
_022F99D8:
	add r4, r4, #1
_022F99DC:
	cmp r4, #0x14
	blt _022F9980
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022F99E8: .word 0x02353538
	arm_func_end ov29_022F9970

	arm_func_start ov29_022F99EC
ov29_022F99EC: ; 0x022F99EC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r4, #0
	ldr r6, _022F9A70 ; =0x02353538
	mov r5, r4
	add r7, sp, #0
_022F9A04:
	ldr r0, [r6]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb38]
	mov r0, r8
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022F9A40
	ldr r0, [r8, #0xb4]
	ldrb r0, [r0, #0xbc]
	cmp r0, #0xb
	blo _022F9A40
	cmp r0, #0xe
	strls r8, [r7, r4, lsl #2]
	addls r4, r4, #1
_022F9A40:
	add r5, r5, #1
	cmp r5, #0x10
	blt _022F9A04
	cmp r4, #0
	movle r0, #0
	ble _022F9A68
	mov r0, r4
	bl DungeonRandInt
	add r1, sp, #0
	ldr r0, [r1, r0, lsl #2]
_022F9A68:
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022F9A70: .word 0x02353538
	arm_func_end ov29_022F99EC

	arm_func_start RestorePpAllMovesSetFlags
RestorePpAllMovesSetFlags: ; 0x022F9A74
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, [r0, #0xb4]
	mov r7, #0
	add r6, r0, #0x124
	mov r4, r7
	mov r5, #1
_022F9A8C:
	ldrb r0, [r6, r7, lsl #3]
	add r8, r6, r7, lsl #3
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _022F9AE4
	ldrh r1, [r8, #2]
	mov r0, r8
	bic r1, r1, #8
	strh r1, [r8, #2]
	ldrh r1, [r8, #2]
	bic r1, r1, #0x10
	strh r1, [r8, #2]
	ldrh r1, [r8, #2]
	bic r1, r1, #0x40
	strh r1, [r8, #2]
	ldrh r1, [r8, #2]
	orr r1, r1, #4
	strh r1, [r8, #2]
	bl GetMaxPpWrapper
	strb r0, [r8, #6]
_022F9AE4:
	add r7, r7, #1
	cmp r7, #4
	blt _022F9A8C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end RestorePpAllMovesSetFlags

	arm_func_start ov29_022F9AF4
ov29_022F9AF4: ; 0x022F9AF4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r1, [sb, #0xb4]
	mov r5, #0
	ldrb r8, [r1, #6]
	bl ov29_022F87C0
	cmp r0, #0
	moveq r0, r5
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mvn r7, #0
	mov r4, r7
_022F9B20:
	mov r6, r4
_022F9B24:
	ldrsh r0, [sb, #4]
	ldrsh r1, [sb, #6]
	add r0, r0, r6
	add r1, r1, r7
	bl GetTileSafe
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _022F9B60
	ldr r0, [r1]
	cmp r0, #1
	bne _022F9B60
	ldr r0, [r1, #0xb4]
	ldrb r0, [r0, #6]
	cmp r8, r0
	addne r5, r5, #1
_022F9B60:
	add r6, r6, #1
	cmp r6, #1
	ble _022F9B24
	add r7, r7, #1
	cmp r7, #1
	ble _022F9B20
	cmp r5, #2
	movge r0, #1
	movlt r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022F9AF4

	arm_func_start ov29_022F9B8C
ov29_022F9B8C: ; 0x022F9B8C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x4c
	mov r2, #0
	mov r1, #1
	mov r4, r0
	strb r2, [sp, #4]
	strb r1, [sp, #5]
	str r2, [sp]
	ldrsh r1, [r4, #2]
	add r0, sp, #8
	add r3, sp, #4
	bl sub_02052E2C
	ldrsh r0, [r4, #2]
	mov r1, #0
	mov r2, #6
	strh r0, [sp, #0xc]
	ldrb r0, [r4, #0xa]
	strb r0, [sp, #9]
	ldrsh r0, [r4, #0xe]
	strh r0, [sp, #0x10]
	ldrb r0, [r4, #0x1a]
	strb r0, [sp, #0x14]
	ldrb r0, [r4, #0x1c]
	strb r0, [sp, #0x16]
	ldrb r0, [r4, #0x48]
	strb r0, [sp, #0xa]
	ldrb r0, [r4, #0x49]
	strb r0, [sp, #0xb]
	add r0, sp, #8
_022F9C00:
	mla lr, r1, r2, r0
	add r3, r4, r1, lsl #3
	ldrb ip, [r3, #0x124]
	add r3, r3, #0x100
	add r1, r1, #1
	strb ip, [lr, #0x22]
	ldrh r3, [r3, #0x28]
	cmp r1, #4
	strh r3, [lr, #0x24]
	blt _022F9C00
	bl GetMonsterEvoStatus
	add sp, sp, #0x4c
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov29_022F9B8C

	arm_func_start CheckTeamMemberIdx__022F9C34
CheckTeamMemberIdx__022F9C34: ; 0x022F9C34
	ldr ip, _022F9C3C ; =CheckTeamMemberIdx__02056228
	bx ip
	.align 2, 0
_022F9C3C: .word CheckTeamMemberIdx__02056228
	arm_func_end CheckTeamMemberIdx__022F9C34

	arm_func_start ov29_022F9C40
ov29_022F9C40: ; 0x022F9C40
	ldr ip, _022F9C48 ; =sub_02056264
	bx ip
	.align 2, 0
_022F9C48: .word sub_02056264
	arm_func_end ov29_022F9C40

	arm_func_start ov29_022F9C4C
ov29_022F9C4C: ; 0x022F9C4C
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0xb4]
	ldrsh r0, [r0, #0xc]
	bl GetActiveTeamMember
	ldrsh r0, [r0, #8]
	bl sub_02056264
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022F9C4C

	arm_func_start IsMonsterIdInNormalRange__022F9C68
IsMonsterIdInNormalRange__022F9C68: ; 0x022F9C68
	ldr ip, _022F9C70 ; =IsMonsterIdInNormalRange__02056294
	bx ip
	.align 2, 0
_022F9C70: .word IsMonsterIdInNormalRange__02056294
	arm_func_end IsMonsterIdInNormalRange__022F9C68

	arm_func_start ov29_022F9C74
ov29_022F9C74: ; 0x022F9C74
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022F9E80
	ldr r5, [r6, #0xb4]
	ldrb r0, [r5, #0x103]
	cmp r0, #0
	beq _022F9E78
	mov r0, r6
	bl GetTileAtEntity
	ldrh r0, [r0]
	and r0, r0, #3
	cmp r0, #2
	bne _022F9D50
	ldr r0, _022F9E88 ; =0x02353538
	ldr r1, _022F9E8C ; =0x020A1AE8
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _022F9D34
	ldrb r0, [r5, #0xc4]
	cmp r0, #1
	bne _022F9CF0
	mov r0, r6
	mov r1, r6
	mov r2, #1
	bl EndFrozenClassStatus
_022F9CF0:
	ldrsh r0, [r5, #2]
	bl GetMobilityType
	cmp r0, #4
	ldrnesh r1, [r5, #2]
	ldrne r0, _022F9E90 ; =0x00000115
	cmpne r1, r0
	cmpne r1, #0x92
	ldrneb r0, [r5, #0xbf]
	cmpne r0, #1
	beq _022F9E78
	mov r3, #0
	mov r0, r6
	mov r1, r6
	mov r2, #1
	str r3, [sp]
	bl TryInflictBurnStatus
	b _022F9E78
_022F9D34:
	ldrb r0, [r5, #0xbf]
	cmp r0, #1
	bne _022F9E78
	mov r0, r6
	mov r1, r6
	bl ov29_023061A8
	b _022F9E78
_022F9D50:
	cmp r0, #0
	bne _022F9E78
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _022F9E78
	add r0, r5, #0x100
	ldrh r1, [r0, #0x48]
	ldrh r4, [r0, #0x46]
	sub r3, sp, #4
	strh r1, [sp, #0xa]
	mov r0, r1
	strh r4, [r3]
	strh r0, [r3, #2]
	ldr r1, _022F9E94 ; =0x02352768
	ldr r0, [r3]
	ldrh r2, [r1]
	strh r4, [sp, #8]
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl SubFixedPoint
	strh r0, [sp, #4]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #6]
	ldrh r1, [sp, #4]
	add r0, r5, #0x100
	ldrh r3, [sp, #6]
	strh r1, [r0, #0x46]
	ldrh r2, [sp, #8]
	strh r3, [r0, #0x48]
	sub r0, sp, #4
	ldrh r1, [sp, #0xa]
	strh r2, [r0]
	mov r4, #0
	strh r1, [r0, #2]
	ldr r0, [r0]
	bl CeilFixedPoint
	cmp r0, #0x14
	blt _022F9E18
	add r0, r5, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0x14
	ldrlt r4, _022F9E98 ; =0x00000C1A
_022F9E18:
	ldrh r1, [sp, #8]
	ldrh r0, [sp, #0xa]
	sub r2, sp, #4
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0xa
	blt _022F9E64
	add r0, r5, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0xa
	ldrlt r4, _022F9E9C ; =0x00000C1B
_022F9E64:
	cmp r4, #0
	beq _022F9E78
	mov r0, r6
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUser
_022F9E78:
	mov r0, #0
	strb r0, [r5, #0x103]
_022F9E80:
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_022F9E88: .word 0x02353538
_022F9E8C: .word 0x020A1AE8
_022F9E90: .word 0x00000115
_022F9E94: .word 0x02352768
_022F9E98: .word 0x00000C1A
_022F9E9C: .word 0x00000C1B
	arm_func_end ov29_022F9C74

	arm_func_start ov29_022F9EA0
ov29_022F9EA0: ; 0x022F9EA0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r1, #0x6f
	ldr r4, [r5, #0xb4]
	bl AbilityIsActive2
	cmp r0, #0
	bne _022F9FEC
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _022F9FBC
	mov r0, r5
	mov r1, #0x11
	bl HasHeldItem
	cmp r0, #0
	bne _022F9EF4
	mov r0, r5
	mov r1, #0x32
	bl HasHeldItem
	cmp r0, #0
	beq _022F9F60
_022F9EF4:
	mov r0, #0xa
	bl sub_02050FF8
	add r1, r4, #0x100
	ldrh r2, [r1, #0x46]
	sub r3, sp, #4
	strh r0, [sp, #8]
	strh r2, [r3]
	ldrh r1, [r1, #0x48]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #0xa]
	strh r1, [r3, #2]
	ldrh r2, [sp, #8]
	ldr r0, [r3]
	ldrh r1, [sp, #0xa]
	strh r2, [r3]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl SubFixedPoint
	strh r0, [sp, #4]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #6]
	ldrh r2, [sp, #4]
	add r0, r4, #0x100
	ldrh r1, [sp, #6]
	strh r2, [r0, #0x46]
	strh r1, [r0, #0x48]
	b _022F9F9C
_022F9F60:
	mov r0, r5
	mov r1, #0x22
	bl HasHeldItem
	cmp r0, #0
	beq _022F9F9C
	mov r0, #0
	bl sub_02050FF8
	strh r0, [sp]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #2]
	ldrh r2, [sp]
	add r0, r4, #0x100
	ldrh r1, [sp, #2]
	strh r2, [r0, #0x46]
	strh r1, [r0, #0x48]
_022F9F9C:
	ldr r0, _022FA028 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x78d]
	cmp r0, #0
	beq _022F9FEC
	mov r0, r5
	bl UpdateStatusIconFlags
	b _022F9FEC
_022F9FBC:
	ldrsh r1, [r4, #0x66]
	ldrsh r0, [r4, #0x68]
	cmp r0, r1
	beq _022F9FEC
	cmp r1, #0x18
	cmpne r0, #0x18
	cmpne r1, #0xe
	cmpne r0, #0xe
	bne _022F9FEC
	mov r0, #1
	bl ov29_022E2EC4
	bl ov29_02339CE8
_022F9FEC:
	ldrsh r1, [r4, #0x68]
	ldrsh r0, [r4, #0x66]
	cmp r1, r0
	beq _022FA000
	bl ov29_02307DD0
_022FA000:
	ldrb r0, [r4, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	ldrnesh r0, [r4, #0x66]
	moveq r0, #0
	strh r0, [r4, #0x68]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_022FA028: .word 0x02353538
	arm_func_end ov29_022F9EA0

	arm_func_start ov29_022FA02C
ov29_022FA02C: ; 0x022FA02C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x90
	mov sl, r0
	mov r3, r1
	ldrsh r1, [sl, #2]
	mov sb, r2
	add r0, sp, #4
	mov r2, r3
	bl GetLearnableIqSkills
	mov r6, r0
	ldrsh r1, [sl, #2]
	ldrsh r2, [sl, #0xe]
	add r0, sp, #0x49
	bl GetLearnableIqSkills
	mov r7, r0
	bl ov29_0234B034
	mov r1, #0
	mov r2, sl
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r8, #1
	add r5, sp, #4
	mov r4, r8
	mov fp, #0
_022FA090:
	mov r1, #0
	mov r2, r1
	mov r3, r1
	b _022FA0B4
_022FA0A0:
	ldrb r0, [r5, r3]
	cmp r0, r8
	moveq r1, r4
	beq _022FA0BC
	add r3, r3, #1
_022FA0B4:
	cmp r3, r6
	blt _022FA0A0
_022FA0BC:
	mov r3, fp
	b _022FA0DC
_022FA0C4:
	add r0, r5, r3
	ldrb r0, [r0, #0x45]
	cmp r8, r0
	moveq r2, #1
	beq _022FA0E4
	add r3, r3, #1
_022FA0DC:
	cmp r3, r7
	blt _022FA0C4
_022FA0E4:
	cmp r1, r2
	beq _022FA12C
	add r0, sl, #0x90
	and r1, r8, #0xff
	bl EnableIqSkill
	add r0, sl, #0x9c
	and r1, r8, #0xff
	bl EnableIqSkill
	cmp sb, #0
	bne _022FA12C
	mov r0, #4
	bl sub_02017C50
	mov r0, #0
	and r1, r8, #0xff
	bl ov29_0234B084
	ldr r1, _022FA140 ; =0x00000C1C
	mov r0, #0
	bl LogMessageByIdWithPopup
_022FA12C:
	add r8, r8, #1
	cmp r8, #0x45
	blt _022FA090
	add sp, sp, #0x90
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FA140: .word 0x00000C1C
	arm_func_end ov29_022FA02C

	arm_func_start ov29_022FA144
ov29_022FA144: ; 0x022FA144
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r5, [r7, #0xb4]
	ldr r0, _022FA1CC ; =0x000003E7
	ldrsh r4, [r5, #0xe]
	mov r6, r2
	add r1, r4, r1
	strh r1, [r5, #0xe]
	ldrsh r1, [r5, #0xe]
	cmp r1, r0
	strgth r0, [r5, #0xe]
	cmp r6, #0
	bne _022FA1B0
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrsh r0, [r5, #0xe]
	cmp r4, r0
	bne _022FA1A4
	ldr r1, _022FA1D0 ; =0x00000C27
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _022FA1B0
_022FA1A4:
	ldr r1, _022FA1D4 ; =0x00000C26
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
_022FA1B0:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl ov29_022FA02C
	mov r0, r7
	bl ov29_023021F0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FA1CC: .word 0x000003E7
_022FA1D0: .word 0x00000C27
_022FA1D4: .word 0x00000C26
	arm_func_end ov29_022FA144

	arm_func_start ov29_022FA1D8
ov29_022FA1D8: ; 0x022FA1D8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0xb4]
	mov r5, r1
	ldrb r1, [r4, #7]
	cmp r1, #0
	beq _022FA210
	ldrsh r1, [r6, #4]
	add r0, r4, #0x100
	strh r1, [r0, #0x7e]
	ldrsh r1, [r6, #6]
	add r1, r1, #1
	strh r1, [r0, #0x80]
	b _022FA27C
_022FA210:
	ldrb r1, [r4, #0x16a]
	cmp r1, #0xff
	beq _022FA274
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	ldrb r2, [r4, #0x16a]
	ldr r1, _022FA2E8 ; =0x0235171C
	add r0, r4, #0x100
	strb r2, [r4, #0x4c]
	mov r2, r2, lsl #2
	ldrsh r3, [r1, r2]
	ldrsh ip, [r6, #4]
	ldr r2, _022FA2EC ; =0x0235171E
	mov r1, #0xff
	add r3, ip, r3
	strh r3, [r0, #0x7e]
	ldrb r3, [r4, #0x4c]
	ldrsh ip, [r6, #6]
	mov r3, r3, lsl #2
	ldrsh r2, [r2, r3]
	add r2, ip, r2
	strh r2, [r0, #0x80]
	strb r1, [r4, #0x16a]
	b _022FA27C
_022FA274:
	mov r1, r2
	bl AiMovement
_022FA27C:
	add r0, r4, #0x100
	ldrsh r1, [r0, #0x7e]
	cmp r1, #0
	ldreqsh r0, [r0, #0x80]
	cmpeq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, #1
	bl ov29_02300818
	cmp r0, #0
	beq _022FA2B8
	mov r0, r6
	bl ov29_02300CB0
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
_022FA2B8:
	add r1, r4, #0x7e
	add r0, r6, #4
	add r1, r1, #0x100
	bl GetDirectionTowardsPosition
	mov r1, r0
	and r0, r1, #7
	strb r0, [r4, #0x4c]
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_02304A48
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022FA2E8: .word 0x0235171C
_022FA2EC: .word 0x0235171E
	arm_func_end ov29_022FA1D8

	arm_func_start ov29_022FA2F0
ov29_022FA2F0: ; 0x022FA2F0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr sb, _022FA35C ; =0x02353538
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #0
_022FA308:
	ldr r0, [sb]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r4, [r0, #0xb78]
	mov r0, r4
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FA34C
	cmp r7, #0
	ldrne r0, [r4, #0xb4]
	ldrneb r0, [r0, #0xbc]
	cmpne r0, #7
	bne _022FA34C
	mov r0, r4
	mov r1, r8
	mov r2, r6
	bl ov29_022FA1D8
_022FA34C:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022FA308
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FA35C: .word 0x02353538
	arm_func_end ov29_022FA2F0

	arm_func_start ov29_022FA360
ov29_022FA360: ; 0x022FA360
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl EntityIsValid__022F7364
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, [r6, #0xb4]
	and r1, r5, #7
	mov r0, r6
	strb r1, [r4, #0x4c]
	bl GetSleepAnimationId
	mov r1, r0
	ldrb r2, [r4, #0x4c]
	mov r0, r6
	bl ov29_023049A8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov29_022FA360

	arm_func_start ov29_022FA3A0
ov29_022FA3A0: ; 0x022FA3A0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl EntityIsValid__022F7364
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, r4
	add r0, r5, #4
	bl GetDirectionTowardsPosition
	and r1, r0, #0xff
	mov r0, r5
	bl ov29_022FA360
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022FA3A0

	arm_func_start ov29_022FA3D4
ov29_022FA3D4: ; 0x022FA3D4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _022FA414 ; =0x02353538
	mov r4, r0
	ldr r0, [r1]
	mov r6, #0
	add r0, r0, #0x328
	add r5, r0, #0x12800
_022FA3F0:
	ldr r0, [r5, r6, lsl #2]
	mov r1, r4
	bl ov29_022FA3A0
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	cmp r6, #4
	blt _022FA3F0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022FA414: .word 0x02353538
	arm_func_end ov29_022FA3D4

	arm_func_start ov29_022FA418
ov29_022FA418: ; 0x022FA418
	stmdb sp!, {r3, lr}
	bl ov29_023361D4
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov29_022EF938
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022FA418

	arm_func_start ShouldMonsterHeadToStairs
ShouldMonsterHeadToStairs: ; 0x022FA430
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	bl GetStairsRoom
	mov r5, r0
	ldrsh r0, [sl, #4]
	ldrsh r1, [sl, #6]
	bl GetTile
	ldrb r0, [r0, #7]
	cmp r5, r0
	bne _022FA514
	ldr r1, _022FA51C ; =0x02353538
	add r0, sl, #4
	ldr r1, [r1]
	add r1, r1, #0xe4
	add r1, r1, #0xcc00
	bl GetChebyshevDistance
	ldr r7, _022FA520 ; =0x00002710
	ldr r4, _022FA51C ; =0x02353538
	mov r6, r0
	mov r8, #0
_022FA480:
	ldr r0, [r4]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb78]
	mov r0, sb
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FA4E8
	mov r0, sl
	mov r1, sb
	bl ov29_023018AC
	cmp r0, #1
	bne _022FA4E8
	ldrsh r0, [sb, #4]
	ldrsh r1, [sb, #6]
	bl GetTile
	ldrb r0, [r0, #7]
	cmp r5, r0
	bne _022FA4E8
	ldr r1, [r4]
	add r0, sb, #4
	add r1, r1, #0xe4
	add r1, r1, #0xcc00
	bl GetChebyshevDistance
	cmp r0, r7
	movlt r7, r0
_022FA4E8:
	add r8, r8, #1
	cmp r8, #0x14
	blt _022FA480
	ldr r0, _022FA520 ; =0x00002710
	cmp r7, r0
	beq _022FA50C
	beq _022FA514
	cmp r7, r6
	ble _022FA514
_022FA50C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_022FA514:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022FA51C: .word 0x02353538
_022FA520: .word 0x00002710
	arm_func_end ShouldMonsterHeadToStairs

	arm_func_start ov29_022FA524
ov29_022FA524: ; 0x022FA524
	stmdb sp!, {r4, r5, r6, lr}
	ldr r4, _022FA570 ; =0x02353538
	mov r5, #0
_022FA530:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FA560
	ldr r1, [r6, #0xb4]
	mov r0, r6
	ldrb r1, [r1, #0x4c]
	bl ov29_02304A48
_022FA560:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022FA530
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022FA570: .word 0x02353538
	arm_func_end ov29_022FA524

	arm_func_start ov29_022FA574
ov29_022FA574: ; 0x022FA574
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl EntityIsValid__022F7364
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xb4]
	mov r1, r4
	add r0, r0, #0x124
	bl sub_0201405C
	cmp r0, #0
	bne _022FA5B4
	ldr r1, _022FA5E4 ; =0x00000C1D
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r3, r4, r5, pc}
_022FA5B4:
	cmp r0, #1
	bne _022FA5CC
	ldr r1, _022FA5E8 ; =0x00000C1E
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r3, r4, r5, pc}
_022FA5CC:
	cmp r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, _022FA5EC ; =0x00000C1F
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022FA5E4: .word 0x00000C1D
_022FA5E8: .word 0x00000C1E
_022FA5EC: .word 0x00000C1F
	arm_func_end ov29_022FA574

	arm_func_start MewSpawnCheck
MewSpawnCheck: ; 0x022FA5F0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl CanMonsterSpawn
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r5, #0x97
	bne _022FA63C
	ldr r0, _022FA644 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x3000
	ldrb r0, [r0, #0xe39]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_022FA63C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022FA644: .word 0x02353538
	arm_func_end MewSpawnCheck

	arm_func_start ov29_022FA648
ov29_022FA648: ; 0x022FA648
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, #0
	mov r6, #1
	mov fp, r6
	mov r5, r7
_022FA65C:
	ldr r0, _022FA74C ; =0x02353538
	ldr r0, [r0]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb28]
	mov r0, r8
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FA730
	ldr sl, [r8, #0xb4]
	ldrb r1, [sl, #7]
	ldrsh r0, [sl, #0xc]
	cmp r1, #0
	beq _022FA6C4
	strb r6, [sl, #0x165]
	bl ov29_022E8104
	bl ov29_022E81F8
	bl ov29_022E0A04
	cmp r0, #1
	mov r0, r8
	bne _022FA6B8
	bl ov29_022E68D8
	b _022FA6BC
_022FA6B8:
	bl ov29_022E68BC
_022FA6BC:
	strb r5, [r8, #0x20]
	b _022FA730
_022FA6C4:
	cmp r0, #0
	blt _022FA730
	mov sb, #0
	bl GetActiveTeamMember
	mov r4, r0
	bl ov29_022E0A04
	cmp r0, #0
	movne sb, #1
	bne _022FA70C
	ldrsh r0, [r4, #8]
	bl sub_02056264
	cmp r0, #0
	movne sb, #1
	bne _022FA70C
	ldrsh r0, [r4, #8]
	bl IsMonsterIdInNormalRange__02056294
	cmp r0, #0
	movne sb, #1
_022FA70C:
	cmp sb, #0
	beq _022FA730
	strb fp, [sl, #0x165]
	bl ov29_022E8104
	bl ov29_022E81F8
	mov r0, r8
	bl ov29_022E68BC
	mov r0, #0
	strb r0, [r8, #0x20]
_022FA730:
	add r7, r7, #1
	cmp r7, #4
	blt _022FA65C
	mov r0, #0x1e
	mov r1, #0x4a
	bl ov29_022EA370
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FA74C: .word 0x02353538
	arm_func_end ov29_022FA648

	arm_func_start ov29_022FA750
ov29_022FA750: ; 0x022FA750
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r6, #0
	ldr r4, _022FA7D8 ; =0x02353538
	mov r5, r6
_022FA760:
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb78]
	mov r0, r8
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FA7C8
	ldr sb, [r8, #0xb4]
	mov r7, r5
_022FA788:
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb78]
	mov r0, sl
	bl EntityIsValid__022F7364
	cmp r0, #0
	cmpne r8, sl
	beq _022FA7BC
	ldrh r1, [sb, #0x80]
	ldrh r0, [sl, #0x26]
	cmp r1, r0
	streq sl, [sb, #0x84]
_022FA7BC:
	add r7, r7, #1
	cmp r7, #0x14
	blt _022FA788
_022FA7C8:
	add r6, r6, #1
	cmp r6, #0x14
	blt _022FA760
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022FA7D8: .word 0x02353538
	arm_func_end ov29_022FA750

	arm_func_start ov29_022FA7DC
ov29_022FA7DC: ; 0x022FA7DC
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r2, #0x16
	mov r3, #1
	mov r6, r0
	ldr r4, [r5, #0xb4]
	bl DefenderAbilityIsActive__022F96CC
	cmp r0, #0
	beq _022FA81C
	ldrb r0, [r4, #0xbf]
	cmp r0, #4
	bne _022FA81C
	mov r0, r6
	mov r1, r5
	bl ov29_023061A8
_022FA81C:
	mov r0, r6
	mov r1, r5
	mov r2, #0x40
	mov r3, #1
	bl DefenderAbilityIsActive__022F96CC
	cmp r0, #0
	beq _022FA850
	ldrb r0, [r4, #0xd0]
	cmp r0, #2
	bne _022FA850
	mov r0, r6
	mov r1, r5
	bl EndCringeClassStatus
_022FA850:
	mov r0, r6
	mov r1, r5
	mov r2, #0x42
	mov r3, #1
	bl DefenderAbilityIsActive__022F96CC
	cmp r0, #0
	beq _022FA884
	ldrb r0, [r4, #0xbf]
	cmp r0, #1
	bne _022FA884
	mov r0, r6
	mov r1, r5
	bl ov29_023061A8
_022FA884:
	mov r0, r6
	mov r1, r5
	mov r2, #0x29
	mov r3, #1
	bl DefenderAbilityIsActive__022F96CC
	cmp r0, #0
	beq _022FA8B8
	ldrb r0, [r4, #0xd0]
	cmp r0, #7
	bne _022FA8B8
	mov r0, r6
	mov r1, r5
	bl EndCringeClassStatus
_022FA8B8:
	mov r0, r6
	mov r1, r5
	mov r2, #0x36
	mov r3, #1
	bl DefenderAbilityIsActive__022F96CC
	cmp r0, #0
	bne _022FA8F0
	mov r0, r6
	mov r1, r5
	mov r2, #0x49
	mov r3, #1
	bl DefenderAbilityIsActive__022F96CC
	cmp r0, #0
	beq _022FA924
_022FA8F0:
	mov r0, r5
	bl ov29_023007A8
	cmp r0, #0
	bne _022FA90C
	ldrb r0, [r4, #0xbd]
	cmp r0, #4
	bne _022FA924
_022FA90C:
	mov r3, #1
	mov r0, r6
	mov r1, r5
	mov r2, #0
	str r3, [sp]
	bl ov29_02305FDC
_022FA924:
	mov r0, r6
	mov r1, r5
	mov r2, #0x41
	mov r3, #1
	bl DefenderAbilityIsActive__022F96CC
	cmp r0, #0
	beq _022FA95C
	ldrb r0, [r4, #0xc4]
	cmp r0, #1
	bne _022FA95C
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl EndFrozenClassStatus
_022FA95C:
	mov r0, r6
	mov r1, r5
	mov r2, #0x45
	mov r3, #1
	bl DefenderAbilityIsActive__022F96CC
	cmp r0, #0
	beq _022FA998
	ldrb r0, [r4, #0xbf]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _022FA998
	mov r0, r6
	mov r1, r5
	bl ov29_023061A8
_022FA998:
	mov r0, r5
	mov r1, #0x25
	bl AbilityIsActive2
	cmp r0, #0
	beq _022FA9CC
	mov r0, #0
	strb r0, [r4, #0xff]
	ldrb r0, [r4, #0xd5]
	cmp r0, #0xc
	bne _022FA9CC
	mov r0, r6
	mov r1, r5
	bl ov29_023064F4
_022FA9CC:
	mov r0, r5
	mov r1, #0x2b
	bl AbilityIsActive2
	cmp r0, #0
	beq _022FA9FC
	ldrb r0, [r4, #0xc4]
	cmp r0, #2
	bne _022FA9FC
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl EndFrozenClassStatus
_022FA9FC:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov29_022FA7DC

	arm_func_start ov29_022FAA04
ov29_022FAA04: ; 0x022FAA04
	ldr ip, [r0, #0xb4]
	mov r3, #0
_022FAA0C:
	add r2, ip, r3, lsl #3
	ldrb r0, [r2, #0x124]
	add r3, r3, #1
	cmp r3, #4
	bic r0, r0, #0x10
	strb r0, [r2, #0x124]
	blt _022FAA0C
	ldrb r0, [ip, #0x144]
	bic r0, r0, #0x10
	strb r0, [ip, #0x144]
	ldrh r0, [r1, #4]
	cmp r0, #0x160
	ldreqb r0, [ip, #0x144]
	orreq r0, r0, #0x10
	streqb r0, [ip, #0x144]
	ldrneb r0, [r1]
	orrne r0, r0, #0x10
	strneb r0, [r1]
	bx lr
	arm_func_end ov29_022FAA04

	arm_func_start ov29_022FAA58
ov29_022FAA58: ; 0x022FAA58
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r1, _022FAC90 ; =0x02353538
	mov sl, r0
	ldr r0, [r1]
	mov r6, #0
	add r0, r0, #0x328
	add r4, r0, #0x12800
_022FAA78:
	ldr r5, [r4, r6, lsl #2]
	mov r0, r5
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FAB98
	mov r0, r5
	mov r1, #0x37
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022FAB98
	ldr sb, [r5, #0xb4]
	mov r8, #0
	mov r7, r8
	add fp, sb, #0x124
_022FAAB0:
	ldrb r1, [fp, r7, lsl #3]
	add r0, fp, r7, lsl #3
	str r0, [sp]
	tst r1, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022FAB00
	ldr r0, [sp]
	bl GetMaxPpWrapper
	ldr r1, [sp]
	ldrb r1, [r1, #6]
	cmp r1, r0
	beq _022FAB00
	add r0, r8, #1
	mov r1, r0, lsl #0x10
	mov r2, r8, lsl #1
	add r0, sp, #4
	strh r7, [r0, r2]
	mov r8, r1, asr #0x10
_022FAB00:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #4
	blt _022FAAB0
	cmp r8, #0
	ble _022FAB4C
	mov r0, r8
	bl DungeonRandInt
	mov r0, r0, lsl #0x10
	add r1, sp, #4
	mov r0, r0, asr #0xf
	ldrsh r0, [r1, r0]
	add r1, sb, #0x124
	add r1, r1, r0, lsl #3
	ldrb r0, [r1, #6]
	add r0, r0, #1
	strb r0, [r1, #6]
	b _022FAB54
_022FAB4C:
	mov r0, #0
	b _022FAB58
_022FAB54:
	mov r0, #1
_022FAB58:
	cmp r0, #0
	beq _022FAB98
	mov r0, r5
	bl ov29_022E4964
	cmp sl, #0
	bne _022FAB98
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, #1
	mov r1, #0x37
	bl ov29_0234B084
	mov r0, r5
	mov r1, #0xc20
	bl LogMessageByIdWithPopupCheckUser
_022FAB98:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	cmp r6, #4
	blt _022FAA78
	mov r8, #0
	mov fp, r8
_022FABB4:
	ldr sb, [r4, r8, lsl #2]
	mov r0, sb
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FAC74
	ldr r6, [sb, #0xb4]
	mov r7, fp
	add r5, r6, #0x124
	b _022FABFC
_022FABD8:
	add r0, r5, r7, lsl #3
	bl GetMaxPp
	add r1, r6, r7, lsl #3
	ldrb r1, [r1, #0x12a]
	cmp r1, r0
	blt _022FAC04
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
_022FABFC:
	cmp r7, #4
	blt _022FABD8
_022FAC04:
	cmp r7, #4
	beq _022FAC74
	mov r0, sb
	mov r1, #0x47
	bl ExclusiveItemEffectIsActive__022FAC98
	cmp r0, #0
	beq _022FAC74
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, sb
	mov r1, #0x47
	add r2, sp, #0xc
	bl ov29_0230F654
	mov r0, #1
	add r1, sp, #0xc
	bl ov29_02344B44
	cmp sl, #0
	bne _022FAC60
	ldr r1, _022FAC94 ; =0x00000C23
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
_022FAC60:
	mov r0, sb
	mov r1, sb
	mov r2, #1
	mov r3, sl
	bl RestoreMovePP
_022FAC74:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #4
	blt _022FABB4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FAC90: .word 0x02353538
_022FAC94: .word 0x00000C23
	arm_func_end ov29_022FAA58

	arm_func_start ExclusiveItemEffectIsActive__022FAC98
ExclusiveItemEffectIsActive__022FAC98: ; 0x022FAC98
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #6]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r2, #0x228
	bl ExclusiveItemEffectFlagTest
	ldmia sp!, {r3, pc}
	arm_func_end ExclusiveItemEffectIsActive__022FAC98

	arm_func_start ov29_022FACBC
ov29_022FACBC: ; 0x022FACBC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	ldr r1, _022FAD44 ; =0x02353538
	mov sb, r0
	ldr r0, [r1]
	mov r8, #0
	add r0, r0, #0x328
	ldr r5, _022FAD48 ; =0x000003E7
	add r7, r0, #0x12800
	mov r4, r8
	mov r6, #0x48
_022FACE8:
	ldr sl, [r7, r8, lsl #2]
	mov r0, sl
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FAD28
	mov r0, sl
	mov r1, r6
	bl ExclusiveItemEffectIsActive__022FAC98
	cmp r0, #0
	beq _022FAD28
	mov r0, sl
	mov r1, sl
	mov r2, r5
	mov r3, r4
	str sb, [sp]
	bl TryIncreaseHp
_022FAD28:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #4
	blt _022FACE8
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022FAD44: .word 0x02353538
_022FAD48: .word 0x000003E7
	arm_func_end ov29_022FACBC

	arm_func_start ov29_022FAD4C
ov29_022FAD4C: ; 0x022FAD4C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, _022FAF00 ; =0x02353538
	mov r8, #0
	ldr r1, [r1]
	sub r3, r8, #1
	add r2, r1, #0xcc00
	ldrsh r4, [r2, #0xe4]
	add r1, r1, #0x328
	add r5, r1, #0x12800
	cmp r4, r3
	ldreqsh r1, [r2, #0xe6]
	mov sb, r0
	moveq r0, r3
	cmpeq r1, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r7, #0
	mov r4, #0x1a
	b _022FADE4
_022FAD94:
	ldr r6, [r5, r7, lsl #2]
	mov r0, r6
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FADD8
	ldr r0, [r6, #0xb4]
	ldrb r0, [r0, #0x48]
	cmp r0, #0xd9
	blo _022FADC0
	cmp r0, #0xe4
	blo _022FADD8
_022FADC0:
	mov r0, r6
	mov r1, r4
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r8, #1
	bne _022FADEC
_022FADD8:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
_022FADE4:
	cmp r7, #4
	blt _022FAD94
_022FADEC:
	cmp r8, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bl GetFloorType
	cmp r0, #0
	bne _022FAEEC
	cmp sb, #0
	bne _022FAE14
	ldr r1, _022FAF04 ; =0x00000C21
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
_022FAE14:
	bl GetLeader
	mov r5, r0
	add r0, sp, #0
	add r1, sp, #2
	mov r4, #0
	bl ov29_023363C0
	ldrsh r1, [sp]
	ldrsh r3, [r5, #4]
	ldrsh r2, [sp, #2]
	cmp r3, r1
	ldreqsh r0, [r5, #6]
	cmpeq r0, r2
	cmp r3, r1
	bne _022FAE58
	ldrsh r0, [r5, #6]
	cmp r0, r2
	movlt r4, #0
_022FAE58:
	cmp r3, r1
	ldrltsh r0, [r5, #6]
	cmplt r0, r2
	movlt r4, #1
	cmp r3, r1
	bge _022FAE7C
	ldrsh r0, [r5, #6]
	cmp r0, r2
	moveq r4, #2
_022FAE7C:
	cmp r3, r1
	bge _022FAE90
	ldrsh r0, [r5, #6]
	cmp r0, r2
	movgt r4, #3
_022FAE90:
	cmp r3, r1
	bne _022FAEA4
	ldrsh r0, [r5, #6]
	cmp r0, r2
	movgt r4, #4
_022FAEA4:
	cmp r3, r1
	ldrgtsh r0, [r5, #6]
	cmpgt r0, r2
	movgt r4, #5
	cmp r3, r1
	ble _022FAEC8
	ldrsh r0, [r5, #6]
	cmp r0, r2
	moveq r4, #6
_022FAEC8:
	cmp r3, r1
	ble _022FAEDC
	ldrsh r0, [r5, #6]
	cmp r0, r2
	movlt r4, #7
_022FAEDC:
	mov r0, r5
	mov r1, r4
	bl ov29_022E6928
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FAEEC:
	bl GetFloorType
	cmp r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bl GetFloorType
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FAF00: .word 0x02353538
_022FAF04: .word 0x00000C21
	arm_func_end ov29_022FAD4C

	arm_func_start ov29_022FAF08
ov29_022FAF08: ; 0x022FAF08
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, _022FAFC8 ; =0x02353538
	mov r6, r0
	ldr r0, [r1]
	mov r5, #0
	add r0, r0, #0x328
	add r8, r0, #0x12800
	bl ov29_022E0880
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov sb, r5
	mov r7, #0x36
	b _022FAF74
_022FAF3C:
	ldr r4, [r8, sb, lsl #2]
	mov r0, r4
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FAF68
	mov r0, r4
	mov r1, r7
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r5, #1
	bne _022FAF7C
_022FAF68:
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, asr #0x10
_022FAF74:
	cmp sb, #4
	blt _022FAF3C
_022FAF7C:
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, _022FAFC8 ; =0x02353538
	ldr r0, _022FAFCC ; =0x00012AF8
	ldr r1, [r1]
	ldrsh r1, [r1, r0]
	cmp r1, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, #0
	bl ov29_0234B09C
	ldr r1, _022FAFD0 ; =0x00000C22
	mov r0, r4
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #0x78
	mov r1, #0xa
	bl ov29_022EA370
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FAFC8: .word 0x02353538
_022FAFCC: .word 0x00012AF8
_022FAFD0: .word 0x00000C22
	arm_func_end ov29_022FAF08

	arm_func_start ov29_022FAFD4
ov29_022FAFD4: ; 0x022FAFD4
	stmdb sp!, {r3, lr}
	mov r2, #1
	mov r3, #0
	bl ov29_0230175C
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022FAFD4

	arm_func_start GetTeamMemberWithIqSkill
GetTeamMemberWithIqSkill: ; 0x022FAFF8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _022FB060 ; =0x02353538
	mov r4, #0
	ldr r1, [r1]
	mov r5, r0
	add r0, r1, #0x328
	mov r7, r4
	add r6, r0, #0x12800
	b _022FB050
_022FB01C:
	ldr r0, [r6, r7, lsl #2]
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FB044
	ldr r0, [r6, r7, lsl #2]
	mov r1, r5
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrne r4, [r6, r7, lsl #2]
	bne _022FB058
_022FB044:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
_022FB050:
	cmp r7, #4
	blt _022FB01C
_022FB058:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FB060: .word 0x02353538
	arm_func_end GetTeamMemberWithIqSkill

	arm_func_start TeamMemberHasEnabledIqSkill
TeamMemberHasEnabledIqSkill: ; 0x022FB064
	stmdb sp!, {r3, lr}
	bl GetTeamMemberWithIqSkill
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end TeamMemberHasEnabledIqSkill

	arm_func_start TeamLeaderIqSkillIsEnabled
TeamLeaderIqSkillIsEnabled: ; 0x022FB080
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl GetLeader
	mov r1, r4
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end TeamLeaderIqSkillIsEnabled

	arm_func_start ov29_022FB0A8
ov29_022FB0A8: ; 0x022FB0A8
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #0xb4]
	mov r0, #0
	mov lr, r0
	mov r2, r0
	mov r3, #1
_022FB0C0:
	add r1, ip, lr, lsl #3
	ldrb r1, [r1, #0x124]
	tst r1, #1
	movne r1, r3
	moveq r1, r2
	tst r1, #0xff
	beq _022FB0F4
	add r1, ip, lr, lsl #3
	ldrb r1, [r1, #0x12a]
	cmp r1, #0
	addeq r0, r0, #1
	moveq r0, r0, lsl #0x10
	moveq r0, r0, asr #0x10
_022FB0F4:
	add r1, lr, #1
	mov r1, r1, lsl #0x10
	mov lr, r1, asr #0x10
	cmp lr, #4
	blt _022FB0C0
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022FB0A8

	arm_func_start ov29_022FB10C
ov29_022FB10C: ; 0x022FB10C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	ldr r6, [sb, #0xb4]
	mov r7, #0
	mov sl, r0
	mov r8, r2
	add r4, r6, #0x124
	mov fp, r7
	mov r5, #1
	b _022FB198
_022FB134:
	add r0, r6, r7, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, r5
	moveq r0, fp
	tst r0, #0xff
	beq _022FB18C
	cmp r8, #0
	beq _022FB168
	add r0, r4, r7, lsl #3
	bl ov29_02324798
	cmp r0, #0
	beq _022FB18C
_022FB168:
	add r0, r4, r7, lsl #3
	bl GetMoveType
	mov r2, r0
	mov r0, sb
	mov r1, sl
	bl ov29_0230AA8C
	cmp r0, #3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022FB18C:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
_022FB198:
	cmp r7, #4
	blt _022FB134
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov29_022FB10C

	arm_func_start ov29_022FB1A8
ov29_022FB1A8: ; 0x022FB1A8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	ldr r6, [r0, #0xb4]
	mov r4, r7
	mov r5, #1
	b _022FB204
_022FB1C0:
	add r0, r6, r7, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _022FB1F8
	add r0, r6, r7, lsl #3
	add r0, r0, #0x100
	ldrh r0, [r0, #0x28]
	bl IsOneHitKoMove
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_022FB1F8:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
_022FB204:
	cmp r7, #4
	blt _022FB1C0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022FB1A8

	arm_func_start ov29_022FB214
ov29_022FB214: ; 0x022FB214
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x74
	mov sl, r0
	mov sb, r1
	mov r5, #0
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FB244
	mov r0, sb
	bl EntityIsValid__022F7364
	cmp r0, #0
	bne _022FB24C
_022FB244:
	mov r0, #0
	b _022FB508
_022FB24C:
	ldr r4, [sb, #0xb4]
	ldrb r0, [r4, #6]
	cmp r0, #0
	ldrsh r0, [r4, #0x66]
	beq _022FB31C
	cmp r0, #0
	beq _022FB504
	ldrsh r0, [r4, #0x66]
	bl ov29_0231E990
	cmp r0, #0
	beq _022FB504
	mov r0, sl
	add r1, r4, #0x62
	bl ov29_0231D4A4
	cmp r0, #0
	beq _022FB504
	mov r0, r5
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, sb
	mov r0, #1
	mov r2, r5
	bl SubstitutePlaceholderStringTags
	add r1, r4, #0x62
	mov r0, #1
	bl ov29_02344B44
	ldr r2, _022FB510 ; =0x00000C24
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	ldrh r2, [r4, #0x62]
	mov r0, sl
	add r1, r4, #0x62
	strh r2, [sp, #8]
	ldrh r2, [r4, #0x64]
	strh r2, [sp, #0xa]
	ldrh r2, [r4, #0x66]
	strh r2, [sp, #0xc]
	bl ov29_0230F9A4
	add r0, r4, #0x62
	bl ItemZInit
	mov r0, r5
	str sl, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	mov r3, sb
	mov r1, r0
	mov r2, r0
	bl ApplyItemEffect
	mov r5, #1
	b _022FB504
_022FB31C:
	bl ov29_0231E990
	cmp r0, #0
	beq _022FB3D4
	mov r0, sl
	add r1, r4, #0x62
	bl ov29_0231D4A4
	cmp r0, #0
	beq _022FB504
	mov r0, r5
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, sb
	mov r0, #1
	mov r2, r5
	bl SubstitutePlaceholderStringTags
	add r1, r4, #0x62
	mov r0, #1
	bl ov29_02344B44
	ldr r2, _022FB510 ; =0x00000C24
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	ldrh r2, [r4, #0x62]
	mov r0, sl
	add r1, r4, #0x62
	strh r2, [sp, #8]
	ldrh r2, [r4, #0x64]
	strh r2, [sp, #0xa]
	ldrh r2, [r4, #0x66]
	strh r2, [sp, #0xc]
	bl ov29_0230F9A4
	add r0, r4, #0x62
	bl RemoveEquivItem
	add r0, r4, #0x62
	bl ItemZInit
	mov r0, r5
	str sl, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	mov r3, sb
	mov r1, r0
	mov r2, r0
	bl ApplyItemEffect
	mov r5, #1
	b _022FB504
_022FB3D4:
	bl GetNbItemsInBag
	mov r7, r0
	mov r6, r5
	add r4, sp, #0xe
	b _022FB3F8
_022FB3E8:
	mov r0, r7
	bl RandInt
	strb r0, [r4, r6]
	add r6, r6, #1
_022FB3F8:
	cmp r6, r7
	blt _022FB3E8
	add r0, sp, #0xe
	mov r1, #0
	add r0, r0, r7
	b _022FB418
_022FB410:
	strb r1, [r0, r1]
	add r1, r1, #1
_022FB418:
	cmp r1, r7
	blt _022FB410
	mov r8, #0
	add r4, sp, #0xe
	ldr fp, _022FB514 ; =0x020AF6B8
	b _022FB4FC
_022FB430:
	ldrb r1, [r4, r8]
	ldr r3, [fp]
	mov r0, #6
	smulbb r2, r1, r0
	ldr r1, [r3, #0x384]
	ldrb r0, [r1, r2]
	add r6, r1, r2
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022FB4F8
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _022FB4F8
	ldrsh r0, [r6, #4]
	bl ov29_0231E990
	cmp r0, #0
	beq _022FB4F8
	mov r0, sl
	mov r1, r6
	bl ov29_0231D4A4
	cmp r0, #0
	beq _022FB504
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, sb
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r1, r6
	mov r0, #1
	bl ov29_02344B44
	mov r0, sl
	mov r1, sb
	ldr r2, _022FB518 ; =0x00000C25
	bl LogMessageByIdWithPopupCheckUserTarget
	str sl, [sp]
	mov r3, sb
	str r6, [sp, #4]
	mov r0, #0
	mov r1, r0
	mov r2, r0
	bl ApplyItemEffect
	mov r0, r6
	bl RemoveEquivItem
	mov r5, #1
	b _022FB504
_022FB4F8:
	add r8, r8, #1
_022FB4FC:
	cmp r8, r7, lsl #1
	blt _022FB430
_022FB504:
	mov r0, r5
_022FB508:
	add sp, sp, #0x74
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FB510: .word 0x00000C24
_022FB514: .word 0x020AF6B8
_022FB518: .word 0x00000C25
	arm_func_end ov29_022FB214

	arm_func_start ov29_022FB51C
ov29_022FB51C: ; 0x022FB51C
	stmdb sp!, {r3, lr}
	bl GetScenarioBalance__0204CB94
	cmp r0, #2
	movhs r0, #1
	movlo r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022FB51C

	arm_func_start ov29_022FB538
ov29_022FB538: ; 0x022FB538
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	bl EntityIsValid__022F7364
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r5, [r6, #0xb4]
	mov r4, #0
	ldr r7, _022FB5E8 ; =0x02353538
	strb r4, [r5, #0x10c]
	ldr r0, [r7]
	add r0, r0, #0x3000
	ldrb r0, [r0, #0xe38]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	b _022FB5DC
_022FB574:
	ldr r0, [r7]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb78]
	mov r0, r8
	bl EntityIsValid__022F7364
	cmp r0, #0
	cmpne r8, r6
	beq _022FB5D8
	ldr r0, [r8, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #2
	bne _022FB5D8
	mov r0, r6
	mov r1, r8
	bl ov29_022E274C
	cmp r0, #0
	beq _022FB5D8
	ldr r0, [r8, #0xb4]
	ldrb r0, [r0, #0xd9]
	cmp r0, #0
	movne r0, #2
	moveq r0, #1
	strb r0, [r5, #0x10c]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022FB5D8:
	add r4, r4, #1
_022FB5DC:
	cmp r4, #0x14
	blt _022FB574
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022FB5E8: .word 0x02353538
	arm_func_end ov29_022FB538

	arm_func_start ov29_022FB5EC
ov29_022FB5EC: ; 0x022FB5EC
	stmdb sp!, {r4, lr}
	bl GetSpawnThreshold
	mov r4, r0
	bl GetScenarioBalance__022E095C
	cmp r4, r0
	movls r0, #1
	movhi r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022FB5EC

	arm_func_start HasLowHealth
HasLowHealth: ; 0x022FB610
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl EntityIsValid__022F7364
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	cmp r0, #1
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r3, [r4, #0xb4]
	ldr r0, _022FB674 ; =0x000003E7
	ldrsh r2, [r3, #0x12]
	ldrsh r1, [r3, #0x16]
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	mov r0, r2, asr #1
	ldrsh r1, [r3, #0x10]
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	movlt r0, #1
	movge r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	.align 2, 0
_022FB674: .word 0x000003E7
	arm_func_end HasLowHealth

	arm_func_start ov29_022FB678
ov29_022FB678: ; 0x022FB678
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, #0
	ldr r4, _022FB6E0 ; =0x0235171C
	b _022FB6D0
_022FB690:
	mov r1, r5, lsl #2
	add r0, r4, r5, lsl #2
	ldrsh r3, [r4, r1]
	ldrsh ip, [r7, #4]
	ldrsh r1, [r0, #2]
	ldrsh r2, [r7, #6]
	add r0, ip, r3
	add r1, r2, r1
	bl GetTile
	ldr r0, [r0, #0xc]
	cmp r0, r6
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
_022FB6D0:
	cmp r5, #8
	blt _022FB690
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FB6E0: .word 0x0235171C
	arm_func_end ov29_022FB678

	arm_func_start ov29_022FB6E4
ov29_022FB6E4: ; 0x022FB6E4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl IsMonster__022F9720
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0x48]
	cmp r0, #0xd6
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022FB6E4

	arm_func_start ov29_022FB718
ov29_022FB718: ; 0x022FB718
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl EntityIsValid__022F7364
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr sb, [sl, #0xb4]
	mov r1, #0
	mov r0, sl
	strh r1, [sb, #0x16]
	bl Conversion2IsActive
	mov r6, r0
	mov r0, sl
	mov r1, #0x38
	ldr r4, [sl, #0xb4]
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrne r0, _022FB834 ; =0x020A1870
	mov r8, #0
	ldrnesh r1, [r4, #0x16]
	ldrnesh r0, [r0]
	add r5, r4, #0x124
	mov fp, r8
	addne r0, r1, r0
	strneh r0, [r4, #0x16]
	mov r4, #1
_022FB77C:
	ldrb r0, [r5, r8, lsl #3]
	add r7, r5, r8, lsl #3
	tst r0, #1
	movne r0, r4
	moveq r0, fp
	tst r0, #0xff
	beq _022FB7C0
	ldrh r2, [r7, #2]
	mov r0, sl
	mov r1, #0x39
	bic r2, r2, #0x100
	strh r2, [r7, #2]
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrneh r0, [r7, #2]
	orrne r0, r0, #0x100
	strneh r0, [r7, #2]
_022FB7C0:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #4
	blt _022FB77C
	mov r0, sl
	bl ov29_02348100
	cmp r6, #2
	bne _022FB7FC
	mov r0, sl
	bl Conversion2IsActive
	cmp r0, #0
	bne _022FB7FC
	mov r0, sl
	bl ov29_02307CE0
_022FB7FC:
	ldrsh r1, [sb, #0x12]
	ldrsh r0, [sb, #0x16]
	ldr r2, _022FB838 ; =0x000003E7
	add r1, r1, r0
	cmp r1, r2
	ldrsh r0, [sb, #0x10]
	movle r2, r1
	cmp r0, r2
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022FB838 ; =0x000003E7
	cmp r1, r0
	movgt r1, r0
	strh r1, [sb, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FB834: .word 0x020A1870
_022FB838: .word 0x000003E7
	arm_func_end ov29_022FB718

	arm_func_start ov29_022FB83C
ov29_022FB83C: ; 0x022FB83C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov sb, r1
	bl EntityIsValid__022F7364
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r8, [sl, #0xb4]
	mov r7, #0
	add r6, r8, #0x124
	mov r4, r7
	mov r5, #1
_022FB868:
	ldrb r0, [r6, r7, lsl #3]
	mov r1, r7, lsl #3
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _022FB88C
	add r0, r6, r1
	bl GetMoveBasePp
_022FB88C:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #4
	blt _022FB868
	mov r0, sl
	bl ov29_022FB718
	cmp sb, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrsh r2, [r8, #0x12]
	ldrsh r1, [r8, #0x16]
	ldr r0, _022FB91C ; =0x000003E7
	mov sb, #0
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r8, #0x10]
	add r6, r8, #0x124
	mov r4, sb
	mov r5, #1
_022FB8DC:
	ldrb r0, [r6, sb, lsl #3]
	add r7, r6, sb, lsl #3
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _022FB904
	mov r0, r7
	bl GetMaxPp
	strb r0, [r7, #6]
_022FB904:
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, asr #0x10
	cmp sb, #4
	blt _022FB8DC
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022FB91C: .word 0x000003E7
	arm_func_end ov29_022FB83C

	arm_func_start ov29_022FB920
ov29_022FB920: ; 0x022FB920
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, _022FB980 ; =0x02353538
	mov r5, #0
_022FB92C:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bl ov29_022FB718
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
	cmp r5, #4
	blt _022FB92C
	mov r0, #0x41
	bl TeamMemberHasEnabledIqSkill
	cmp r0, #0
	ldrne r0, _022FB980 ; =0x02353538
	movne r1, #1
	ldreq r0, _022FB980 ; =0x02353538
	moveq r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1a000
	strb r1, [r0, #0x241]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022FB980: .word 0x02353538
	arm_func_end ov29_022FB920

	arm_func_start ov29_022FB984
ov29_022FB984: ; 0x022FB984
	mov r0, #0
	bx lr
	arm_func_end ov29_022FB984

	arm_func_start ov29_022FB98C
ov29_022FB98C: ; 0x022FB98C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #1
	ldr r0, _022FB9B8 ; =0x0000270F
	mov r4, r1
	sub r3, r2, #2
	bl ov29_022EA718
	mov r0, r5
	mov r1, r4
	bl ov29_022E576C
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022FB9B8: .word 0x0000270F
	arm_func_end ov29_022FB98C

	arm_func_start ov29_022FB9BC
ov29_022FB9BC: ; 0x022FB9BC
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xbc]
	bl ov29_022EFB04
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022FB9BC

	arm_func_start ov29_022FB9E0
ov29_022FB9E0: ; 0x022FB9E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl IsMonster__022F9720
	cmp r0, #0
	beq _022FBA4C
	ldr r1, [r5, #0xb4]
	mov r0, #0
	add ip, r1, #0x124
	mov r2, r0
	mov r3, #1
	b _022FBA44
_022FBA10:
	ldrb r1, [ip, r0, lsl #3]
	add lr, ip, r0, lsl #3
	tst r1, #1
	movne r1, r3
	moveq r1, r2
	tst r1, #0xff
	beq _022FBA38
	ldrh r1, [lr, #4]
	cmp r1, r4
	ldmeqia sp!, {r3, r4, r5, pc}
_022FBA38:
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
_022FBA44:
	cmp r0, #4
	blt _022FBA10
_022FBA4C:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022FB9E0

	arm_func_start ov29_022FBA54
ov29_022FBA54: ; 0x022FBA54
	stmdb sp!, {r3, lr}
	bl ov29_022FB9E0
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022FBA54

	arm_func_start ov29_022FBA70
ov29_022FBA70: ; 0x022FBA70
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl IsMonster__022F9720
	cmp r0, #0
	beq _022FBAAC
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0x48]
	cmp r0, #0xfa
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	cmp r0, #0xd9
	blo _022FBAAC
	cmp r0, #0xe4
	movlo r0, #1
	ldmloia sp!, {r4, pc}
_022FBAAC:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022FBA70

	arm_func_start ov29_022FBAB4
ov29_022FBAB4: ; 0x022FBAB4
	ldr r2, [r0, #0xb4]
	cmp r2, #0
	addne r0, r2, #0x100
	movne r1, #0
	strneh r1, [r0, #0x92]
	strne r1, [r2, #0x18c]
	bx lr
	arm_func_end ov29_022FBAB4

	arm_func_start IsSpecialStoryAlly
IsSpecialStoryAlly: ; 0x022FBAD0
	ldrb r0, [r0, #0x48]
	cmp r0, #0xd9
	blo _022FBAE8
	cmp r0, #0xe4
	movlo r0, #1
	bxlo lr
_022FBAE8:
	mov r0, #0
	bx lr
	arm_func_end IsSpecialStoryAlly

	arm_func_start IsExperienceLocked
IsExperienceLocked: ; 0x022FBAF0
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0x48]
	cmp r1, #0xfa
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl IsSpecialStoryAlly
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end IsExperienceLocked

	arm_func_start ov29_022FBB1C
ov29_022FBB1C: ; 0x022FBB1C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	ldr r4, _022FBBE4 ; =0x02353538
	ldr sl, _022FBBE8 ; =0x00019914
	mov r7, #0
	add r6, sp, #0
	mov r5, #3
_022FBB38:
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb78]
	mov r0, r8
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FBBD0
	ldr sb, [r8, #0xb4]
	ldr r2, [r4]
	ldrsh r1, [sb, #4]
	add r0, r8, #0x2c
	add r1, r2, r1, lsl #1
	ldrsh r1, [r1, sl]
	strh r1, [r8, #0xa8]
	bl sub_0201C0CC
	ldrsh r1, [r8, #0xa8]
	add r0, r8, #0x2c
	bl sub_0201C0E8
	mov r0, r8
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r8
	bl ov29_02304830
	ldrh r0, [r8, #4]
	mov r2, r6
	mov r3, r5
	strh r0, [sp]
	ldrh r0, [r8, #6]
	strh r0, [sp, #2]
	ldr r0, [sb, #0xb0]
	ldrsh r1, [sb, #4]
	bl ov29_022DDA54
	ldrsh r0, [r8, #4]
	ldrsh r1, [r8, #6]
	bl GetTileSafe
	ldrb r0, [r0, #7]
	strb r0, [r8, #0x25]
_022FBBD0:
	add r7, r7, #1
	cmp r7, #0x14
	blt _022FBB38
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022FBBE4: .word 0x02353538
_022FBBE8: .word 0x00019914
	arm_func_end ov29_022FBB1C

	arm_func_start ov29_022FBBEC
ov29_022FBBEC: ; 0x022FBBEC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, #0
	ldr r6, _022FBC48 ; =0x02353538
	b _022FBC38
_022FBC00:
	ldr r0, [r6]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FBC34
	ldr r0, [r7, #0xb4]
	ldrb r0, [r0, #0xbc]
	cmp r5, r0
	moveq r0, r7
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_022FBC34:
	add r4, r4, #1
_022FBC38:
	cmp r4, #0x14
	blt _022FBC00
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FBC48: .word 0x02353538
	arm_func_end ov29_022FBBEC

	arm_func_start ov29_022FBC4C
ov29_022FBC4C: ; 0x022FBC4C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, #0
	ldr r4, _022FBC90 ; =0x02353538
	b _022FBC80
_022FBC5C:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bl EntityIsValid__022F7364
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	add r5, r5, #1
_022FBC80:
	cmp r5, #4
	blt _022FBC5C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022FBC90: .word 0x02353538
	arm_func_end ov29_022FBC4C

	arm_func_start ov29_022FBC94
ov29_022FBC94: ; 0x022FBC94
	stmdb sp!, {r4, r5, r6, lr}
	bl GetBodySize
	ldr r6, _022FBD04 ; =0x02353538
	mov r4, r0
	mov r5, #0
_022FBCA8:
	ldr r0, [r6]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bl EntityIsValid__022F7364
	cmp r0, #0
	beq _022FBCE4
	ldr r0, [r6]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	ldr r0, [r0, #0xb4]
	ldrsh r0, [r0, #2]
	bl GetBodySize
	add r4, r4, r0
_022FBCE4:
	add r5, r5, #1
	cmp r5, #4
	blt _022FBCA8
	cmp r4, #6
	movle r0, #1
	movgt r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022FBD04: .word 0x02353538
	arm_func_end ov29_022FBC94

	arm_func_start ov29_022FBD08
ov29_022FBD08: ; 0x022FBD08
	ldr r0, _022FBD20 ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x3000
	str r1, [r0, #0xe1c]
	bx lr
	.align 2, 0
_022FBD20: .word 0x02353538
	arm_func_end ov29_022FBD08

	arm_func_start ov29_022FBD24
ov29_022FBD24: ; 0x022FBD24
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl IsMonster__022F9720
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _022FBD7C ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1cc
	add r3, r0, #0x3c00
	ldr r2, [r3, #0x50]
	cmp r2, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0xb4]
	mov r0, #1
	ldr r1, [r1, #0xb0]
	str r1, [r3, r2, lsl #2]
	ldr r1, [r3, #0x50]
	add r1, r1, #1
	str r1, [r3, #0x50]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022FBD7C: .word 0x02353538
	arm_func_end ov29_022FBD24

	arm_func_start ov29_022FBD80
ov29_022FBD80: ; 0x022FBD80
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl IsMonster__022F9720
	cmp r0, #0
	beq _022FBDD4
	ldr r0, _022FBDDC ; =0x02353538
	ldr r1, [r4, #0xb4]
	ldr r0, [r0]
	ldr r2, [r1, #0xb0]
	add r0, r0, #0x1cc
	add r1, r0, #0x3c00
	ldr ip, [r1, #0x50]
	mov r3, #0
	b _022FBDCC
_022FBDB8:
	ldr r0, [r1, r3, lsl #2]
	cmp r2, r0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	add r3, r3, #1
_022FBDCC:
	cmp r3, ip
	blt _022FBDB8
_022FBDD4:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_022FBDDC: .word 0x02353538
	arm_func_end ov29_022FBD80

	arm_func_start ov29_022FBDE0
ov29_022FBDE0: ; 0x022FBDE0
	ldr ip, _022FBDEC ; =ov29_022EFAE8
	ldrb r0, [r0, #0xbc]
	bx ip
	.align 2, 0
_022FBDEC: .word ov29_022EFAE8
	arm_func_end ov29_022FBDE0

	arm_func_start ov29_022FBDF0
ov29_022FBDF0: ; 0x022FBDF0
	ldr r0, [r0, #0xb4]
	ldr ip, _022FBE00 ; =ov29_022EFB04
	ldrb r0, [r0, #0xbc]
	bx ip
	.align 2, 0
_022FBE00: .word ov29_022EFB04
	arm_func_end ov29_022FBDF0

	arm_func_start ov29_022FBE04
ov29_022FBE04: ; 0x022FBE04
	stmdb sp!, {r3, lr}
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _022FBE4C
	ldr r0, _022FBE54 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl GetTurnLimit
	ldr r1, _022FBE54 ; =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x700
	ldrsh r1, [r1, #0x84]
	cmp r1, r0
	bne _022FBE4C
	bl ov29_023361D4
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
_022FBE4C:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_022FBE54: .word 0x02353538
	arm_func_end ov29_022FBE04

	arm_func_start ov29_022FBE58
ov29_022FBE58: ; 0x022FBE58
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr ip, [r4, #0xb4]
	mov r6, #1
	strb r6, [ip, #0x100]
	ldrsh r5, [ip, #0x12]
	ldrsh r3, [ip, #0x16]
	ldr r7, _022FBF04 ; =0x022C5938
	mov r0, #0xc
	add r5, r5, r3
	smlabb r3, r1, r0, r7
	rsb lr, r6, #0x3e8
	cmp r5, lr
	movgt r5, lr
	strh r5, [ip, #0x14]
	mov r0, #0
	strh r0, [ip, #0x16]
	strh r0, [ip, #0x18]
	ldrsh r5, [r3, #2]
	add lr, ip, #0x100
	add r0, ip, #0x90
	strh r5, [ip, #0x12]
	ldrsh r5, [r3, #2]
	strh r5, [ip, #0x10]
	ldrb r5, [r3, #6]
	strb r5, [ip, #0x1a]
	ldrb r5, [r3, #7]
	strb r5, [ip, #0x1b]
	ldrb r5, [r3, #8]
	strb r5, [ip, #0x1c]
	ldrb r3, [r3, #9]
	strb r3, [ip, #0x1d]
	strh r1, [lr, #0x68]
	strb r2, [ip, #0x16a]
	ldrsh r1, [ip, #2]
	ldrsh r2, [ip, #0xe]
	bl sub_02058EB0
	mov r0, r4
	bl ov29_023021F0
	mov r0, r4
	mov r1, #1
	bl ov29_022FB83C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FBF04: .word 0x022C5938
	arm_func_end ov29_022FBE58

	arm_func_start ov29_022FBF08
ov29_022FBF08: ; 0x022FBF08
	stmdb sp!, {r3, lr}
	ldr r0, _022FBF2C ; =0x02353538
	ldr r0, [r0]
	ldr r0, [r0, #0x7cc]
	sub r0, r0, #1
	cmp r0, #1
	ldmhiia sp!, {r3, pc}
	bl LoadWazaP2
	ldmia sp!, {r3, pc}
	.align 2, 0
_022FBF2C: .word 0x02353538
	arm_func_end ov29_022FBF08

	arm_func_start ov29_022FBF30
ov29_022FBF30: ; 0x022FBF30
	stmdb sp!, {r3, lr}
	ldr r0, _022FBF54 ; =0x02353538
	ldr r0, [r0]
	ldr r0, [r0, #0x7cc]
	sub r0, r0, #1
	cmp r0, #1
	ldmhiia sp!, {r3, pc}
	bl UnloadCurrentWazaP
	ldmia sp!, {r3, pc}
	.align 2, 0
_022FBF54: .word 0x02353538
	arm_func_end ov29_022FBF30

	arm_func_start ov29_022FBF58
ov29_022FBF58: ; 0x022FBF58
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x218
	ldr r1, _022FC230 ; =0x02353538
	mov r0, #0
	ldr r1, [r1]
	add r1, r1, #0xf4
	add r5, r1, #0x3400
	bl DungeonRngSetSecondary
	bl ov29_022FBF08
	add r0, sp, #0x16
	mov r1, #0
	bl ov29_022E7BE8
	mov r4, r0
	mov r6, #0
	b _022FC028
_022FBF94:
	add r0, sp, #0x16
	add r7, r0, r6, lsl #3
	mov r0, r7
	bl GetMonsterIdFromSpawnEntry
	strh r0, [r5]
	mov r0, r7
	bl GetMonsterLevelFromSpawnEntry
	strh r0, [r5, #2]
	ldrsh r1, [r5]
	ldrsh r2, [r5, #2]
	add r0, r5, #4
	bl ov29_02303B18
	ldrh r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0x170
	streqh r0, [r5, #4]
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	bl ov29_022FE2FC
	strh r0, [r5, #0xc]
	mov r7, #0
_022FBFE8:
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	mov r2, r7
	add r8, r5, r7
	bl ov29_022FE350
	strb r0, [r8, #0xe]
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	mov r2, r7
	bl ov29_022FE3B8
	add r7, r7, #1
	strb r0, [r8, #0x10]
	cmp r7, #2
	blt _022FBFE8
	add r5, r5, #0x12
	add r6, r6, #1
_022FC028:
	cmp r6, r4
	blt _022FBF94
	mov r0, #0
	b _022FC040
_022FC038:
	strh r0, [r5], #0x12
	add r6, r6, #1
_022FC040:
	cmp r6, #0x40
	blt _022FC038
	cmp r4, #0x40
	bge _022FC0A8
	bl IsDestinationFloorWithFixedRoom
	cmp r0, #0
	bne _022FC0A8
	bl IsDestinationFloorWithMonster
	cmp r0, #0
	beq _022FC0A8
	mov r0, #0xa
	bl IsCurrentMissionType
	cmp r0, #0
	bne _022FC088
	mov r0, #9
	bl IsCurrentMissionType
	cmp r0, #0
	beq _022FC0A8
_022FC088:
	add r0, sp, #8
	bl ov29_022FE420
	add r0, sp, #0x16
	ldrsh r1, [sp, #0xc]
	ldrsh r2, [sp, #8]
	add r0, r0, r4, lsl #3
	bl SetMonsterLevelAndId
	add r4, r4, #1
_022FC0A8:
	cmp r4, #0x40
	bge _022FC0E0
	ldr r0, _022FC230 ; =0x02353538
	ldr r2, [r0]
	add r0, r2, #0x700
	ldrsh r1, [r0, #0xa8]
	cmp r1, #0
	beq _022FC0E0
	ldrb r1, [r2, #0x7aa]
	ldrsh r2, [r0, #0xa8]
	add r3, sp, #0x16
	add r0, r3, r4, lsl #3
	bl SetMonsterLevelAndId
	add r4, r4, #1
_022FC0E0:
	mov r2, #0
	ldr r1, _022FC230 ; =0x02353538
	mov sl, r2
_022FC0EC:
	ldr r0, [r1]
	add r0, r0, r2
	add r0, r0, #0x3000
	add r2, r2, #1
	strb sl, [r0, #0xb74]
	cmp r2, #0x258
	blt _022FC0EC
	mvn r0, #0
	mov r5, #1
	str r0, [sp]
	b _022FC1E8
_022FC118:
	ldr r6, [sp]
	mov r8, #0
	mov r7, r6
	b _022FC194
_022FC128:
	add r0, sp, #0x16
	add sb, r0, r8, lsl #3
	mov r0, sb
	bl GetMonsterIdFromSpawnEntry
	mov fp, r0
	mov r0, sb
	bl GetMonsterLevelFromSpawnEntry
	str r0, [sp, #4]
	mov r0, fp
	mov r1, #0x258
	bl DivideInt
	ldr r0, _022FC230 ; =0x02353538
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov sb, r1, asr #0x10
	add r0, r0, r1, asr #16
	add r0, r0, #0x3000
	ldrb r0, [r0, #0xb74]
	cmp r0, #0
	bne _022FC190
	ldr r1, [sp, #4]
	mov r0, sb
	bl GetExp
	cmp r7, r0
	movlt r7, r0
	movlt r6, sb
_022FC190:
	add r8, r8, #1
_022FC194:
	cmp r8, r4
	blt _022FC128
	cmp r6, #0
	blt _022FC1F0
	cmp r5, #0x100
	ble _022FC1C8
	ldr r0, _022FC230 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, r6
	add r1, r0, #0x3000
	mov r0, #1
	strb r0, [r1, #0xb74]
	b _022FC1E4
_022FC1C8:
	ldr r0, _022FC230 ; =0x02353538
	rsb r1, r5, #0x100
	ldr r0, [r0]
	add r5, r5, #2
	add r0, r0, r6
	add r0, r0, #0x3000
	strb r1, [r0, #0xb74]
_022FC1E4:
	add sl, sl, #1
_022FC1E8:
	cmp sl, r4
	blt _022FC118
_022FC1F0:
	ldr r1, _022FC230 ; =0x02353538
	mov r4, #0
	mov r2, #1
_022FC1FC:
	ldr r0, [r1]
	add r0, r0, r4
	add r0, r0, #0x3000
	ldrb r3, [r0, #0xb74]
	add r4, r4, #1
	cmp r3, #0
	streqb r2, [r0, #0xb74]
	cmp r4, #0x258
	blt _022FC1FC
	bl ov29_022FBF30
	bl DungeonRngSetPrimary
	add sp, sp, #0x218
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FC230: .word 0x02353538
	arm_func_end ov29_022FBF58

	arm_func_start ov29_022FC234
ov29_022FC234: ; 0x022FC234
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	ldrsh r0, [sp, #0x30]
	mov sb, r1
	mov r1, #0x258
	mov r8, r2
	mov r7, r3
	ldr r6, [sp, #0x34]
	bl DivideInt
	mov r0, r1, lsl #0x10
	ldr r2, _022FC464 ; =0x02353538
	mov r4, r0, asr #0x10
	ldr r1, [r2]
	mov fp, #0
	add r0, r1, #0xf4
	add r5, r0, #0x3400
	mov r3, r5
	mov r0, #0x12
	b _022FC314
_022FC284:
	mul r2, fp, r0
	ldrsh r1, [r3, r2]
	add r5, r3, r2
	cmp r1, #0
	beq _022FC31C
	cmp r1, r4
	ldreqsh r1, [r5, #2]
	cmpeq r1, r6
	bne _022FC310
	mov r1, r4
	mov r2, r6
	add r0, r5, #4
	bl ov29_02303B18
	mov r4, #0
_022FC2BC:
	add r0, r5, r4, lsl #1
	ldrh r1, [r0, #4]
	add r0, sl, r4, lsl #3
	bl GetInfoMoveCheckId
	add r4, r4, #1
	cmp r4, #4
	blt _022FC2BC
	ldrsh r0, [r5, #0xc]
	mov r2, #0
	strh r0, [sb]
_022FC2E4:
	add r1, r5, r2
	ldrb r0, [r1, #0xe]
	strb r0, [r8, r2]
	ldrb r0, [r1, #0x10]
	strb r0, [r7, r2]
	add r2, r2, #1
	cmp r2, #2
	blt _022FC2E4
	mov r0, #0
	strb r0, [sl, #0x20]
	b _022FC45C
_022FC310:
	add fp, fp, #1
_022FC314:
	cmp fp, #0x40
	blt _022FC284
_022FC31C:
	cmp fp, #0x40
	bne _022FC3A4
	add r0, sp, #0
	mov r1, r4
	mov r2, r6
	bl ov29_02303B18
	mov r5, #0
	add fp, sp, #0
_022FC33C:
	mov r0, r5, lsl #1
	ldrh r1, [fp, r0]
	add r0, sl, r5, lsl #3
	bl GetInfoMoveCheckId
	add r5, r5, #1
	cmp r5, #4
	blt _022FC33C
	mov r0, r4
	mov r1, r6
	bl ov29_022FE2FC
	strh r0, [sb]
	mov r5, #0
_022FC36C:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov29_022FE350
	strb r0, [r8, r5]
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov29_022FE3B8
	strb r0, [r7, r5]
	add r5, r5, #1
	cmp r5, #2
	blt _022FC36C
	b _022FC454
_022FC3A4:
	strh r4, [r5]
	mov r1, r4
	mov r2, r6
	strh r6, [r5, #2]
	add r0, r5, #4
	bl ov29_02303B18
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	bl ov29_022FE2FC
	strh r0, [r5, #0xc]
	mov r6, #0
_022FC3D0:
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	mov r2, r6
	add r4, r5, r6
	bl ov29_022FE350
	strb r0, [r4, #0xe]
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	mov r2, r6
	bl ov29_022FE3B8
	add r6, r6, #1
	strb r0, [r4, #0x10]
	cmp r6, #2
	blt _022FC3D0
	mov r4, #0
_022FC40C:
	add r0, r5, r4, lsl #1
	ldrh r1, [r0, #4]
	add r0, sl, r4, lsl #3
	bl GetInfoMoveCheckId
	add r4, r4, #1
	cmp r4, #4
	blt _022FC40C
	ldrsh r0, [r5, #0xc]
	mov r2, #0
	strh r0, [sb]
_022FC434:
	add r1, r5, r2
	ldrb r0, [r1, #0xe]
	strb r0, [r8, r2]
	ldrb r0, [r1, #0x10]
	strb r0, [r7, r2]
	add r2, r2, #1
	cmp r2, #2
	blt _022FC434
_022FC454:
	mov r0, #0
	strb r0, [sl, #0x20]
_022FC45C:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FC464: .word 0x02353538
	arm_func_end ov29_022FC234

	arm_func_start ov29_022FC468
ov29_022FC468: ; 0x022FC468
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, [sp, #0x24]
	mov sb, r0
	cmp r4, #0xb
	mov r0, #0
	cmp r4, #0xc
	moveq r0, #1
	cmp r4, #0xd
	moveq r0, #2
	cmp r4, #0xe
	moveq r0, #3
	mov r8, r1
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x20]
	bl GetExplorerMazeMonster
	mov r4, r0
	mov r0, sb
	add r1, r4, #0x22
	bl GroundToDungeonMoveset
	ldrsh r0, [r4, #0xa]
	mov r2, #0
	strh r0, [r8]
_022FC4C4:
	add r1, r4, r2
	ldrb r0, [r1, #0xc]
	strb r0, [r7, r2]
	ldrb r0, [r1, #0xe]
	strb r0, [r6, r2]
	add r2, r2, #1
	cmp r2, #2
	blt _022FC4C4
	ldrsh r1, [r4, #8]
	ldr r0, _022FC508 ; =0x020A1C7C
	ldr r0, [r0, #0x20]
	strh r1, [r5]
	cmp r1, r0
	strlth r0, [r5]
	mov r0, #0
	strb r0, [sb, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FC508: .word 0x020A1C7C
	arm_func_end ov29_022FC468

	arm_func_start InitTeam
InitTeam: ; 0x022FC50C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x44
	mov sl, r0
	mov r0, #0
	bl DungeonRngSetSecondary
	ldr r0, _022FC98C ; =0x02353538
	ldr r0, [r0]
	add r1, r0, #0xcc00
	ldrsh r0, [r1, #0xe0]
	ldrsh r1, [r1, #0xe2]
	bl GetTile
	ldrb fp, [r0, #7]
	mov r4, #0
_022FC540:
	mov r0, r4
	bl GetActiveTeamMember
	add r1, r4, #1
	mov r1, r1, lsl #0x10
	strh r4, [r0, #0xa]
	mov r4, r1, asr #0x10
	cmp r4, #4
	blt _022FC540
	mov r7, #0
	mov r6, #1
	mov r8, r7
	mov r5, r7
	mov sb, r6
	add r4, sp, #0x34
_022FC578:
	mov r0, r8
	bl GetActiveTeamMember
	ldrb r1, [r0]
	tst r1, #1
	movne r2, r6
	moveq r2, r5
	tst r2, #0xff
	beq _022FC5B0
	tst r1, #2
	movne r1, sb
	moveq r1, #0
	tst r1, #0xff
	strne r0, [r4, r7, lsl #2]
	addne r7, r7, #1
_022FC5B0:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #4
	blt _022FC578
	mov r1, #0
	add r0, sp, #0x34
	b _022FC5D8
_022FC5D0:
	str r1, [r0, r7, lsl #2]
	add r7, r7, #1
_022FC5D8:
	cmp r7, #4
	blt _022FC5D0
	mov r8, #0
	mov r7, r8
	mov r3, r8
	mov r4, #1
	mov r2, r8
	add r5, sp, #0x34
	add r1, sp, #0x24
_022FC5FC:
	ldr r6, [r5, r7, lsl #2]
	cmp r6, #0
	beq _022FC628
	ldrb r0, [r6, #1]
	cmp r0, #0
	movne r0, r4
	moveq r0, r3
	tst r0, #0xff
	strne r6, [r1, r8, lsl #2]
	strne r2, [r5, r7, lsl #2]
	addne r8, r8, #1
_022FC628:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #4
	blt _022FC5FC
	ldr r0, _022FC98C ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75c]
	cmp r0, #0
	bne _022FC698
	mov r7, #0
	mov r4, r7
	add r5, sp, #0x34
	add sb, sp, #0x24
_022FC660:
	ldr r6, [r5, r7, lsl #2]
	cmp r6, #0
	beq _022FC684
	ldrb r0, [r6, #3]
	bl JoinedAtRangeCheck2Veneer
	cmp r0, #0
	strne r6, [sb, r8, lsl #2]
	strne r4, [r5, r7, lsl #2]
	addne r8, r8, #1
_022FC684:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #4
	blt _022FC660
_022FC698:
	mov r4, #0
	mov r2, r4
	add r1, sp, #0x24
	add r3, sp, #0x34
_022FC6A8:
	ldr r0, [r3, r4, lsl #2]
	cmp r0, #0
	strne r0, [r1, r8, lsl #2]
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	strne r2, [r3, r4, lsl #2]
	mov r4, r0, asr #0x10
	addne r8, r8, #1
	cmp r4, #4
	blt _022FC6A8
	mov r1, #0
	add r0, sp, #0x24
	b _022FC6E4
_022FC6DC:
	str r1, [r0, r8, lsl #2]
	add r8, r8, #1
_022FC6E4:
	cmp r8, #4
	blt _022FC6DC
	mov sb, #0
_022FC6F0:
	add r0, sp, #0x24
	ldr r5, [r0, sb, lsl #2]
	mov r6, #0
	cmp r5, #0
	beq _022FC8BC
	ldrsh r1, [r5, #0xc]
	sub r0, r1, #0x17c
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #2
	ldrls r0, _022FC990 ; =0x0000017B
	strlsh r0, [r5, #0xc]
	bls _022FC74C
	sub r0, r1, #0x3d4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #2
	ldrls r0, _022FC994 ; =0x000003D3
	strlsh r0, [r5, #0xc]
_022FC74C:
	mov r4, #0
_022FC750:
	ldr r0, _022FC998 ; =0x02351E28
	mov r1, r4, lsl #2
	ldrh r1, [r0, r1]
	add r0, r0, r4, lsl #2
	ldrh r0, [r0, #2]
	strh r1, [sp, #0x1e]
	ldrsh r8, [sp, #0x1e]
	strh r0, [sp, #0x20]
	cmp r8, #0x63
	beq _022FC808
	ldr r0, _022FC98C ; =0x02353538
	ldrsh r7, [sp, #0x20]
	ldr r0, [r0]
	add r0, r0, #0xcc00
	ldrsh r1, [r0, #0xe2]
	ldrsh r2, [r0, #0xe0]
	add r1, r7, r1
	add r0, r8, r2
	bl GetTile
	mov r1, r0
	ldrb r0, [r1, #7]
	cmp r0, fp
	bne _022FC800
	ldrsh r0, [r5, #0xc]
	bl ov29_022FF6C4
	cmp r0, #0
	bne _022FC800
	ldr r0, _022FC98C ; =0x02353538
	mov r1, #0
	ldr r2, [r0]
	mov r0, #1
	str r1, [sp]
	stmib sp, {r0, r1, sl}
	str r1, [sp, #0x10]
	add r0, r2, #0xcc00
	ldrsh r1, [r0, #0xe0]
	ldrsh r2, [r0, #0xe2]
	ldrsh r0, [r5, #0xc]
	mov r3, r5
	add r1, r8, r1
	add r2, r7, r2
	bl InitTeamMember
	mov r6, #1
	b _022FC808
_022FC800:
	add r4, r4, #1
	b _022FC750
_022FC808:
	cmp r6, #0
	bne _022FC8BC
	ldr r8, _022FC998 ; =0x02351E28
	mov r7, #0
_022FC818:
	mov r0, r7, lsl #2
	ldrh r1, [r8, r0]
	add r0, r8, r7, lsl #2
	ldrh r0, [r0, #2]
	strh r1, [sp, #0x14]
	ldrsh r6, [sp, #0x14]
	strh r0, [sp, #0x16]
	cmp r6, #0x63
	beq _022FC8BC
	ldr r0, _022FC98C ; =0x02353538
	ldrsh r4, [sp, #0x16]
	ldr r0, [r0]
	add r0, r0, #0xcc00
	ldrsh r1, [r0, #0xe2]
	ldrsh r2, [r0, #0xe0]
	add r1, r4, r1
	add r0, r6, r2
	bl GetTile
	mov r1, r0
	ldrsh r0, [r5, #0xc]
	bl ov29_022FF6C4
	cmp r0, #0
	bne _022FC8B4
	ldr r0, _022FC98C ; =0x02353538
	mov r1, #0
	ldr r2, [r0]
	mov r0, #1
	str r1, [sp]
	stmib sp, {r0, r1, sl}
	str r1, [sp, #0x10]
	add r0, r2, #0xcc00
	ldrsh r1, [r0, #0xe0]
	ldrsh r2, [r0, #0xe2]
	ldrsh r0, [r5, #0xc]
	mov r3, r5
	add r1, r6, r1
	add r2, r4, r2
	bl InitTeamMember
	b _022FC8BC
_022FC8B4:
	add r7, r7, #1
	b _022FC818
_022FC8BC:
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, asr #0x10
	cmp sb, #4
	blt _022FC6F0
	bl ov29_022FCD04
	mov r2, #0
	mov r8, r2
	add r1, sp, #0x18
_022FC8E0:
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	strb r8, [r1, r2]
	mov r2, r0, asr #0x10
	cmp r2, #5
	blt _022FC8E0
	ldr r4, _022FC98C ; =0x02353538
	mov r6, #0
	mov r7, #1
	add r5, sp, #0x18
_022FC908:
	ldr r0, [r4]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bl EntityIsValid__022FC99C
	cmp r0, #0
	beq _022FC964
	ldr r0, [r4]
	add r1, r8, r8, lsl #3
	add r0, r0, #0x56
	add r2, r0, #0x800
	ldrb r0, [r2, r1, lsl #6]
	add r2, r2, r1, lsl #6
	tst r0, #1
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	ldrneb r1, [r2, #1]
	cmpne r1, #0
	addne r0, r8, #1
	andne r0, r0, #0xff
	strneb r0, [r5, r1]
	strneb r0, [r2, #1]
_022FC964:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #4
	blt _022FC908
	add r0, sp, #0x18
	bl sub_0200F9B4
	bl DungeonRngSetPrimary
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FC98C: .word 0x02353538
_022FC990: .word 0x0000017B
_022FC994: .word 0x000003D3
_022FC998: .word 0x02351E28
	arm_func_end InitTeam

	arm_func_start EntityIsValid__022FC99C
EntityIsValid__022FC99C: ; 0x022FC99C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__022FC99C

	arm_func_start ov29_022FC9C0
ov29_022FC9C0: ; 0x022FC9C0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r0, #0
	bl DungeonRngSetSecondary
	mov sl, #0
	mov r8, #1
	mov sb, sl
	mov r7, sl
	mov r5, sl
	mov r6, r8
	ldr r4, _022FCCF0 ; =0x000055AA
	b _022FCA44
_022FC9F0:
	mov r0, sb
	bl GetActiveTeamMember
	ldrb r1, [r0]
	tst r1, #1
	movne r2, r8
	moveq r2, r7
	tst r2, #0xff
	beq _022FCA38
	tst r1, #2
	movne r1, r6
	moveq r1, r5
	tst r1, #0xff
	beq _022FCA38
	ldrsh r1, [r0, #8]
	cmp r1, r4
	streq r0, [sp, #0x18]
	addeq sl, sl, #1
	beq _022FCA4C
_022FCA38:
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, asr #0x10
_022FCA44:
	cmp sb, #4
	blt _022FC9F0
_022FCA4C:
	mov r1, #0
	add r0, sp, #0x18
	b _022FCA60
_022FCA58:
	str r1, [r0, sl, lsl #2]
	add sl, sl, #1
_022FCA60:
	cmp sl, #4
	blt _022FCA58
	ldr r0, _022FCCF4 ; =0x0235355C
	mov r1, #0
	str r1, [r0]
	bl GetLeader
	mov r4, r0
	bl EntityIsValid__022FC99C
	cmp r0, #0
	ldreq r0, _022FCCF8 ; =0x02353538
	ldrnesh sb, [r4, #4]
	ldreq r0, [r0]
	ldrnesh r8, [r4, #6]
	addeq r0, r0, #0xcc00
	ldreqsh sb, [r0, #0xe0]
	ldreqsh r8, [r0, #0xe2]
	mov r0, sb
	mov r1, r8
	bl GetTile
	ldrb r4, [r0, #7]
	mov sl, #0
_022FCAB4:
	add r0, sp, #0x18
	ldr r6, [r0, sl, lsl #2]
	mov r7, #0
	cmp r6, #0
	beq _022FCCD0
	ldrb r0, [r6]
	tst r0, #1
	movne r1, #1
	moveq r1, r7
	tst r1, #0xff
	beq _022FCCD0
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022FCCD0
	ldrsh r1, [r6, #8]
	ldr r0, _022FCCF0 ; =0x000055AA
	cmp r1, r0
	bne _022FCCD0
	ldr r0, _022FCCFC ; =0x00005AA5
	ldr fp, _022FCD00 ; =0x02351E28
	mov r5, #0
	strh r0, [r6, #8]
_022FCB14:
	mov r0, r5, lsl #2
	ldrh r0, [fp, r0]
	add r1, fp, r5, lsl #2
	ldrh r1, [r1, #2]
	strh r0, [sp, #0x14]
	ldrsh r0, [sp, #0x14]
	strh r1, [sp, #0x16]
	cmp r0, #0x63
	beq _022FCBAC
	ldrsh r1, [sp, #0x16]
	add r0, r0, sb
	add r1, r1, r8
	bl GetTile
	mov r1, r0
	ldrb r0, [r1, #7]
	cmp r0, r4
	bne _022FCBA4
	ldrsh r0, [r6, #0xc]
	bl ov29_022FF6C4
	cmp r0, #0
	bne _022FCBA4
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldrsh r1, [sp, #0x14]
	ldrsh r2, [sp, #0x16]
	ldrsh r0, [r6, #0xc]
	mov r3, r6
	add r1, r1, sb
	add r2, r2, r8
	bl InitTeamMember
	mov r7, #1
	b _022FCBAC
_022FCBA4:
	add r5, r5, #1
	b _022FCB14
_022FCBAC:
	cmp r7, #0
	bne _022FCC48
	ldr fp, _022FCD00 ; =0x02351E28
	mov r5, #0
_022FCBBC:
	mov r0, r5, lsl #2
	ldrh r0, [fp, r0]
	add r1, fp, r5, lsl #2
	ldrh r1, [r1, #2]
	strh r0, [sp, #0x14]
	ldrsh r0, [sp, #0x14]
	strh r1, [sp, #0x16]
	cmp r0, #0x63
	beq _022FCC48
	ldrsh r1, [sp, #0x16]
	add r0, r0, sb
	add r1, r1, r8
	bl GetTile
	mov r1, r0
	ldrsh r0, [r6, #0xc]
	bl ov29_022FF6C4
	cmp r0, #0
	bne _022FCC40
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldrsh r1, [sp, #0x14]
	ldrsh r2, [sp, #0x16]
	ldrsh r0, [r6, #0xc]
	mov r3, r6
	add r1, r1, sb
	add r2, r2, r8
	bl InitTeamMember
	mov r7, #1
	b _022FCC48
_022FCC40:
	add r5, r5, #1
	b _022FCBBC
_022FCC48:
	cmp r7, #0
	bne _022FCCD0
	mov r7, #0
	add r5, sp, #0x14
	mov fp, r7
	b _022FCCC8
_022FCC60:
	mov r0, r5
	mov r1, fp
	bl ov29_022E9628
	cmp r0, #0
	beq _022FCCC4
	ldrsh r0, [sp, #0x14]
	ldrsh r1, [sp, #0x16]
	bl GetTile
	mov r1, r0
	ldrsh r0, [r6, #0xc]
	bl ov29_022FF6C4
	cmp r0, #0
	bne _022FCCC4
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldrsh r0, [r6, #0xc]
	ldrsh r1, [sp, #0x14]
	ldrsh r2, [sp, #0x16]
	mov r3, r6
	bl InitTeamMember
	b _022FCCD0
_022FCCC4:
	add r7, r7, #1
_022FCCC8:
	cmp r7, #0x64
	blt _022FCC60
_022FCCD0:
	add r0, sl, #1
	mov r0, r0, lsl #0x10
	mov sl, r0, asr #0x10
	cmp sl, #4
	blt _022FCAB4
	bl DungeonRngSetPrimary
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FCCF0: .word 0x000055AA
_022FCCF4: .word 0x0235355C
_022FCCF8: .word 0x02353538
_022FCCFC: .word 0x00005AA5
_022FCD00: .word 0x02351E28
	arm_func_end ov29_022FC9C0

	arm_func_start ov29_022FCD04
ov29_022FCD04: ; 0x022FCD04
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, #0
	ldr r4, _022FCD70 ; =0x02353538
	b _022FCD64
_022FCD14:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb28]
	mov r0, r6
	bl EntityIsValid__022FC99C
	cmp r0, #0
	ldrne r0, [r6, #0xb4]
	ldrneb r0, [r0, #7]
	cmpne r0, #0
	beq _022FCD60
	mov r0, r6
	bl ov29_022E2DFC
	ldrh r1, [r6, #4]
	ldr r0, _022FCD74 ; =0x0237C690
	strh r1, [r0]
	ldrh r1, [r6, #6]
	strh r1, [r0, #2]
	ldmia sp!, {r4, r5, r6, pc}
_022FCD60:
	add r5, r5, #1
_022FCD64:
	cmp r5, #4
	blt _022FCD14
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022FCD70: .word 0x02353538
_022FCD74: .word 0x0237C690
	arm_func_end ov29_022FCD04

	arm_func_start ov29_022FCD78
ov29_022FCD78: ; 0x022FCD78
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	add r0, sp, #0x24
	mov r1, #0xe
	bl MemZero
	mov r0, #0
	strb r0, [sp, #0x2c]
	mov r7, #1
	bl IsDestinationFloorWithFixedRoom
	cmp r0, #0
	bne _022FCE00
	bl IsDestinationFloorWithMonster
	cmp r0, #0
	beq _022FCE00
	mov r0, #0xa
	bl IsCurrentMissionType
	cmp r0, #0
	bne _022FCDD0
	mov r0, #9
	bl IsCurrentMissionType
	cmp r0, #0
	beq _022FCDDC
_022FCDD0:
	add r0, sp, #0x24
	bl ov29_022FE420
	b _022FCE34
_022FCDDC:
	bl ov29_023491A4
	ldrsh r2, [r0, #0xc]
	mov r0, r7
	mov r1, #7
	strh r2, [sp, #0x24]
	strb r1, [sp, #0x26]
	strh r0, [sp, #0x28]
	strb r0, [sp, #0x2a]
	b _022FCE34
_022FCE00:
	ldr r0, _022FD080 ; =0x02353538
	ldr r2, [r0]
	add r0, r2, #0x700
	ldrsh r0, [r0, #0xa8]
	cmp r0, #0
	moveq r7, #0
	beq _022FCE34
	mov r1, #0
	strb r1, [sp, #0x26]
	strh r0, [sp, #0x24]
	ldrb r0, [r2, #0x7aa]
	strh r0, [sp, #0x28]
	strb r1, [sp, #0x2a]
_022FCE34:
	ldr r0, _022FD080 ; =0x02353538
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0x38
	add r1, r1, #0x3000
	strb r2, [r1, #0xe39]
	bl DungeonRandInt
	mov r6, r0
	mov r0, #0x20
	bl DungeonRandInt
	mov sl, r0
	mov r0, #0
	bl DungeonRngSetSecondary
	bl ov29_022FBF08
	mov sb, #0
	mov fp, sb
_022FCE74:
	add sl, sl, #1
	cmp sl, #0x20
	moveq sl, #0
	mov r0, sl, lsl #0x10
	mov r5, #0
	mov r4, r0, asr #0x10
_022FCE8C:
	add r6, r6, #1
	cmp r6, #0x38
	moveq r6, #0
	mov r0, r6
	mov r1, sl
	bl GetTile
	ldrh r0, [r0, #2]
	tst r0, #8
	beq _022FCF48
	cmp sb, #0
	mov r8, #0
	add sb, sb, #1
	bne _022FCED0
	cmp r7, #0
	beq _022FCF48
	mov r8, #1
	b _022FCEE8
_022FCED0:
	mov r0, r8
	bl GetMonsterIdToSpawn
	strh r0, [sp, #0x14]
	mov r0, r8
	strh r0, [sp, #0x1c]
	strb r0, [sp, #0x16]
_022FCEE8:
	mov r0, #0
	str r0, [sp, #0x18]
	strb r0, [sp, #0x22]
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	cmp r8, #0
	strh r4, [sp, #0x20]
	strh r0, [sp, #0x1e]
	cmpne r7, #0
	beq _022FCF28
	strh r0, [sp, #0x2e]
	mov r0, #1
	strb r0, [sp, #0x2c]
	strh r4, [sp, #0x30]
	mov r7, #0
	b _022FCF48
_022FCF28:
	ldrsh r0, [sp, #0x14]
	mov r1, #1
	bl MewSpawnCheck
	cmp r0, #0
	beq _022FCF48
	add r0, sp, #0x14
	mov r1, #0
	bl SpawnMonster
_022FCF48:
	add r5, r5, #1
	cmp r5, #0x38
	blt _022FCE8C
	add fp, fp, #1
	cmp fp, #0x20
	blt _022FCE74
	bl DungeonRngSetPrimary
	mov r0, #0
	bl DungeonRngSetSecondary
	ldrb r0, [sp, #0x2c]
	cmp r0, #0
	beq _022FD060
	ldrsh r3, [sp, #0x24]
	ldrb r2, [sp, #0x26]
	ldrsh r1, [sp, #0x28]
	ldrb r0, [sp, #0x2b]
	strh r3, [sp, #4]
	strb r2, [sp, #6]
	strh r1, [sp, #0xc]
	cmp r0, #0
	beq _022FD020
	bl IsOutlawMonsterHouseFloor
	cmp r0, #0
	bne _022FCFB4
	bl IsDestinationFloorWithFleeingOutlaw
	cmp r0, #0
	beq _022FCFEC
_022FCFB4:
	ldr r1, _022FD080 ; =0x02353538
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, #0xce0
	add r1, r1, #0xc000
	bl ov29_022E9A0C
	cmp r0, #0
	ldrnesh r1, [sp]
	ldrnesh r0, [sp, #2]
	moveq r7, #1
	strneh r1, [sp, #0x2e]
	strneh r0, [sp, #0x30]
	b _022FD020
_022FCFEC:
	ldr r1, _022FD080 ; =0x02353538
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, #0xce0
	add r1, r1, #0xc000
	bl ov29_022E99F0
	cmp r0, #0
	ldrnesh r1, [sp]
	ldrnesh r0, [sp, #2]
	moveq r7, #1
	strneh r1, [sp, #0x2e]
	strneh r0, [sp, #0x30]
_022FD020:
	cmp r7, #0
	bne _022FD060
	ldrsh r3, [sp, #0x2e]
	ldrsh r2, [sp, #0x30]
	mov r1, #0
	add r0, sp, #4
	str r1, [sp, #8]
	strb r1, [sp, #0x12]
	strh r3, [sp, #0xe]
	strh r2, [sp, #0x10]
	bl SpawnMonster
	cmp r0, #0
	bne _022FD060
	ldrb r0, [sp, #0x2a]
	cmp r0, #0
	movne r7, #1
_022FD060:
	cmp r7, #0
	beq _022FD070
	mov r0, #1
	bl SetTargetMonsterNotFoundFlag
_022FD070:
	bl ov29_022FBF30
	bl DungeonRngSetPrimary
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FD080: .word 0x02353538
	arm_func_end ov29_022FCD78

	arm_func_start SpawnMonster
SpawnMonster: ; 0x022FD084
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	ldrsh r0, [r7, #0xa]
	ldrsh r1, [r7, #0xc]
	bl GetTile
	mov r1, r0
	ldrsh r0, [r7]
	bl ov29_022FF6C4
	cmp r0, #0
	movne r0, #0
	bne _022FD2F8
	ldrsh r0, [r7]
	bl ov29_022E20C0
	movs r4, r0
	mov r0, #0
	beq _022FD2F8
	ldr r3, _022FD300 ; =0x0237C690
	mov r1, r4
	mov r2, r7
	bl ov29_022FD9D4
	ldr r5, [r4, #0xb4]
	mov r0, #1
	strb r0, [r5, #6]
	mov r1, #0
	strb r1, [r5, #8]
	ldr r0, _022FD304 ; =0x02353538
	ldr r1, _022FD308 ; =0x0002CB08
	ldr r2, [r0]
	mov r0, r4
	ldrsh r1, [r2, r1]
	strh r1, [r5, #0xe]
	bl ov29_023021F0
	ldrb r0, [r7, #2]
	bl ov29_022EFAE8
	cmp r0, #0
	beq _022FD154
	mov r0, #9
	bl IsCurrentMissionType
	cmp r0, #0
	beq _022FD150
	mov r0, #0x49
	strb r0, [r5, #0x62]
	mov r0, #1
	strh r0, [r5, #0x64]
	bl GetItemToRetrieve
	strh r0, [r5, #0x66]
	mov r0, #0
	strb r0, [r5, #0x63]
	b _022FD154
_022FD150:
	bl IsDestinationFloorWithFleeingOutlaw
_022FD154:
	ldrb ip, [r7, #2]
	add r0, ip, #0xf5
	and r0, r0, #0xff
	cmp r0, #3
	bhi _022FD194
	add r0, r5, #0xe
	str r0, [sp]
	add r0, r5, #0x124
	add r1, r5, #0x12
	add r2, r5, #0x1a
	add r3, r5, #0x1c
	str ip, [sp, #4]
	bl ov29_022FC468
	mov r0, r4
	bl ov29_023021F0
	b _022FD1F0
_022FD194:
	ldrsh r2, [r5, #2]
	add r0, r5, #0x124
	add r1, r5, #0x12
	str r2, [sp]
	ldrb ip, [r5, #0xa]
	add r2, r5, #0x1a
	add r3, r5, #0x1c
	str ip, [sp, #4]
	bl ov29_022FC234
	ldrb r1, [r5, #6]
	cmp r1, #0
	beq _022FD1D0
	ldrb r0, [r7, #2]
	cmp r0, #0xa
	beq _022FD1E8
_022FD1D0:
	cmp r1, #0
	beq _022FD1F0
	ldrb r0, [r7, #2]
	bl ov29_022EFB04
	cmp r0, #0
	beq _022FD1F0
_022FD1E8:
	mov r0, #1
	strb r0, [r5, #8]
_022FD1F0:
	ldrb r0, [r7, #2]
	bl ov29_022EFAE8
	cmp r0, #0
	beq _022FD224
	ldr r0, _022FD30C ; =0x022C45A4
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r0]
	ldr r0, _022FD310 ; =0x000003E7
	add r1, r2, r1
	strh r1, [r5, #0x12]
	ldrsh r1, [r5, #0x12]
	cmp r1, r0
	strgth r0, [r5, #0x12]
_022FD224:
	ldr r0, _022FD304 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	cmp r0, #0x67
	bne _022FD278
	ldr r1, _022FD314 ; =0x022C489C
	add r0, r5, #0x1a
	ldrb r1, [r1]
	bl sub_02054FEC
	ldr r1, _022FD314 ; =0x022C489C
	add r0, r5, #0x1b
	ldrb r1, [r1, #1]
	bl sub_02054FEC
	ldr r1, _022FD314 ; =0x022C489C
	add r0, r5, #0x1c
	ldrb r1, [r1, #2]
	bl sub_02055020
	ldr r1, _022FD314 ; =0x022C489C
	add r0, r5, #0x1d
	ldrb r1, [r1, #3]
	bl sub_02055020
_022FD278:
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	ldr r0, _022FD310 ; =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r7, #4]
	mov r0, r4
	str r1, [r5, #0x120]
	mov r1, #1
	bl ov29_022FB83C
	ldrb r0, [r7, #2]
	cmp r0, #0
	cmpeq r6, #0
	ldreqb r0, [r7, #0xe]
	cmpeq r0, #0
	bne _022FD2F4
	mov r0, #0x64
	bl DungeonRandInt
	mov r5, r0
	ldrsh r0, [r7]
	bl GetChanceAsleep
	cmp r0, r5
	ble _022FD2F4
	mov r0, r4
	mov r1, #0x7f
	bl InflictSleepStatusSingle
	mov r0, r4
	mov r1, #8
	bl ov29_02304A48
_022FD2F4:
	mov r0, r4
_022FD2F8:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FD300: .word 0x0237C690
_022FD304: .word 0x02353538
_022FD308: .word 0x0002CB08
_022FD30C: .word 0x022C45A4
_022FD310: .word 0x000003E7
_022FD314: .word 0x022C489C
	arm_func_end SpawnMonster

	arm_func_start ov29_022FD318
ov29_022FD318: ; 0x022FD318
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov29_022FBC4C
	cmp r0, #0
	moveq r0, #0
	beq _022FD3AC
	cmp r4, #0
	bne _022FD36C
	mov r0, r6
	mov r1, r5
	bl GetTile
	mov r1, r0
	mov r0, r7
	bl ov29_022FF6C4
	cmp r0, #0
	movne r0, #0
	bne _022FD3AC
_022FD36C:
	mov r1, r7
	mov r0, #0
	bl ov29_022F9408
	bl GetSpriteIndex__022F7388
	mov r4, r0
	mov r0, #1
	bl ov29_022DEA10
	str r0, [sp]
	add r0, sp, #8
	mov r2, r7
	mov r3, r4
	add r1, sp, #4
	bl ov29_022E1C84
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
_022FD3AC:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end ov29_022FD318

	arm_func_start InitTeamMember
InitTeamMember: ; 0x022FD3B4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x14
	mov r5, r3
	ldrb r3, [r5, #1]
	mov r7, r0
	ldr r4, [sp, #0x38]
	cmp r3, #0
	movne r0, #1
	moveq r0, #0
	and r6, r0, #0xff
	cmp r4, #0
	movne r0, #0
	strne r0, [r4]
	mov r0, r7
	mov sl, r1
	mov sb, r2
	bl GetBaseForm
	ldr r1, _022FD77C ; =0x000001A2
	cmp r0, r1
	bne _022FD420
	ldrb r0, [sp, #0x3c]
	cmp r0, #0
	ldrne r0, _022FD780 ; =0x02353538
	ldrne r0, [r0]
	addne r0, r0, #0x3e00
	ldrnesh r7, [r0, #0x3a]
	moveq r7, r1
_022FD420:
	ldrb r0, [sp, #0x48]
	mov r1, sl
	mov r2, sb
	cmp r0, #0
	movne r3, #1
	moveq r3, #0
	mov r0, r7
	and r3, r3, #0xff
	bl ov29_022FD318
	cmp r0, #0
	moveq r0, #0
	beq _022FD774
	mov r0, r7
	bl ov29_022E1D2C
	ldr r1, _022FD784 ; =0x0237C9C0
	strh r7, [sp, #4]
	ldrb r3, [r1]
	ldr r2, _022FD788 ; =0x0235171C
	ldr r1, _022FD78C ; =0x0235171E
	mov r3, r3, lsl #2
	ldrsh r2, [r2, r3]
	ldrsh r1, [r1, r3]
	mov r7, r0
	strh sl, [sp, #0xe]
	strh sb, [sp, #0x10]
	ldrb r8, [r5, #2]
	mov r3, #0
	add r2, sl, r2
	add r1, sb, r1
	strh r2, [sp]
	strh r1, [sp, #2]
	strb r3, [sp, #6]
	str r3, [sp, #8]
	strb r3, [sp, #0x12]
	cmp r6, #0
	addne r3, sp, #0
	ldreq r3, _022FD790 ; =0x0237C690
	add r2, sp, #4
	mov r1, r7
	mov r0, #1
	strh r8, [sp, #0xc]
	bl ov29_022FD9D4
	ldr r8, [r7, #0xb4]
	mov r2, #0
	strb r2, [r8, #6]
	strb r2, [r8, #8]
	strb r2, [r8, #9]
	ldrb r1, [sp, #0x40]
	strb r6, [r8, #7]
	ldr r0, _022FD794 ; =0x0235355C
	strb r1, [r8, #0x102]
	str r2, [r0]
	cmp r6, #0
	ldrne r0, _022FD790 ; =0x0237C690
	mov r3, #0
	strneh sl, [r0]
	strneh sb, [r0, #2]
	ldrsh r0, [r5, #0xe]
	strh r0, [r8, #0x10]
	ldrsh r0, [r5, #0x10]
	strh r0, [r8, #0x12]
	strh r3, [r8, #0x16]
	ldr r0, [r5, #0x18]
	str r0, [r8, #0x20]
_022FD520:
	add r2, r5, r3
	ldrb r0, [r2, #0x12]
	add r1, r8, r3
	add r3, r3, #1
	strb r0, [r1, #0x1a]
	ldrb r0, [r2, #0x14]
	cmp r3, #2
	strb r0, [r1, #0x1c]
	blt _022FD520
	add r3, r5, #0x1c
	add r2, r8, #0x124
	mov r1, #0x11
_022FD550:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022FD550
	mov r2, #0
	add r1, r8, #0x124
	mov sb, r2
	mov sl, #1
_022FD570:
	ldrb r3, [r1, r2, lsl #3]
	mov r0, r2, lsl #3
	add r2, r2, #1
	tst r3, #1
	movne r3, sl
	moveq r3, sb
	tst r3, #0xff
	ldrneb r3, [r1, r0]
	bicne r6, r3, #0x10
	andne r3, r6, #0xff
	bicne r3, r3, #0x20
	strneb r3, [r1, r0]
	cmp r2, #4
	blt _022FD570
	ldrb r1, [r8, #0x144]
	add r0, r5, #0x4c
	add sb, r8, #0x90
	bic r2, r1, #0x10
	and r1, r2, #0xff
	bic r1, r1, #0x20
	strb r1, [r8, #0x144]
	ldrb r1, [r5, #2]
	add r3, r8, #0x100
	mov r6, #0
	strb r1, [r8, #0xa]
	ldrsh r1, [r5, #6]
	strh r1, [r8, #0xe]
	ldrb r1, [r5, #0x58]
	strb r1, [r8, #0xa8]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldrh r1, [r5, #0x5a]
	mov r0, r7
	strh r1, [r8, #0x44]
	ldrh r1, [r5, #0x5c]
	strh r1, [r8, #0x46]
	ldrb r1, [r5, #3]
	strb r1, [r8, #0x48]
	ldrb r1, [r5, #4]
	strb r1, [r8, #0x49]
	ldrh r1, [r5, #0x44]
	strh r1, [r3, #0x46]
	ldrh r1, [r5, #0x46]
	strh r1, [r3, #0x48]
	ldrh r1, [r5, #0x48]
	strh r1, [r3, #0x4a]
	ldrh r1, [r5, #0x4a]
	strh r1, [r3, #0x4c]
	ldrsh r1, [r5, #0xa]
	strh r1, [r8, #0xc]
	ldrh r1, [r5, #0x3e]
	strh r1, [r8, #0x62]
	ldrh r1, [r5, #0x40]
	strh r1, [r8, #0x64]
	ldrh r1, [r5, #0x42]
	strh r1, [r8, #0x66]
	strb r6, [r8, #0xfc]
	strb r6, [r8, #0x103]
	strb r6, [r8, #0x23c]
	strb r6, [r8, #0x23d]
	strh r6, [r8, #0x68]
	bl ov29_023021F0
	ldrb r1, [sp, #0x44]
	mov r0, r7
	bl ov29_022FB83C
	bl GetCurrentBagCapacity
	cmp r0, #1
	beq _022FD760
	bl ov29_022E0880
	cmp r0, #0
	bne _022FD760
	mov r0, r7
	bl ov29_022FBA70
	cmp r0, #0
	bne _022FD760
	ldrb r0, [r8, #0x60]
	cmp r0, #0x47
	ldrneb r0, [r8, #0x61]
	cmpne r0, #0x47
	bne _022FD760
	ldr r2, [r7, #0xb4]
	ldr r0, _022FD798 ; =0x022C4520
	ldrb r1, [r2, #6]
	ldrsh r5, [r0]
	cmp r1, #0
	movne r0, #0
	bne _022FD6D8
	add r0, r2, #0x228
	mov r1, #0x61
	bl ExclusiveItemEffectFlagTest
_022FD6D8:
	cmp r0, #0
	beq _022FD6FC
	ldr r1, _022FD79C ; =0x022C4858
	mov r0, r5, lsl #8
	ldr r1, [r1]
	bl MultiplyByFixedPoint
	mov r1, r0, asr #7
	add r0, r0, r1, lsr #24
	mov r5, r0, asr #8
_022FD6FC:
	mov r0, r5
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	beq _022FD760
	ldrb r0, [r8, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _022FD760
	bl IsBagFull
	cmp r0, #0
	bne _022FD760
	mov r0, #0
	bl ov29_022E7AC4
	mov r1, r0
	cmp r1, #0xb7
	beq _022FD760
	add r0, r8, #0x62
	mov r2, #0
	bl InitStandardItem
	mov r0, r8
	bl ov29_02346F14
	mov r0, #1
	strb r0, [r8, #0xfc]
_022FD760:
	mov r0, r7
	bl ov29_022F9EA0
	cmp r4, #0
	strne r7, [r4]
	mov r0, #1
_022FD774:
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022FD77C: .word 0x000001A2
_022FD780: .word 0x02353538
_022FD784: .word 0x0237C9C0
_022FD788: .word 0x0235171C
_022FD78C: .word 0x0235171E
_022FD790: .word 0x0237C690
_022FD794: .word 0x0235355C
_022FD798: .word 0x022C4520
_022FD79C: .word 0x022C4858
	arm_func_end InitTeamMember

	arm_func_start ov29_022FD7A0
ov29_022FD7A0: ; 0x022FD7A0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x20
	mov r7, r0
	mov r6, r1
	ldrb r1, [r7, #0xaa]
	mov r0, r6
	mov r4, #0
	bl ov29_022E1AAC
	mov sb, r0
	mov r0, r7
	bl ov29_022E1AD4
	ldr r5, [r7, #0xb4]
	mov r8, r0
	ldr r0, [r5, #0xb0]
	bl ov29_022DDB68
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _022FD864
	cmp sb, r8
	ble _022FD864
	mov r1, r6
	mov r0, r4
	bl ov29_022F9408
	mov r8, r0
	bl GetSpriteIndex__022F7388
	mov r4, r0
	mov r0, r7
	mov r1, #1
	bl ov29_022E1C0C
	mov r0, #1
	bl ov29_022E1F34
	mov r3, r4
	ldrb r4, [r7, #0xaa]
	mov r2, r8
	add r0, sp, #0xc
	add r1, sp, #8
	str r4, [sp]
	bl ov29_022E2018
	cmp r0, #0
	bne _022FD860
	ldrb r2, [r7, #0xaa]
	add r0, sp, #0xc
	add r1, sp, #8
	str r2, [sp]
	ldr r2, [r7, #0xb4]
	ldrsh r3, [r7, #0xa8]
	ldrsh r2, [r2, #4]
	bl ov29_022E2018
_022FD860:
	mov r4, #1
_022FD864:
	mov r0, #0
	strh r6, [sp, #0x10]
	strh r0, [sp, #0x18]
	strb r0, [sp, #0x12]
	ldrh r2, [r7, #4]
	mov r1, r6
	strh r2, [sp, #0x1a]
	ldrh r2, [r7, #6]
	strh r2, [sp, #0x1c]
	str r0, [sp, #0x14]
	bl ov29_022F9408
	mov r1, #0
	strb r1, [r7, #0x22]
	ldr r1, [r7, #0xb4]
	strh r0, [r1, #4]
	ldr r1, [r7, #0xb4]
	strh r6, [r1, #2]
	bl GetSpriteIndex__022F7388
	strh r0, [r7, #0xa8]
	cmp r4, #0
	beq _022FD904
	ldr r0, [sp, #0xc]
	add r0, r0, #0x62
	strh r0, [r7, #0xac]
	ldr r1, [sp, #0xc]
	ldr r0, [r7, #0xb4]
	strb r1, [r0, #0x17a]
	ldr r1, [sp, #8]
	ldr r0, [r7, #0xb4]
	strb r1, [r0, #0x17b]
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _022FD904
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r1, lsr #0x10
	bl ov29_022E1EC4
_022FD904:
	mov r0, #7
	strb r0, [r7, #0xae]
	mov r1, #0
	strb r1, [r7, #0xb0]
	mov r0, #0xff
	strb r0, [r7, #0xaf]
	mov r0, #1
	strb r0, [r7, #0xb1]
	strb r0, [r7, #0xb3]
	strb r1, [r7, #0x28]
	str r1, [r7, #0x1c]
	ldrb r0, [r5, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _022FD94C
	ldr r0, [r5, #0xb4]
	bl FreeOtherWrappedMonsters
_022FD94C:
	ldrb r0, [r5, #6]
	add r2, sp, #0x10
	mov r1, r7
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	mov r3, #0
	bl ov29_022FD9D4
	ldrsh r2, [r5, #2]
	add r0, r5, #0x124
	add r1, r5, #0x12
	str r2, [sp]
	ldrb r4, [r5, #0xa]
	add r2, r5, #0x1a
	add r3, r5, #0x1c
	str r4, [sp, #4]
	bl ov29_022FC234
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	ldr r0, _022FD9D0 ; =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r5, #0x10]
	mov r1, #0
	mov r0, r7
	strb r1, [r5, #9]
	bl ov29_022E6644
	mov r0, r7
	bl UpdateStatusIconFlags
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FD9D0: .word 0x000003E7
	arm_func_end ov29_022FD7A0

	arm_func_start ov29_022FD9D4
ov29_022FD9D4: ; 0x022FD9D4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r4, _022FDDB0 ; =0x02353538
	mov r7, r1
	ldr r4, [r4]
	mov r1, #1
	strb r1, [r4, #0xe]
	ldr r4, [r7, #0xb4]
	mov r8, r0
	mov r6, r2
	mov r0, r4
	mov r5, r3
	bl ov29_022FDDC0
	mov r0, #0
	ldrb r2, [r6, #2]
	mov r3, #1
	sub r1, r0, #1
	strb r2, [r4, #0xbc]
	strb r3, [r7, #0x20]
	strb r0, [r7, #0x22]
	sub r0, r0, #2
	strh r1, [r7, #8]
	strh r1, [r7, #0xa]
	strh r0, [r7, #4]
	strh r0, [r7, #6]
	mov r0, r7
	ldrsh r1, [r6, #0xa]
	ldrsh r2, [r6, #0xc]
	bl ov29_022F85F0
	mov r0, r7
	mov r1, #0
	bl ov29_022E1A40
	cmp r8, #0
	bne _022FDAD4
	ldrsh r1, [r6]
	ldr r0, _022FDDB4 ; =0x0000017F
	cmp r1, r0
	addne r0, r0, #0x258
	cmpne r1, r0
	bne _022FDAAC
	ldr r0, _022FDDB0 ; =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x790]
	cmp r0, #0
	bne _022FDAAC
	add r0, r1, #0x4000
	ldrb r0, [r0, #0xc6]
	cmp r0, #0
	beq _022FDAAC
	ldrb r0, [r6, #2]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r4, #9]
	beq _022FDAB4
_022FDAAC:
	mov r0, #0
	strb r0, [r4, #9]
_022FDAB4:
	ldrsh r0, [r4, #2]
	bl GetBaseForm
	cmp r0, #0x97
	ldreq r0, _022FDDB0 ; =0x02353538
	moveq r1, #1
	ldreq r0, [r0]
	addeq r0, r0, #0x3000
	streqb r1, [r0, #0xe39]
_022FDAD4:
	ldr r1, _022FDDB0 ; =0x02353538
	mov r2, #0
	ldr r0, [r1]
	add r0, r0, #0x3000
	ldr r0, [r0, #0xe2c]
	str r0, [r4, #0xb0]
	ldr r0, [r1]
	add r0, r0, #0x3000
	ldr r1, [r0, #0xe2c]
	add r1, r1, #1
	str r1, [r0, #0xe2c]
	str r2, [r4, #0xb4]
	ldrsh r0, [r6, #8]
	cmp r0, #0
	bne _022FDB18
	ldrsh r0, [r6]
	bl GetMonsterLevelToSpawn
_022FDB18:
	strb r0, [r4, #0xa]
	ldr r0, [r6, #4]
	mov r2, #1
	str r0, [r4, #0x120]
	strh r2, [r4, #0xe]
	ldrsh r1, [r4, #2]
	add r0, r4, #0x90
	bl sub_02058EB0
	add r0, r4, #0x44
	bl ShuffleHiddenPower
	mov r1, #1
	strh r1, [r4, #0x12]
	mov r0, #0x64
	strh r1, [r4, #0x10]
	bl sub_02050FF8
	strh r0, [sp, #4]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #6]
	ldrh r0, [sp, #4]
	add r1, r4, #0x100
	ldrh r2, [sp, #6]
	strh r0, [r1, #0x46]
	mov r0, #0x64
	strh r2, [r1, #0x48]
	bl sub_02050FF8
	strh r0, [sp]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #2]
	ldrh r2, [sp]
	add r0, r4, #0x100
	ldrh r1, [sp, #2]
	strh r2, [r0, #0x4a]
	cmp r5, #0
	strh r1, [r0, #0x4c]
	ldrneh r1, [r5]
	strneh r1, [r0, #0x7e]
	ldrneh r1, [r5, #2]
	moveq r1, #0
	streqh r1, [r0, #0x7e]
	strh r1, [r0, #0x80]
	mov r3, #0
	strh r3, [r4]
	strb r3, [r4, #0x14e]
	strb r3, [r4, #0x14f]
	add r0, r4, #0x200
	strh r3, [r0, #0xc]
	strh r3, [r0, #0xe]
	strb r3, [r4, #0x7c]
	ldrh r2, [r7, #4]
	mov r0, r4
	mov r1, #1
	strh r2, [r4, #0x8c]
	ldrh r2, [r7, #6]
	strh r2, [r4, #0x8e]
	str r3, [r4, #0x84]
	str r3, [r4, #0x88]
	strh r3, [r4, #0x80]
	strb r3, [r4, #0x10b]
	str r3, [r4, #0x188]
	strb r3, [r4, #0x10c]
	strb r3, [r4, #0x23c]
	strb r3, [r4, #0x23d]
	strb r3, [r4, #0x23f]
	bl ov29_022FDDC0
	add r0, r4, #0x62
	bl ItemZInit
	mov r2, #0
	strh r2, [r4, #0x68]
	str r2, [r4, #0x218]
	str r2, [r4, #0x21c]
	mov r0, #0xff
	strb r0, [r4, #0x177]
	strb r0, [r4, #0x178]
	str r2, [r4, #0x214]
	strb r2, [r4, #0x151]
	strb r2, [r4, #0x150]
	strb r2, [r4, #0x179]
	add r0, r4, #0x200
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strb r2, [r4, #0x152]
	strb r2, [r4, #0x153]
	add r0, r4, #0x100
	strh r2, [r0, #0x92]
	str r2, [r4, #0x18c]
	strb r2, [r4, #0x105]
	strb r2, [r4, #0x104]
	strb r2, [r4, #0x109]
	strb r2, [r4, #0x155]
	mov r1, #1
	strb r1, [r4, #0x156]
	strh r2, [r0, #0x58]
	strh r2, [r0, #0x5a]
	strb r2, [r4, #0x15c]
	strb r2, [r4, #0x15d]
	strb r2, [r4, #0x15e]
	strb r2, [r4, #0x15f]
	strb r2, [r4, #0x17c]
	strb r2, [r4, #0x106]
	strb r2, [r4, #0x107]
	mov r0, #0x63
	strb r0, [r4, #0x10a]
	strb r2, [r4, #0x162]
	strb r2, [r4, #0x163]
	strb r2, [r4, #0x164]
	strb r2, [r4, #0x165]
	strb r2, [r4, #0x170]
	mov r0, r7
	strb r2, [r4, #0x171]
	bl CalcSpeedStageWrapper
	mov r0, #1
	strb r0, [r4, #0x160]
	mov r0, #0
	strb r0, [r4, #0x172]
	strb r0, [r4, #0x174]
	strb r0, [r4, #0x173]
	strb r0, [r4, #0x175]
	strb r0, [r4, #0x176]
	ldrsh r1, [r4, #4]
	cmp r1, #0x32
	ldrne r0, _022FDDB8 ; =0x0000028A
	cmpne r1, r0
	cmpne r1, #0x33
	addne r0, r0, #1
	cmpne r1, r0
	moveq r0, #0
	streqb r0, [r4, #0x160]
	ldr r1, _022FDDBC ; =0x0235276C
	ldr r0, _022FDDB0 ; =0x02353538
	ldrh r3, [r1]
	ldr r0, [r0]
	add r2, sp, #8
	strh r3, [sp, #8]
	ldrh r1, [r1, #2]
	add r0, r0, #0x1a000
	strh r1, [sp, #0xa]
	ldrsh r1, [r7, #4]
	strh r1, [sp, #8]
	ldrsh r1, [r7, #6]
	strh r1, [sp, #0xa]
	ldrb r3, [r0, #0x23c]
	ldrsh r1, [r4, #4]
	ldr r0, [r4, #0xb0]
	bl ov29_022DDA54
	mov r0, r7
	bl ov29_023021F0
	mov r1, #0
	mov r0, r7
	mov r2, r1
	bl ov29_022FA1D8
	mov r1, #0
	strh r1, [r4, #0xac]
	str r1, [r4, #0x18c]
	add r0, r4, #0x100
	strh r1, [r0, #0x90]
	strb r1, [r4, #0x166]
	strb r1, [r4, #0x167]
	strb r1, [r4, #0x221]
	strh r1, [r0, #0x68]
	mov r2, #0xff
	add r0, r4, #0x224
	mov r1, #0x18
	strb r2, [r4, #0x16a]
	bl MemZero
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022FDDB0: .word 0x02353538
_022FDDB4: .word 0x0000017F
_022FDDB8: .word 0x0000028A
_022FDDBC: .word 0x0235276C
	arm_func_end ov29_022FD9D4

	arm_func_start ov29_022FDDC0
ov29_022FDDC0: ; 0x022FDDC0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r2, #0
	strb r2, [sl, #0xbd]
	strb r2, [sl, #0xbe]
	strb r2, [sl, #0xbf]
	strb r2, [sl, #0xc0]
	strb r2, [sl, #0xc1]
	strb r2, [sl, #0xc2]
	strb r2, [sl, #0xc4]
	strb r2, [sl, #0xcc]
	strb r2, [sl, #0xcd]
	mov r0, #0x22
	str r0, [sl, #0xc8]
	strb r2, [sl, #0xd0]
	strb r2, [sl, #0xd1]
	strb r2, [sl, #0xd2]
	strb r2, [sl, #0xd5]
	strb r2, [sl, #0xd6]
	strb r2, [sl, #0xd8]
	strb r2, [sl, #0xdb]
	strb r2, [sl, #0xdc]
	strb r2, [sl, #0xe0]
	strb r2, [sl, #0xe9]
	strb r2, [sl, #0xea]
	strb r2, [sl, #0xec]
	strb r2, [sl, #0xed]
	strb r2, [sl, #0xee]
	strb r2, [sl, #0xef]
	strb r2, [sl, #0xf0]
	strb r2, [sl, #0xf1]
	strb r2, [sl, #0xf2]
	strb r2, [sl, #0xf3]
	strb r2, [sl, #0xf4]
	strb r2, [sl, #0xf5]
	strb r2, [sl, #0xf6]
	strb r2, [sl, #0xf7]
	strb r2, [sl, #0xf8]
	strb r2, [sl, #0xf9]
	strb r2, [sl, #0xfa]
	strb r2, [sl, #0xfb]
	mov r0, #0xff
	strb r0, [sl, #0x177]
	mov sb, r1
	strb r0, [sl, #0x178]
	mov r6, r2
_022FDE78:
	add r0, sl, r2
	strb r6, [r0, #0x114]
	add r2, r2, #1
	strb r6, [r0, #0x119]
	cmp r2, #5
	blt _022FDE78
	mov r8, r6
	mov r5, #1
	mov fp, #0xa
	mov r4, #0x100
_022FDEA0:
	ldrsh r0, [sl, #2]
	mov r1, r8
	add r7, sl, r8
	bl GetAbility
	and r1, r0, #0xff
	cmp r1, #0x25
	strb r0, [r7, #0x60]
	moveq r6, #1
	cmp sb, #0
	strneb r5, [r7, #0x1a]
	strneb r5, [r7, #0x1c]
	add r1, sl, r8, lsl #1
	strh fp, [r1, #0x24]
	strh fp, [r1, #0x28]
	add r0, sl, r8, lsl #2
	strh fp, [r1, #0x2c]
	str r4, [r0, #0x34]
	add r8, r8, #1
	str r4, [r0, #0x3c]
	cmp r8, #2
	blt _022FDEA0
	cmp r6, #0
	beq _022FDF24
	mov r0, #0
	bl GetApparentWeather
	mov r1, #6
	mul r2, r0, r1
	ldr r1, _022FDF9C ; =0x022C4C6C
	mov r0, #0
	ldrb r1, [r1, r2]
	strb r1, [sl, #0x5e]
	strb r0, [sl, #0x5f]
	b _022FDF48
_022FDF24:
	mov r4, #0
_022FDF28:
	ldrsh r0, [sl, #2]
	mov r1, r4
	bl GetType
	add r1, sl, r4
	add r4, r4, #1
	strb r0, [r1, #0x5e]
	cmp r4, #2
	blt _022FDF28
_022FDF48:
	mov r2, #0
	strb r2, [sl, #0xaa]
	strb r2, [sl, #0xab]
	ldr r0, _022FDFA0 ; =0x02353538
	strb r2, [sl, #0xa9]
	ldr r0, [r0]
	mov r1, #1
	strb r1, [r0, #0xe]
	strh r2, [sl, #0x30]
	strb r2, [sl, #0x11e]
	strb r2, [sl, #0x106]
	strb r2, [sl, #0x11f]
	strb r2, [sl, #0xfd]
	strb r2, [sl, #0x108]
	strb r2, [sl, #0xfe]
	strb r2, [sl, #0xff]
	strb r2, [sl, #0x100]
	mov r0, sl
	strb r2, [sl, #0x10b]
	bl ov29_02307DC0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FDF9C: .word 0x022C4C6C
_022FDFA0: .word 0x02353538
	arm_func_end ov29_022FDDC0

	arm_func_start ov29_022FDFA4
ov29_022FDFA4: ; 0x022FDFA4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r4, r7
	mov r5, #1
	mov r6, r7
_022FDFB8:
	ldr r0, _022FE044 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb28]
	mov r0, r8
	bl EntityIsValid__022FC99C
	cmp r0, #0
	ldrne r1, [r8, #0xb4]
	mvnne r0, #0
	ldrnesh r3, [r1, #0xc]
	cmpne r3, r0
	beq _022FE034
	mov r8, r6
_022FDFF0:
	add r0, r1, r8, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	addne r0, r1, r8, lsl #3
	addne r0, r0, #0x100
	ldrneh r2, [r0, #0x26]
	add r8, r8, #1
	bicne r2, r2, #1
	strneh r2, [r0, #0x26]
	cmp r8, #4
	blt _022FDFF0
	mov r0, r3, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov29_022FE048
_022FE034:
	add r7, r7, #1
	cmp r7, #4
	blt _022FDFB8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022FE044: .word 0x02353538
	arm_func_end ov29_022FDFA4

	arm_func_start ov29_022FE048
ov29_022FE048: ; 0x022FE048
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	bl GetActiveTeamMember
	ldrsh r1, [r4, #0x10]
	mov r3, r0
	mov r5, #0
	strh r1, [r3, #0xe]
	ldrsh r0, [r4, #0x12]
	strh r0, [r3, #0x10]
	ldr r0, [r4, #0x20]
	str r0, [r3, #0x18]
_022FE074:
	add r2, r4, r5
	ldrb r0, [r2, #0x1a]
	add r1, r3, r5
	add r5, r5, #1
	strb r0, [r1, #0x12]
	ldrb r0, [r2, #0x1c]
	cmp r5, #2
	strb r0, [r1, #0x14]
	blt _022FE074
	ldrsh r1, [r4, #4]
	sub r0, r1, #0x17c
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #2
	ldrls r0, _022FE188 ; =0x0000017B
	strlsh r0, [r3, #0xc]
	bls _022FE0E0
	sub r0, r1, #0x3d4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #2
	ldrls r0, _022FE18C ; =0x000003D3
	strlsh r0, [r3, #0xc]
_022FE0E0:
	add r5, r4, #0x124
	add r2, r3, #0x1c
	mov r1, #0x11
_022FE0EC:
	ldrh r0, [r5], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022FE0EC
	ldrb r1, [r4, #0xa]
	add r0, r4, #0x90
	add r5, r3, #0x4c
	strb r1, [r3, #2]
	ldrsh r1, [r4, #0xe]
	add ip, r4, #0x100
	ldr lr, _022FE190 ; =0x000055AA
	strh r1, [r3, #6]
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldrb r0, [r4, #0xa8]
	strb r0, [r3, #0x58]
	ldrh r0, [r4, #0x44]
	strh r0, [r3, #0x5a]
	ldrh r0, [r4, #0x46]
	strh r0, [r3, #0x5c]
	ldrh r0, [ip, #0x46]
	strh r0, [r3, #0x44]
	ldrh r0, [ip, #0x48]
	strh r0, [r3, #0x46]
	ldrh r0, [ip, #0x4a]
	strh r0, [r3, #0x48]
	ldrh r0, [ip, #0x4c]
	strh r0, [r3, #0x4a]
	ldrh r0, [r4, #0x62]
	strh r0, [r3, #0x3e]
	ldrh r0, [r4, #0x64]
	strh r0, [r3, #0x40]
	ldrh r0, [r4, #0x66]
	strh r0, [r3, #0x42]
	ldrsh r0, [r3, #8]
	cmp r0, lr
	ldreq r0, _022FE194 ; =0x00005AA5
	streqh r0, [r3, #8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022FE188: .word 0x0000017B
_022FE18C: .word 0x000003D3
_022FE190: .word 0x000055AA
_022FE194: .word 0x00005AA5
	arm_func_end ov29_022FE048

	arm_func_start ov29_022FE198
ov29_022FE198: ; 0x022FE198
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, _022FE248 ; =0x02353538
	mov r6, #0
	ldr r4, [ip]
	mov lr, #6
	add ip, r4, #0x5e0
	ldr r7, [ip, #0x30]
	b _022FE1E8
_022FE1B8:
	mla r5, r6, lr, ip
	ldrb r4, [r5, #3]
	cmp r4, #0
	beq _022FE1E4
	ldrb r4, [r5, #4]
	cmp r0, r4
	ldreqb r4, [r5, #5]
	cmpeq r1, r4
	streqh r2, [r5]
	streqb r3, [r5, #2]
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_022FE1E4:
	add r6, r6, #1
_022FE1E8:
	cmp r6, r7
	blt _022FE1B8
	cmp r7, #8
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	mov lr, #6
	mla r4, r7, lr, ip
	mov r5, #1
	strb r5, [r4, #3]
	ldr r5, [ip, #0x30]
	mla r4, r5, lr, ip
	strb r0, [r4, #4]
	ldr r4, [ip, #0x30]
	mla r0, r4, lr, ip
	strb r1, [r0, #5]
	ldr r0, [ip, #0x30]
	mul r1, r0, lr
	strh r2, [ip, r1]
	ldr r1, [ip, #0x30]
	mla r0, r1, lr, ip
	strb r3, [r0, #2]
	ldr r0, [ip, #0x30]
	add r0, r0, #1
	str r0, [ip, #0x30]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FE248: .word 0x02353538
	arm_func_end ov29_022FE198

	arm_func_start ov29_022FE24C
ov29_022FE24C: ; 0x022FE24C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	ldr r0, _022FE2E0 ; =0x02353538
	ldr r0, [r0]
	add r6, r0, #0x5e0
	bl ov29_022FBF08
	mov r5, #0
	mov r4, r5
	add sb, sp, #0
	mov r8, #1
	mov r7, #6
	b _022FE2C8
_022FE27C:
	mla r3, r5, r7, r6
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _022FE2C4
	ldrsh r2, [r3]
	mov r0, sb
	mov r1, r8
	strh r2, [sp]
	strh r4, [sp, #8]
	ldrb r2, [r3, #4]
	strh r2, [sp, #0xa]
	ldrb r2, [r3, #5]
	strh r2, [sp, #0xc]
	ldrb r2, [r3, #2]
	strb r2, [sp, #2]
	str r4, [sp, #4]
	strb r4, [sp, #0xe]
	bl SpawnMonster
_022FE2C4:
	add r5, r5, #1
_022FE2C8:
	ldr r0, [r6, #0x30]
	cmp r5, r0
	blt _022FE27C
	bl ov29_022FBF30
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FE2E0: .word 0x02353538
	arm_func_end ov29_022FE24C

	arm_func_start ov29_022FE2E4
ov29_022FE2E4: ; 0x022FE2E4
	ldr r0, _022FE2F8 ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x610]
	bx lr
	.align 2, 0
_022FE2F8: .word 0x02353538
	arm_func_end ov29_022FE2E4

	arm_func_start ov29_022FE2FC
ov29_022FE2FC: ; 0x022FE2FC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r0
	mov r7, r1
	bl GetBaseHp
	mov r6, r0
	mov r5, #2
	add r4, sp, #0
	b _022FE33C
_022FE320:
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl GetLvlStats
	ldrh r0, [sp, #4]
	add r5, r5, #1
	add r6, r6, r0
_022FE33C:
	cmp r5, r7
	ble _022FE320
	mov r0, r6
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov29_022FE2FC

	arm_func_start ov29_022FE350
ov29_022FE350: ; 0x022FE350
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r7, r2
	mov r4, r1
	mov r1, r7
	mov r5, r0
	bl GetBaseOffensiveStat
	add r6, sp, #0
	add sb, r6, r7
	mov r8, r0
	mov r7, #2
	b _022FE39C
_022FE380:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl GetLvlStats
	ldrb r0, [sb, #6]
	add r7, r7, #1
	add r8, r8, r0
_022FE39C:
	cmp r7, r4
	ble _022FE380
	cmp r8, #0xff
	movgt r8, #0xff
	mov r0, r8
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022FE350

	arm_func_start ov29_022FE3B8
ov29_022FE3B8: ; 0x022FE3B8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r7, r2
	mov r4, r1
	mov r1, r7
	mov r5, r0
	bl GetBaseDefensiveStat
	add r6, sp, #0
	add sb, r6, r7
	mov r8, r0
	mov r7, #2
	b _022FE404
_022FE3E8:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl GetLvlStats
	ldrb r0, [sb, #8]
	add r7, r7, #1
	add r8, r8, r0
_022FE404:
	cmp r7, r4
	ble _022FE3E8
	cmp r8, #0xff
	movgt r8, #0xff
	mov r0, r8
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022FE3B8

	arm_func_start ov29_022FE420
ov29_022FE420: ; 0x022FE420
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _022FE4A0 ; =0x02353538
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x348
	add r0, r0, #0x400
	bl GetMissionRank
	mov r5, r0
	bl ov29_023491A4
	ldrsh r2, [r0, #0xe]
	ldr r0, _022FE4A4 ; =0x020A1998
	mov r1, r5, lsl #1
	ldrsh r1, [r0, r1]
	strh r2, [r4]
	mov r0, #1
	strh r1, [r4, #4]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	bl IsDestinationFloorWithHiddenOutlaw
	cmp r0, #0
	movne r0, #2
	strneb r0, [r4, #2]
	movne r0, #0
	strneb r0, [r4, #7]
	ldmneia sp!, {r3, r4, r5, pc}
	bl IsDestinationFloorWithFleeingOutlaw
	cmp r0, #0
	movne r0, #3
	strneb r0, [r4, #2]
	moveq r0, #1
	streqb r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022FE4A0: .word 0x02353538
_022FE4A4: .word 0x020A1998
	arm_func_end ov29_022FE420

	arm_func_start ov29_022FE4A8
ov29_022FE4A8: ; 0x022FE4A8
	ldr r0, _022FE4B8 ; =0x0237C9C0
	mov r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_022FE4B8: .word 0x0237C9C0
	arm_func_end ov29_022FE4A8

	arm_func_start ExecuteMonsterAction
ExecuteMonsterAction: ; 0x022FE4BC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r0, #1
	bl ov29_022E38E0
	bl ov29_022FBD08
	mov r0, #1
	bl ov29_0234B024
	ldr r6, [sb, #0xb4]
	mov r1, #0
	strb r1, [r6, #0x109]
	ldr r0, _022FED70 ; =0x02353538
	strb r1, [r6, #0xfc]
	ldr r1, [r0]
	ldr r0, _022FED74 ; =0x022C4F3C
	str sb, [r1, #0xc4]
	ldrh r2, [r6, #0x4a]
	ldrb r0, [r0, r2, lsl #1]
	cmp r0, #0
	beq _022FE538
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _022FE528
	ldr r1, _022FED78 ; =0x022C4F3D
	mov r0, sb
	ldrb r1, [r1, r2, lsl #1]
	bl ov29_022F3890
	b _022FE538
_022FE528:
	ldr r1, _022FED78 ; =0x022C4F3D
	mov r0, sb
	ldrb r1, [r1, r2, lsl #1]
	bl ov29_023085DC
_022FE538:
	mov r0, sb
	mov r1, #0
	bl ov29_02300DCC
	cmp r0, #0
	beq _022FE568
	mov r0, sb
	mov r1, #1
	bl ov29_0232461C
	cmp r0, #0
	beq _022FE568
	mov r0, sb
	bl ov29_02318D58
_022FE568:
	mov r4, #0
	add r3, r6, #0x124
	mov r1, r4
	mov r2, #1
_022FE578:
	ldrb r0, [r3, r4, lsl #3]
	add r5, r3, r4, lsl #3
	add r4, r4, #1
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	ldrneh r0, [r5, #2]
	bicne r0, r0, #4
	strneh r0, [r5, #2]
	cmp r4, #4
	blt _022FE578
	bl ov29_022E81F8
	mov r0, sb
	mov r1, #0
	bl ov29_022EB944
	cmp r0, #0
	bne _022FE638
	mov r0, sb
	bl DisplayActions
	cmp r0, #0
	beq _022FE608
	bl IsFloorOver
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, sb
	bl EntityIsValid__022FED98
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _022FED7C ; =0x0237C9C0
	ldrb r0, [r0, #1]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FE608:
	ldrb r0, [r6, #7]
	cmp r0, #0
	bne _022FE61C
	mov r0, #0xa
	bl ov29_0234BA54
_022FE61C:
	ldrb r0, [r6, #0x23c]
	cmp r0, #0
	bne _022FE630
	mov r0, sb
	bl ov29_022F9840
_022FE630:
	mov r0, #0xa
	bl AdvanceFrame
_022FE638:
	mov r0, #0
	strb r0, [r6, #0x23c]
	ldrh r0, [r6, #0x4a]
	mov r4, #0
	ldr r1, _022FED80 ; =0x0237CA6C
	cmp r0, #1
	cmpne r0, #0
	cmpne r0, #4
	cmpne r0, #2
	movne r0, #1
	strneb r0, [r6, #0x152]
	strb r4, [r6, #0x154]
	ldr r0, _022FED84 ; =0x0237CA68
	strb r4, [r1]
	strb r4, [r0]
	mov r1, #1
	strb r1, [r6, #0x103]
	ldrh r0, [r6, #0x4a]
	cmp r0, #0x42
	addls pc, pc, r0, lsl #2
	b _022FEBAC
_022FE68C: ; jump table
	b _022FEBAC ; case 0
	b _022FEBAC ; case 1
	b _022FE798 ; case 2
	b _022FEBAC ; case 3
	b _022FEBAC ; case 4
	b _022FEBAC ; case 5
	b _022FEBAC ; case 6
	b _022FEBAC ; case 7
	b _022FEAA4 ; case 8
	b _022FEA30 ; case 9
	b _022FEAB0 ; case 10
	b _022FEAC8 ; case 11
	b _022FEBAC ; case 12
	b _022FEA08 ; case 13
	b _022FEA08 ; case 14
	b _022FEBAC ; case 15
	b _022FEA20 ; case 16
	b _022FEBAC ; case 17
	b _022FEA08 ; case 18
	b _022FEB0C ; case 19
	b _022FEB18 ; case 20
	b _022FE99C ; case 21
	b _022FEBAC ; case 22
	b _022FEB24 ; case 23
	b _022FEBAC ; case 24
	b _022FEBAC ; case 25
	b _022FEBAC ; case 26
	b _022FEBAC ; case 27
	b _022FEBAC ; case 28
	b _022FEBAC ; case 29
	b _022FEBAC ; case 30
	b _022FEBAC ; case 31
	b _022FEBAC ; case 32
	b _022FEBAC ; case 33
	b _022FEBAC ; case 34
	b _022FEB68 ; case 35
	b _022FEB74 ; case 36
	b _022FEB44 ; case 37
	b _022FE9A8 ; case 38
	b _022FEAC8 ; case 39
	b _022FEBAC ; case 40
	b _022FEBAC ; case 41
	b _022FEBAC ; case 42
	b _022FEBAC ; case 43
	b _022FEA28 ; case 44
	b _022FEBAC ; case 45
	b _022FEBAC ; case 46
	b _022FEBAC ; case 47
	b _022FEBAC ; case 48
	b _022FEA14 ; case 49
	b _022FEB34 ; case 50
	b _022FEBAC ; case 51
	b _022FEBAC ; case 52
	b _022FEBAC ; case 53
	b _022FEA3C ; case 54
	b _022FEA48 ; case 55
	b _022FEA60 ; case 56
	b _022FEB80 ; case 57
	b _022FEABC ; case 58
	b _022FEA84 ; case 59
	b _022FEA6C ; case 60
	b _022FEA78 ; case 61
	b _022FEA54 ; case 62
	b _022FEB5C ; case 63
	b _022FEBAC ; case 64
	b _022FEAC8 ; case 65
	b _022FEBA0 ; case 66
_022FE798:
	ldrb r0, [r6, #0xc4]
	cmp r0, #2
	cmpne r0, #7
	beq _022FE7B8
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #2
	bhi _022FE818
_022FE7B8:
	mov r0, #0
	strh r0, [r6, #0x4a]
	mov r0, #1
	strb r0, [r6, #0x151]
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _022FEBB4
	ldr r0, _022FED70 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsh r0, [r0, #0xd8]
	cmp r0, #0
	blt _022FE7F4
	mov r0, #0x56
	bl AdvanceFrame
_022FE7F4:
	ldr r1, _022FED70 ; =0x02353538
	mvn r2, #0
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xd8]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xda]
	b _022FEBB4
_022FE818:
	ldrb r1, [r6, #0x4c]
	ldrh r3, [r6]
	ldr r2, _022FED88 ; =0x0235171C
	mov r8, r1, lsl #2
	ldr r0, _022FED8C ; =0x0235171E
	ldrsh ip, [sb, #4]
	ldrsh r7, [r2, r8]
	ldrsh r5, [sb, #6]
	ldrsh r2, [r0, r8]
	add r0, ip, r7
	mov r0, r0, lsl #0x10
	add r2, r5, r2
	mov r2, r2, lsl #0x10
	mov r5, r4
	tst r3, #0x8000
	mov r7, r0, asr #0x10
	mov r8, r2, asr #0x10
	bne _022FE870
	mov r0, sb
	bl ov29_02300E78
	cmp r0, #0
	moveq r5, #1
_022FE870:
	cmp r5, #0
	beq _022FE8D8
	mov r0, #0
	strh r0, [r6, #0x4a]
	mov r0, #1
	strb r0, [r6, #0x151]
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _022FEBB4
	ldr r0, _022FED70 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsh r0, [r0, #0xd8]
	cmp r0, #0
	blt _022FE8B4
	mov r0, #0x56
	bl AdvanceFrame
_022FE8B4:
	ldr r1, _022FED70 ; =0x02353538
	mvn r2, #0
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xd8]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xda]
	b _022FEBB4
_022FE8D8:
	ldrsh r2, [sb, #4]
	mov r0, sb
	mov r1, r7
	strh r2, [sp]
	ldrsh r4, [sb, #6]
	mov r2, r8
	mov r3, #0
	strh r4, [sp, #2]
	bl ov29_022F85F0
	ldrb r1, [r6, #0x4c]
	add r2, sp, #0
	mov r0, sb
	bl ov29_02304D20
	mov r0, sb
	mov r1, #0xd
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrneb r0, [r6, #0xef]
	cmpne r0, #3
	beq _022FE95C
	mov r0, sb
	mov r1, #0x6f
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	bne _022FE94C
	mov r0, sb
	mov r1, #0x10
	bl HasHeldItem
_022FE94C:
	cmp r0, #0
	bne _022FE95C
	add r0, sb, #4
	bl ov29_02337CCC
_022FE95C:
	ldrb r0, [r6, #7]
	mov r4, #1
	cmp r0, #0
	beq _022FEBB4
	ldrb r0, [r6, #0xd0]
	cmp r0, #2
	bne _022FEBB4
	ldr r1, _022FED70 ; =0x02353538
	sub r2, r4, #2
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xd8]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xda]
	b _022FEBB4
_022FE99C:
	mov r0, sb
	bl ov29_0231A8A0
	b _022FEBB4
_022FE9A8:
	bl ov29_022E5D68
	ldr r0, _022FED70 ; =0x02353538
	mov r2, #1
	ldr r0, [r0]
	ldr r1, _022FED7C ; =0x0237C9C0
	strb r2, [r0, #6]
	ldrb r2, [r6, #0x4c]
	add r0, sb, #4
	strb r2, [r1]
	bl ov29_02338708
	cmp r0, #0
	beq _022FEBB4
	bl ov29_02338850
	cmp r0, #1
	bne _022FE9F0
	mov r0, #1
	bl ov29_02338898
	b _022FEBB4
_022FE9F0:
	bl ov29_02338850
	cmp r0, #2
	bne _022FEBB4
	mov r0, #2
	bl ov29_02338898
	b _022FEBB4
_022FEA08:
	mov r0, sb
	bl ov29_022F52CC
	b _022FEBB4
_022FEA14:
	mov r0, sb
	bl ov29_0231A9F8
	b _022FEBB4
_022FEA20:
	strh r1, [r6, #0x4a]
	b _022FEBB4
_022FEA28:
	strh r1, [r6, #0x4a]
	b _022FEBB4
_022FEA30:
	mov r0, sb
	bl ov29_022F4350
	b _022FEBB4
_022FEA3C:
	mov r0, sb
	bl ov29_022F45CC
	b _022FEBB4
_022FEA48:
	mov r0, sb
	bl ov29_022F48D8
	b _022FEBB4
_022FEA54:
	mov r0, sb
	bl ov29_022F49E0
	b _022FEBB4
_022FEA60:
	mov r0, sb
	bl ov29_022F4BDC
	b _022FEBB4
_022FEA6C:
	mov r0, sb
	bl ov29_022F4370
	b _022FEBB4
_022FEA78:
	mov r0, sb
	bl ov29_022F44F0
	b _022FEBB4
_022FEA84:
	ldr r0, _022FED70 ; =0x02353538
	ldrb r1, [r6, #0x4e]
	ldr r2, [r0]
	add r0, r2, r1, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	str r0, [r2, #0xc8]
	b _022FEBB4
_022FEAA4:
	mov r0, sb
	bl ov29_022F4BF8
	b _022FEBB4
_022FEAB0:
	mov r0, sb
	bl ov29_022F4DAC
	b _022FEBB4
_022FEABC:
	mov r0, sb
	bl ov29_022F505C
	b _022FEBB4
_022FEAC8:
	mov r0, r6
	bl ov29_02302368
	cmp r0, #0
	beq _022FEAEC
	mov r0, sb
	bl ov29_022F996C
	mov r0, sb
	bl ov29_022F54BC
	b _022FEBB4
_022FEAEC:
	mov r0, r4
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, sb
	mov r1, #0xdf0
	bl LogMessageByIdWithPopupCheckUser
	b _022FEBB4
_022FEB0C:
	mov r0, sb
	bl ov29_022F59C4
	b _022FEBB4
_022FEB18:
	mov r0, sb
	bl ov29_022F5F18
	b _022FEBB4
_022FEB24:
	mov r0, sb
	mov r1, #0x160
	bl ov29_022F6058
	b _022FEBB4
_022FEB34:
	mov r0, sb
	rsb r1, r1, #0x164
	bl ov29_022F6058
	b _022FEBB4
_022FEB44:
	mov r0, sb
	mov r2, r4
	mov r3, r4
	add r1, sb, #4
	bl ov29_022EDFA0
	b _022FEBB4
_022FEB5C:
	mov r0, sb
	bl ov29_0230F158
	b _022FEBB4
_022FEB68:
	mov r0, sb
	bl ov29_0230F140
	b _022FEBB4
_022FEB74:
	mov r0, sb
	bl ov29_0230F14C
	b _022FEBB4
_022FEB80:
	mov r0, r4
	mov r1, sb
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldr r1, _022FED90 ; =0x00000DF1
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
	b _022FEBB4
_022FEBA0:
	mov r0, sb
	bl ov29_022F52B0
	b _022FEBB4
_022FEBAC:
	mov r0, #1
	strh r0, [r6, #0x4a]
_022FEBB4:
	mov r0, sb
	bl ov29_022EDDD4
	mov r0, sb
	bl EntityIsValid__022FED98
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r2, [sb, #0xb4]
	ldrb r0, [r2, #0x154]
	cmp r0, #0
	bne _022FEBF0
	mov r1, #0
	mov r0, sb
	strb r1, [r2, #0x154]
	bl ov29_02318D58
_022FEBF0:
	mov r0, #0
	bl ov29_022E3A58
	mov r0, sb
	bl EntityIsValid__022FED98
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bl ov29_022EF9BC
	ldrb r0, [r6, #0x155]
	cmp r0, #0
	beq _022FEC88
	mov ip, #0
	mov r5, #1
	mov r8, ip
	strb ip, [r6, #0x155]
	add r7, r6, #0x124
	mov r3, ip
	mov r1, ip
	mov r0, r5
_022FEC3C:
	ldrb r2, [r7, r8, lsl #3]
	add lr, r7, r8, lsl #3
	tst r2, #1
	movne r2, r5
	moveq r2, r3
	tst r2, #0xff
	beq _022FEC68
	ldrb r2, [lr]
	tst r2, #0x10
	movne ip, r0
	strneb r1, [lr, #6]
_022FEC68:
	add r8, r8, #1
	cmp r8, #4
	blt _022FEC3C
	cmp ip, #0
	beq _022FEC88
	ldr r1, _022FED94 ; =0x00000DF2
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
_022FEC88:
	bl ov29_022FF168
	bl ov29_022EC85C
	cmp r0, #0
	bne _022FECB4
	bl ov29_022FEFC8
	bl ov29_022FEDBC
	mov r0, sb
	bl EntityIsValid__022FED98
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FECB4:
	mov r0, sb
	bl EntityIsValid__022FED98
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bl ov29_022EC85C
	cmp r0, #0
	bne _022FECD8
	bl ov29_02346888
_022FECD8:
	mov r0, #0
	bl ov29_022E3A58
	mov r0, sb
	bl EntityIsValid__022FED98
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r6, #0x14e]
	cmp r0, #0
	cmpeq r4, #0
	bne _022FED68
	mov r0, sb
	add r1, sb, #4
	bl ov29_022FFC9C
	cmp r0, #0
	beq _022FED58
	ldr r0, [r6, #0x110]
	cmp r0, #1
	ble _022FED50
	mov r0, #0
	bl DisplayActions
	mov r0, sb
	bl EntityIsValid__022FED98
	cmp r0, #0
	beq _022FED48
	bl IsFloorOver
	cmp r0, #0
	beq _022FED50
_022FED48:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FED50:
	mov r0, sb
	bl ov29_02321104
_022FED58:
	mov r0, sb
	bl ov29_0230FC24
	mov r0, sb
	bl EnemyEvolution
_022FED68:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FED70: .word 0x02353538
_022FED74: .word 0x022C4F3C
_022FED78: .word 0x022C4F3D
_022FED7C: .word 0x0237C9C0
_022FED80: .word 0x0237CA6C
_022FED84: .word 0x0237CA68
_022FED88: .word 0x0235171C
_022FED8C: .word 0x0235171E
_022FED90: .word 0x00000DF1
_022FED94: .word 0x00000DF2
	arm_func_end ExecuteMonsterAction

	arm_func_start EntityIsValid__022FED98
EntityIsValid__022FED98: ; 0x022FED98
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__022FED98

	arm_func_start ov29_022FEDBC
ov29_022FEDBC: ; 0x022FEDBC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov r4, #0
_022FEDC8:
	ldr r0, _022FEFB8 ; =0x02353538
	mov r6, #0
	ldr r0, [r0]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid__022FED98
	cmp r0, #0
	ldrne r8, [r7, #0xb4]
	ldrneb r5, [r8, #0x177]
	cmpne r5, #0xff
	beq _022FEFA4
	mov r0, r7
	mov r1, #1
	bl ov29_02300DCC
	cmp r0, #0
	movne r0, #0xff
	strneb r0, [r8, #0x177]
	bne _022FEFA4
	mov r0, r7
	bl ov29_023007A8
	cmp r0, #0
	moveq r0, #0xff
	streqb r0, [r8, #0x177]
	beq _022FEFA4
	ldrb r0, [r8, #0xf3]
	cmp r0, #1
	moveq r0, #0xff
	streqb r0, [r8, #0x177]
	beq _022FEFA4
	mov r0, #4
	bl DungeonRandInt
	ldr fp, _022FEFBC ; =0x0000020D
	mov sb, r6
	add lr, r8, #0x124
	sub r1, fp, #0xc6
	b _022FEF80
_022FEE60:
	ldrb r2, [lr, r0, lsl #3]
	add sl, lr, r0, lsl #3
	tst r2, #1
	movne r2, #1
	moveq r2, #0
	tst r2, #0xff
	beq _022FEF70
	add ip, sp, #8
	mov r3, #4
_022FEE84:
	ldrh r2, [sl], #2
	subs r3, r3, #1
	strh r2, [ip], #2
	bne _022FEE84
	ldrh r2, [sp, #0xc]
	cmp r2, #0x8a
	cmpne r2, r1
	cmpne r2, fp
	beq _022FEF70
	mov sb, #0
	add r6, r8, #0x124
	mov fp, #1
	b _022FEF20
_022FEEB8:
	ldrb r0, [r6, sb, lsl #3]
	add sl, r6, sb, lsl #3
	tst r0, #1
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	beq _022FEF1C
	ldrb r0, [r8, #7]
	cmp r0, #0
	bne _022FEEEC
	ldrb r0, [sl]
	tst r0, #4
	beq _022FEF1C
_022FEEEC:
	ldrh r0, [sl, #4]
	cmp r0, #0xe3
	bne _022FEF1C
	mov r0, r7
	mov r1, sl
	mov r2, #1
	bl CanMonsterUseMove
	cmp r0, #0
	beq _022FEF1C
	add r0, sl, #6
	bl TickStatusTurnCounter
	b _022FEF28
_022FEF1C:
	add sb, sb, #1
_022FEF20:
	cmp sb, #4
	blt _022FEEB8
_022FEF28:
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022FEFC0 ; =0x00000DF3
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	and r0, r5, #7
	strb r0, [r8, #0x4c]
	mov r1, #0
	add r2, sp, #8
	stmia sp, {r1, r2}
	mov r0, r7
	mov r2, r1
	mov r3, #1
	bl ov29_02322374
	mov r6, #1
	b _022FEF88
_022FEF70:
	add r0, r0, #1
	cmp r0, #4
	moveq r0, #0
	add sb, sb, #1
_022FEF80:
	cmp sb, #4
	blt _022FEE60
_022FEF88:
	mov r0, #0xff
	strb r0, [r8, #0x177]
	cmp r6, #0
	beq _022FEFA4
	ldr r1, _022FEFC4 ; =0x00001204
	mov r0, r7
	bl ov29_022E56A0
_022FEFA4:
	add r4, r4, #1
	cmp r4, #0x14
	blt _022FEDC8
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FEFB8: .word 0x02353538
_022FEFBC: .word 0x0000020D
_022FEFC0: .word 0x00000DF3
_022FEFC4: .word 0x00001204
	arm_func_end ov29_022FEDBC

	arm_func_start ov29_022FEFC8
ov29_022FEFC8: ; 0x022FEFC8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov r5, #0
_022FEFD4:
	ldr r0, _022FF160 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb78]
	mov r0, r8
	bl EntityIsValid__022FED98
	cmp r0, #0
	ldrne sl, [r8, #0xb4]
	ldrneb r7, [sl, #0x178]
	cmpne r7, #0xff
	beq _022FF14C
	mov r0, r8
	mov r1, #1
	bl ov29_02300DCC
	cmp r0, #0
	movne r0, #0xff
	strneb r0, [sl, #0x178]
	strneb r0, [sl, #0x177]
	bne _022FF14C
	mov r0, r8
	bl ov29_023007A8
	cmp r0, #0
	moveq r0, #0xff
	streqb r0, [sl, #0x178]
	streqb r0, [sl, #0x177]
	beq _022FF14C
	ldrb r0, [sl, #0xf3]
	cmp r0, #1
	moveq r0, #0xff
	streqb r0, [sl, #0x178]
	streqb r0, [sl, #0x177]
	beq _022FF14C
	mov r6, #0
	add r4, sl, #0x124
	mov fp, #1
	b _022FF0F8
_022FF068:
	ldrb r0, [r4, r6, lsl #3]
	add sb, r4, r6, lsl #3
	tst r0, #1
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	beq _022FF0F4
	ldrb r0, [sl, #7]
	cmp r0, #0
	bne _022FF09C
	ldrb r0, [sb]
	tst r0, #4
	beq _022FF0F4
_022FF09C:
	ldrh r0, [sb, #4]
	cmp r0, #0x19
	bne _022FF0F4
	mov r0, r8
	mov r1, sb
	mov r2, #1
	bl CanMonsterUseMove
	cmp r0, #0
	beq _022FF0F4
	add r2, sp, #8
	mov r3, sb
	mov r1, #4
_022FF0CC:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022FF0CC
	add r0, sb, #6
	bl TickStatusTurnCounter
	mov r0, r8
	mov r1, sb
	bl ov29_022FAA04
	b _022FF100
_022FF0F4:
	add r6, r6, #1
_022FF0F8:
	cmp r6, #4
	blt _022FF068
_022FF100:
	mov r0, #0
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022FF164 ; =0x00000DF4
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	and r0, r7, #7
	mov r1, #0
	strb r0, [sl, #0x4c]
	add r3, sp, #8
	stmia sp, {r1, r3}
	mov r0, r8
	mov r2, r1
	mov r3, #1
	bl ov29_02322374
	mov r0, #0xff
	strb r0, [sl, #0x178]
	strb r0, [sl, #0x177]
_022FF14C:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022FEFD4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FF160: .word 0x02353538
_022FF164: .word 0x00000DF4
	arm_func_end ov29_022FEFC8

	arm_func_start ov29_022FF168
ov29_022FF168: ; 0x022FF168
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r5, _022FF1C4 ; =0x02353538
	mov r6, r4
_022FF178:
	ldr r0, [r5]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid__022FED98
	cmp r0, #0
	ldrne r2, [r7, #0xb4]
	ldrneb r0, [r2, #0x15c]
	cmpne r0, #0
	beq _022FF1B4
	mov r0, r7
	mov r1, r7
	strb r6, [r2, #0x15c]
	bl ov29_02313CE4
_022FF1B4:
	add r4, r4, #1
	cmp r4, #0x14
	blt _022FF178
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FF1C4: .word 0x02353538
	arm_func_end ov29_022FF168

	arm_func_start HasStatusThatPreventsActing
HasStatusThatPreventsActing: ; 0x022FF1C8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	add r0, r4, #0x4a
	mov r1, #1
	bl SetMonsterActionFields
	ldrb r0, [r4, #0xbd]
	cmp r0, #1
	cmpne r0, #3
	cmpne r0, #5
	bne _022FF20C
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_022FF20C:
	ldrb r0, [r4, #0xc4]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _022FF27C
_022FF21C: ; jump table
	b _022FF27C ; case 0
	b _022FF238 ; case 1
	b _022FF27C ; case 2
	b _022FF24C ; case 3
	b _022FF260 ; case 4
	b _022FF27C ; case 5
	b _022FF274 ; case 6
_022FF238:
	ldr r1, _022FF3DC ; =0x00000C28
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_022FF24C:
	ldr r1, _022FF3E0 ; =0x00000C29
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_022FF260:
	ldr r1, _022FF3E4 ; =0x00000C2A
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_022FF274:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_022FF27C:
	ldrb r0, [r4, #0xd0]
	cmp r0, #3
	beq _022FF294
	cmp r0, #7
	beq _022FF2A8
	b _022FF2BC
_022FF294:
	ldr r1, _022FF3E8 ; =0x00000C2B
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_022FF2A8:
	ldr r1, _022FF3EC ; =0x00000C2C
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_022FF2BC:
	ldrb r0, [r4, #0xd2]
	cmp r0, #1
	bne _022FF2DC
	ldr r1, _022FF3F0 ; =0x00000C2D
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_022FF2DC:
	ldrb r0, [r4, #0xd8]
	cmp r0, #2
	bne _022FF320
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	mov r0, #8
	bl DungeonRandInt
	strb r0, [r4, #0x4c]
	ldrsh r2, [r5, #4]
	add r1, r4, #0x100
	mov r0, #1
	strh r2, [r1, #0x7e]
	ldrsh r2, [r5, #6]
	sub r2, r2, #1
	strh r2, [r1, #0x80]
	ldmia sp!, {r3, r4, r5, pc}
_022FF320:
	ldrb r0, [r4, #9]
	cmp r0, #1
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	beq _022FF3AC
	ldrb r1, [r4, #0x4c]
	mov r0, r5
	bl ov29_02300E78
	cmp r0, #0
	beq _022FF368
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	b _022FF3A4
_022FF368:
	mov r0, #2
	bl DungeonRandInt
	cmp r0, #0
	beq _022FF39C
	mov r0, #8
	bl DungeonRandInt
	and r1, r0, #0xff
	and r0, r1, #7
	strb r0, [r4, #0x4c]
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	b _022FF3A4
_022FF39C:
	mov r0, r5
	bl ChooseAiMove
_022FF3A4:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_022FF3AC:
	ldrb r0, [r4, #0xf1]
	cmp r0, #2
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	mov r0, #8
	bl DungeonRandInt
	strb r0, [r4, #0x4c]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022FF3DC: .word 0x00000C28
_022FF3E0: .word 0x00000C29
_022FF3E4: .word 0x00000C2A
_022FF3E8: .word 0x00000C2B
_022FF3EC: .word 0x00000C2C
_022FF3F0: .word 0x00000C2D
	arm_func_end HasStatusThatPreventsActing

	arm_func_start ov29_022FF3F4
ov29_022FF3F4: ; 0x022FF3F4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	mov r4, #0
	ldr r6, [r7, #0xb4]
	mov r0, r4
	mov r1, r7
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	add r0, r6, #0x4a
	mov r1, #1
	bl SetMonsterActionFields
	ldrb r0, [r6, #0xbd]
	cmp r0, #1
	cmpne r0, #3
	cmpne r0, #5
	bne _022FF448
	ldr r1, _022FF60C ; =0x00000C2E
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF448:
	ldrb r0, [r6, #0xc4]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _022FF4B8
_022FF458: ; jump table
	b _022FF4B8 ; case 0
	b _022FF474 ; case 1
	b _022FF4B8 ; case 2
	b _022FF488 ; case 3
	b _022FF49C ; case 4
	b _022FF4B8 ; case 5
	b _022FF4B0 ; case 6
_022FF474:
	ldr r1, _022FF610 ; =0x00000C28
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF488:
	ldr r1, _022FF614 ; =0x00000C29
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF49C:
	ldr r1, _022FF618 ; =0x00000C2A
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF4B0:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF4B8:
	ldrb r0, [r6, #0xd0]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _022FF51C
_022FF4C8: ; jump table
	b _022FF51C ; case 0
	b _022FF51C ; case 1
	b _022FF4EC ; case 2
	b _022FF4F4 ; case 3
	b _022FF51C ; case 4
	b _022FF51C ; case 5
	b _022FF51C ; case 6
	b _022FF508 ; case 7
	b _022FF51C ; case 8
_022FF4EC:
	mov r4, #1
	b _022FF51C
_022FF4F4:
	ldr r1, _022FF61C ; =0x00000C2B
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF508:
	ldr r1, _022FF620 ; =0x00000C2C
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF51C:
	ldrb r0, [r6, #0xd2]
	cmp r0, #1
	bne _022FF53C
	ldr r1, _022FF624 ; =0x00000C2D
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF53C:
	cmp r0, #0
	cmpne r0, #0xb
	cmpne r0, #0xc
	beq _022FF604
	cmp r4, #0
	beq _022FF564
	ldr r1, _022FF628 ; =0x00000C2F
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _022FF5FC
_022FF564:
	mov r5, #0
	add r4, r6, #0x124
	mov r8, r5
	mov sb, #1
	b _022FF5F4
_022FF578:
	ldrb r0, [r4, r5, lsl #3]
	mov r1, r5, lsl #3
	tst r0, #1
	movne r0, sb
	moveq r0, r8
	tst r0, #0xff
	beq _022FF5F0
	mov r0, r7
	add r1, r4, r1
	bl ov29_023245A4
	cmp r0, #0
	beq _022FF5F0
	ldrb r0, [r6, #0xd4]
	cmp r0, r5
	bne _022FF5F0
	b _022FF5CC
_022FF5B8:
	add r0, r6, r5, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #2
	beq _022FF5D4
	sub r5, r5, #1
_022FF5CC:
	cmp r5, #0
	bgt _022FF5B8
_022FF5D4:
	ldrb r1, [r6, #0x4e]
	mov r2, r5, lsl #0x10
	add r0, r6, #0x4a
	mov r2, r2, asr #0x10
	bl ov29_022EBC98
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF5F0:
	add r5, r5, #1
_022FF5F4:
	cmp r5, #4
	blt _022FF578
_022FF5FC:
	mov r0, r7
	bl ov29_02318D58
_022FF604:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FF60C: .word 0x00000C2E
_022FF610: .word 0x00000C28
_022FF614: .word 0x00000C29
_022FF618: .word 0x00000C2A
_022FF61C: .word 0x00000C2B
_022FF620: .word 0x00000C2C
_022FF624: .word 0x00000C2D
_022FF628: .word 0x00000C2F
	arm_func_end ov29_022FF3F4

	arm_func_start ov29_022FF62C
ov29_022FF62C: ; 0x022FF62C
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl GetMobilityType
	cmp r4, #0
	beq _022FF660
	cmp r0, #0
	cmpne r0, #4
	moveq r1, #1
	movne r1, #0
	tst r1, #0xff
	ldrne r0, _022FF670 ; =0x0237C9B8
	ldrneb r0, [r0, #5]
	ldmneia sp!, {r4, pc}
_022FF660:
	cmp r0, #4
	ldrhs r1, _022FF670 ; =0x0237C9B8
	ldrhsb r0, [r1, r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022FF670: .word 0x0237C9B8
	arm_func_end ov29_022FF62C

	arm_func_start ov29_022FF674
ov29_022FF674: ; 0x022FF674
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #0xef]
	cmp r0, #4
	moveq r2, #1
	movne r2, #0
	mov r0, r1
	and r1, r2, #0xff
	bl ov29_022FF62C
	mov r4, r0
	cmp r4, #3
	beq _022FF6BC
	mov r0, r5
	bl HasConditionalGroundImmunity
	cmp r0, #0
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
_022FF6BC:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022FF674

	arm_func_start ov29_022FF6C4
ov29_022FF6C4: ; 0x022FF6C4
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4, #0xc]
	cmp r1, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
	ldrh r1, [r4]
	tst r1, #0x10
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r1, #0
	bl ov29_022FF62C
	ldrh r1, [r4]
	cmp r0, #3
	and r1, r1, #3
	addls pc, pc, r0, lsl #2
	b _022FF754
_022FF708: ; jump table
	b _022FF718 ; case 0
	b _022FF728 ; case 1
	b _022FF744 ; case 2
	b _022FF754 ; case 3
_022FF718:
	cmp r1, #1
	bne _022FF75C
	mov r0, #0
	ldmia sp!, {r4, pc}
_022FF728:
	cmp r1, #2
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r1, #1
	bne _022FF75C
	mov r0, #0
	ldmia sp!, {r4, pc}
_022FF744:
	cmp r1, #0
	beq _022FF75C
	mov r0, #0
	ldmia sp!, {r4, pc}
_022FF754:
	mov r0, #0
	ldmia sp!, {r4, pc}
_022FF75C:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022FF6C4

	arm_func_start ov29_022FF764
ov29_022FF764: ; 0x022FF764
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r0
	ldrsh r0, [r7]
	ldrsh r1, [r7, #2]
	ldr r5, [r6, #0xb4]
	bl GetTile
	ldrsh r1, [r7]
	mov r4, r0
	cmp r1, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r7, #2]
	cmp r0, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0x38
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0x20
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4]
	tst r0, #0x10
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov29_02336204
	cmp r0, #0
	bne _022FF810
	ldrb r0, [r5, #0xef]
	cmp r0, #3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0x10
	bl ItemIsActive__022FF898
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_022FF810:
	ldrsh r1, [r5, #2]
	mov r0, r6
	bl ov29_022FF674
	ldrh r2, [r4]
	mov r1, r0
	mov r0, r6
	and r4, r2, #3
	bl ov29_022FF8C8
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022FF888
_022FF83C: ; jump table
	b _022FF84C ; case 0
	b _022FF85C ; case 1
	b _022FF878 ; case 2
	b _022FF888 ; case 3
_022FF84C:
	cmp r4, #1
	bne _022FF890
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FF85C:
	cmp r4, #2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #1
	bne _022FF890
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FF878:
	cmp r4, #0
	beq _022FF890
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FF888:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FF890:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022FF764

	arm_func_start ItemIsActive__022FF898
ItemIsActive__022FF898: ; 0x022FF898
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ItemIsActive__022FF898

	arm_func_start ov29_022FF8C8
ov29_022FF8C8: ; 0x022FF8C8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	beq _022FF8EC
	mov r1, #0xc
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r4, #2
_022FF8EC:
	mov r0, r5
	mov r1, #0xd
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r4, #3
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022FF8C8

	arm_func_start ov29_022FF908
ov29_022FF908: ; 0x022FF908
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	ldrb r1, [r4, #0xef]
	cmp r1, #3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, #0x10
	bl ItemIsActive__022FF898
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsh r1, [r4, #2]
	mov r0, r5
	bl ov29_022FF674
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022FF908

	arm_func_start ov29_022FF958
ov29_022FF958: ; 0x022FF958
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r0
	ldrsh r0, [r7]
	ldrsh r1, [r7, #2]
	ldr r5, [r6, #0xb4]
	bl GetTile
	ldrsh r1, [r7]
	mov r4, r0
	cmp r1, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r7, #2]
	cmp r0, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0x38
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0x20
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4]
	tst r0, #0x10
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #1
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov29_02336204
	cmp r0, #0
	bne _022FFA0C
	ldrb r0, [r5, #0xef]
	cmp r0, #3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0x10
	bl ItemIsActive__022FF898
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_022FFA0C:
	ldrsh r1, [r5, #2]
	mov r0, r6
	bl ov29_022FF674
	ldrh r2, [r4]
	mov r1, r0
	mov r0, r6
	and r4, r2, #3
	bl ov29_022FF8C8
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022FFA84
_022FFA38: ; jump table
	b _022FFA48 ; case 0
	b _022FFA58 ; case 1
	b _022FFA74 ; case 2
	b _022FFA84 ; case 3
_022FFA48:
	cmp r4, #1
	bne _022FFA8C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFA58:
	cmp r4, #2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #1
	bne _022FFA8C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFA74:
	cmp r4, #0
	beq _022FFA8C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFA84:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFA8C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022FF958

	arm_func_start ov29_022FFA94
ov29_022FFA94: ; 0x022FFA94
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r0
	ldrsh r0, [r7]
	ldrsh r1, [r7, #2]
	ldr r5, [r6, #0xb4]
	bl GetTile
	ldrsh r1, [r7]
	mov r4, r0
	cmp r1, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r7, #2]
	cmp r0, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0x38
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0x20
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4]
	tst r0, #0x10
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #1
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r1, [r5, #2]
	mov r0, r6
	bl ov29_022FF674
	ldrh r1, [r4]
	cmp r0, #3
	and r1, r1, #3
	addls pc, pc, r0, lsl #2
	b _022FFB80
_022FFB34: ; jump table
	b _022FFB44 ; case 0
	b _022FFB54 ; case 1
	b _022FFB70 ; case 2
	b _022FFB70 ; case 3
_022FFB44:
	cmp r1, #1
	bne _022FFB88
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFB54:
	cmp r1, #2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #1
	bne _022FFB88
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFB70:
	cmp r1, #0
	beq _022FFB88
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFB80:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFB88:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022FFA94

	arm_func_start ov29_022FFB90
ov29_022FFB90: ; 0x022FFB90
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r0
	ldrsh r0, [r7]
	ldrsh r1, [r7, #2]
	ldr r5, [r6, #0xb4]
	bl GetTile
	ldrsh r1, [r7]
	mov r4, r0
	cmp r1, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r7, #2]
	cmp r0, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0x38
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0x20
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4]
	tst r0, #0x10
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #1
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov29_02336204
	cmp r0, #0
	bne _022FFC44
	ldrb r0, [r5, #0xef]
	cmp r0, #3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0x10
	bl ItemIsActive__022FF898
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_022FFC44:
	ldrsh r1, [r5, #2]
	mov r0, r6
	bl ov29_022FF674
	ldrh r2, [r4]
	mov r1, r0
	mov r0, r6
	and r4, r2, #3
	bl ov29_022FF8C8
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022FFC94
_022FFC70: ; jump table
	b _022FFC80 ; case 0
	b _022FFC80 ; case 1
	b _022FFC80 ; case 2
	b _022FFC94 ; case 3
_022FFC80:
	cmp r4, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFC94:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022FFB90

	arm_func_start ov29_022FFC9C
ov29_022FFC9C: ; 0x022FFC9C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r0
	ldrsh r0, [r7]
	ldrsh r1, [r7, #2]
	ldr r5, [r6, #0xb4]
	bl GetTile
	ldrsh r1, [r7]
	mov r4, r0
	cmp r1, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r7, #2]
	cmp r0, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0x38
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0x20
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4]
	tst r0, #0x10
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _022FFD38
	ldr r0, [r1]
	cmp r0, #1
	bne _022FFD30
	ldr r0, [r1, #0xb4]
	cmp r0, r5
	beq _022FFD38
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFD30:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFD38:
	bl ov29_02336204
	cmp r0, #0
	bne _022FFD6C
	ldrb r0, [r5, #0xef]
	cmp r0, #3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0x10
	bl ItemIsActive__022FF898
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_022FFD6C:
	ldrsh r1, [r5, #2]
	mov r0, r6
	bl ov29_022FF674
	ldrh r2, [r4]
	mov r1, r0
	mov r0, r6
	and r4, r2, #3
	bl ov29_022FF8C8
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022FFDE4
_022FFD98: ; jump table
	b _022FFDA8 ; case 0
	b _022FFDB8 ; case 1
	b _022FFDD4 ; case 2
	b _022FFDE4 ; case 3
_022FFDA8:
	cmp r4, #1
	bne _022FFDEC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFDB8:
	cmp r4, #2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #1
	bne _022FFDEC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFDD4:
	cmp r4, #0
	beq _022FFDEC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFDE4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022FFDEC:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022FFC9C

	arm_func_start CalcSpeedStage
CalcSpeedStage: ; 0x022FFDF4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	ldr r6, [r8, #0xb4]
	bl GetApparentWeather
	mov r4, #0
	mov r5, r0
	mov r1, r4
_022FFE14:
	add r2, r6, r1
	ldrb r0, [r2, #0x119]
	add r1, r1, #1
	cmp r0, #0
	ldrb r0, [r2, #0x114]
	subne r4, r4, r7
	cmp r0, #0
	addne r4, r4, r7
	cmp r1, #5
	blt _022FFE14
	ldrb r0, [r6, #0xbf]
	cmp r0, #4
	ldrsh r0, [r6, #2]
	subeq r4, r4, #1
	bl GetSpeedStatus
	add r4, r4, r0
	mov r0, r8
	mov r1, #6
	bl MonsterIsType
	cmp r0, #0
	beq _022FFE78
	mov r0, r8
	bl GetApparentWeather
	cmp r0, #7
	addeq r4, r4, #1
_022FFE78:
	mov r0, r8
	mov r1, #0x3a
	bl IqSkillIsEnabled
	cmp r0, #0
	ldr r1, _022FFF18 ; =0x023535B8
	addne r4, r4, #1
	ldrb r0, [r1, r5]
	cmp r0, #0
	beq _022FFEB0
	ldrb r1, [r1, r5]
	mov r0, r8
	bl ExclusiveItemEffectIsActive__022FFF28
	cmp r0, #0
	addne r4, r4, #1
_022FFEB0:
	ldrsh r1, [r6, #4]
	ldr r0, _022FFF1C ; =0x000001A5
	cmp r1, r0
	addne r0, r0, #0x72
	cmpne r1, r0
	ldrsh r1, [r6, #2]
	ldr r0, _022FFF20 ; =0x0000017F
	addeq r4, r4, #1
	cmp r1, r0
	addne r0, r0, #0x258
	cmpne r1, r0
	bne _022FFEFC
	ldrb r0, [r6, #6]
	cmp r0, #0
	ldrne r0, _022FFF24 ; =0x02353538
	ldrne r0, [r0]
	ldrneb r0, [r0, #0x790]
	cmpne r0, #0
	addne r4, r4, #1
_022FFEFC:
	cmp r4, #0
	movlt r4, #0
	cmp r4, #5
	movge r4, #4
	mov r0, r4
	str r4, [r6, #0x110]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022FFF18: .word 0x023535B8
_022FFF1C: .word 0x000001A5
_022FFF20: .word 0x0000017F
_022FFF24: .word 0x02353538
	arm_func_end CalcSpeedStage

	arm_func_start ExclusiveItemEffectIsActive__022FFF28
ExclusiveItemEffectIsActive__022FFF28: ; 0x022FFF28
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #6]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r2, #0x228
	bl ExclusiveItemEffectFlagTest
	ldmia sp!, {r3, pc}
	arm_func_end ExclusiveItemEffectIsActive__022FFF28

	arm_func_start CalcSpeedStageWrapper
CalcSpeedStageWrapper: ; 0x022FFF4C
	ldr ip, _022FFF58 ; =CalcSpeedStage
	mov r1, #1
	bx ip
	.align 2, 0
_022FFF58: .word CalcSpeedStage
	arm_func_end CalcSpeedStageWrapper

	arm_func_start GetNumberOfAttacks
GetNumberOfAttacks: ; 0x022FFF5C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r5, #0
	mov sl, r0
	mov sb, r1
	mov r6, r5
	mov r7, r5
	bl EntityIsValid__023000E4
	cmp r0, #0
	moveq r0, r5
	beq _023000D4
	mov r0, sl
	bl GetApparentWeather
	mov r8, r0
	cmp r8, #4
	bne _022FFFB8
	mov r0, sl
	mov r1, #0x1b
	bl AbilityIsActive
	cmp r0, #0
	movne r5, #1
	movne r6, r5
	b _022FFFD8
_022FFFB8:
	cmp r8, #1
	bne _022FFFD8
	mov r0, sl
	mov r1, #0x4a
	bl AbilityIsActive
	cmp r0, #0
	movne r5, #1
	movne r6, r5
_022FFFD8:
	ldr r4, _023000DC ; =0x023535B0
	ldrb r0, [r4, r8]
	cmp r0, #0
	beq _02300000
	ldrb r1, [r4, r8]
	mov r0, sl
	bl ExclusiveItemEffectIsActive__022FFF28
	cmp r0, #0
	ldrneb r7, [r4, r8]
	movne r5, #1
_02300000:
	mov r0, sl
	mov r1, #0x54
	bl AbilityIsActive
	cmp r0, #0
	beq _02300028
	ldr r0, [sl, #0xb4]
	ldrsh r0, [r0, #0x66]
	cmp r0, #0
	moveq r5, #1
	moveq r6, r5
_02300028:
	cmp sb, #0
	beq _023000C8
	cmp r6, #0
	beq _02300068
	ldr r0, [sl, #0xb4]
	mov r2, r5
	mov r1, #0x40
	bl ov29_023023C0
	cmp r0, #0
	beq _023000C8
	mov r0, sl
	bl ov29_022E655C
	mov r0, sl
	mov r1, #0xc30
	bl LogMessageByIdWithPopupCheckUser
	b _023000C8
_02300068:
	cmp r7, #0
	beq _023000C8
	ldr r0, [sl, #0xb4]
	mov r2, r5
	mov r1, #0x40
	bl ov29_023023C0
	cmp r0, #0
	beq _023000C8
	mov r0, sl
	bl ov29_022E655C
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	add r2, sp, #0
	mov r0, sl
	mov r1, r7
	bl ov29_0230F654
	add r1, sp, #0
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _023000E0 ; =0x00000C31
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
_023000C8:
	cmp r5, #0
	movne r0, #2
	moveq r0, #1
_023000D4:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_023000DC: .word 0x023535B0
_023000E0: .word 0x00000C31
	arm_func_end GetNumberOfAttacks

	arm_func_start EntityIsValid__023000E4
EntityIsValid__023000E4: ; 0x023000E4
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__023000E4

	arm_func_start ov29_02300108
ov29_02300108: ; 0x02300108
	ldr r1, _02300160 ; =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x1a000
	ldrb r2, [r1, #0x23e]
	cmp r2, #0
	ldreqb r2, [r1, #0x245]
	cmpeq r2, #0
	bne _0230013C
	ldrb r1, [r1, #0x244]
	cmp r1, #0
	ldreqb r1, [r0, #0xef]
	cmpeq r1, #1
	bne _0230014C
_0230013C:
	ldrb r1, [r0, #6]
	cmp r1, #0
	movne r0, #1
	bxne lr
_0230014C:
	ldrb r0, [r0, #0xd8]
	cmp r0, #2
	moveq r0, #2
	movne r0, #0
	bx lr
	.align 2, 0
_02300160: .word 0x02353538
	arm_func_end ov29_02300108

	arm_func_start ov29_02300164
ov29_02300164: ; 0x02300164
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl ov29_02300108
	cmp r0, #1
	bne _02300190
	ldr r1, _02300274 ; =0x00000C34
	mov r0, r5
	bl sub_020258E4
	ldmia sp!, {r3, r4, r5, pc}
_02300190:
	cmp r0, #2
	bne _023001A8
	ldr r1, _02300278 ; =0x00000C32
	mov r0, r5
	bl sub_020258E4
	ldmia sp!, {r3, r4, r5, pc}
_023001A8:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0230025C
	ldrb r0, [r4, #0xbc]
	cmp r0, #0xb
	bne _023001DC
	mov r0, #0
	bl GetExplorerMazeMonster
	mov r1, r0
	mov r0, r5
	mov r2, #0x4e
	bl sub_02056084
	ldmia sp!, {r3, r4, r5, pc}
_023001DC:
	cmp r0, #0xc
	bne _02300200
	mov r0, #1
	bl GetExplorerMazeMonster
	mov r1, r0
	mov r0, r5
	mov r2, #0x4e
	bl sub_02056084
	ldmia sp!, {r3, r4, r5, pc}
_02300200:
	cmp r0, #0xd
	bne _02300224
	mov r0, #2
	bl GetExplorerMazeMonster
	mov r1, r0
	mov r0, r5
	mov r2, #0x4e
	bl sub_02056084
	ldmia sp!, {r3, r4, r5, pc}
_02300224:
	cmp r0, #0xe
	bne _02300248
	mov r0, #3
	bl GetExplorerMazeMonster
	mov r1, r0
	mov r0, r5
	mov r2, #0x4e
	bl sub_02056084
	ldmia sp!, {r3, r4, r5, pc}
_02300248:
	ldrsh r1, [r4, #4]
	mov r0, r5
	mov r2, #0x4e
	bl GetNameWithGender
	ldmia sp!, {r3, r4, r5, pc}
_0230025C:
	ldrsh r0, [r4, #0xc]
	bl GetActiveTeamMember
	mov r1, r0
	mov r0, r5
	bl sub_020585B4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02300274: .word 0x00000C34
_02300278: .word 0x00000C32
	arm_func_end ov29_02300164

	arm_func_start ov29_0230027C
ov29_0230027C: ; 0x0230027C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x100
	ldrb r2, [r1, #0xd8]
	mov r4, r0
	cmp r2, #2
	bne _023002B4
	ldr r1, _023002C0 ; =0x00000C32
	add r0, sp, #0
	bl sub_020258E4
	ldr r1, _023002C4 ; =0x023527C0
	add r2, sp, #0
	mov r0, r4
	bl SprintfStatic
	b _023002B8
_023002B4:
	bl ov29_02300164
_023002B8:
	add sp, sp, #0x100
	ldmia sp!, {r4, pc}
	.align 2, 0
_023002C0: .word 0x00000C32
_023002C4: .word 0x023527C0
	arm_func_end ov29_0230027C

	arm_func_start SprintfStatic
SprintfStatic: ; 0x023002C8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	add r2, sp, #0xc
	bic r2, r2, #3
	ldr r1, [sp, #0xc]
	add r2, r2, #4
	bl Vsprintf
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end SprintfStatic

	arm_func_start ov29_023002F0
ov29_023002F0: ; 0x023002F0
	stmdb sp!, {r3, r4, r5, lr}
	ldrb r3, [r1, #0xd8]
	mov r5, r0
	mov r4, r2
	cmp r3, #2
	bne _02300328
	ldr r0, _02300350 ; =0x00000C33
	bl StringFromMessageId
	mov r3, r0
	ldr r1, _02300354 ; =0x023527D0
	mov r0, r5
	mov r2, r4
	bl SprintfStatic
	ldmia sp!, {r3, r4, r5, pc}
_02300328:
	ldrb r3, [r1, #6]
	cmp r3, #0
	beq _02300344
	ldrsh r1, [r1, #4]
	mov r2, #0x4e
	bl GetName
	ldmia sp!, {r3, r4, r5, pc}
_02300344:
	ldrsh r1, [r1, #0xc]
	bl sub_02058534
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02300350: .word 0x00000C33
_02300354: .word 0x023527D0
	arm_func_end ov29_023002F0

	arm_func_start ov29_02300358
ov29_02300358: ; 0x02300358
	stmdb sp!, {r4, lr}
	ldr r2, _02300400 ; =0x02353538
	mov r4, r0
	ldr r0, [r2]
	add r0, r0, #0x1a000
	ldrb r2, [r0, #0x23e]
	cmp r2, #0
	ldreqb r0, [r0, #0x245]
	cmpeq r0, #0
	bne _0230038C
	ldrb r0, [r1, #0xef]
	cmp r0, #1
	bne _023003B0
_0230038C:
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _023003B0
	ldr r0, _02300404 ; =0x00000C35
	bl StringFromMessageId
	mov r1, r0
	mov r0, r4
	bl Strcpy
	ldmia sp!, {r4, pc}
_023003B0:
	ldrb r0, [r1, #0xd8]
	cmp r0, #2
	bne _023003D4
	ldr r0, _02300408 ; =0x00000C33
	bl StringFromMessageId
	mov r1, r0
	mov r0, r4
	bl Strcpy
	ldmia sp!, {r4, pc}
_023003D4:
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _023003F0
	ldrsh r1, [r1, #4]
	mov r0, r4
	bl GetNameRaw
	ldmia sp!, {r4, pc}
_023003F0:
	ldrsh r1, [r1, #0xc]
	mov r0, r4
	bl sub_0205858C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02300400: .word 0x02353538
_02300404: .word 0x00000C35
_02300408: .word 0x00000C33
	arm_func_end ov29_02300358

	arm_func_start ov29_0230040C
ov29_0230040C: ; 0x0230040C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r5, r2
	bl sub_02024FB8
	ldrsh r1, [sp, #0x18]
	mov r4, r0
	cmp r1, #0
	beq _02300448
	cmp r1, #1
	beq _02300454
	cmp r1, #2
	beq _02300488
	b _02300490
_02300448:
	mov r1, r5
	bl ov29_02300164
	b _02300490
_02300454:
	mov r0, r5
	bl ov29_02300108
	cmp r0, #0
	bne _02300478
	ldrsh r1, [r5, #4]
	mov r0, r4
	mov r2, #0x6a
	bl GetNameWithGender
	b _02300490
_02300478:
	mov r0, r4
	mov r1, r5
	bl ov29_02300164
	b _02300490
_02300488:
	mov r1, r5
	bl ov29_02300358
_02300490:
	cmp r7, #0
	addne r0, r7, r6, lsl #2
	strne r4, [r0, #0x38]
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r4
	bl ov29_0234B0B4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_0230040C

	arm_func_start ov29_023004B0
ov29_023004B0: ; 0x023004B0
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xbd]
	cmp r0, #1
	moveq r0, #1
	bxeq lr
	cmp r0, #3
	moveq r0, #1
	bxeq lr
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_023004B0

	arm_func_start ov29_023004E4
ov29_023004E4: ; 0x023004E4
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xbf]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_023004E4

	arm_func_start ov29_02300500
ov29_02300500: ; 0x02300500
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xc4]
	cmp r0, #3
	cmpne r0, #5
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov29_02300500

	arm_func_start ov29_02300520
ov29_02300520: ; 0x02300520
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xd0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_02300520

	arm_func_start ov29_0230053C
ov29_0230053C: ; 0x0230053C
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #1
	moveq r0, #1
	bxeq lr
	cmp r0, #2
	moveq r0, #1
	bxeq lr
	cmp r0, #4
	moveq r0, #1
	bxeq lr
	cmp r0, #5
	moveq r0, #1
	bxeq lr
	cmp r0, #6
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_0230053C

	arm_func_start ov29_02300588
ov29_02300588: ; 0x02300588
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xe0]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_02300588

	arm_func_start ov29_023005A4
ov29_023005A4: ; 0x023005A4
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xec]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_023005A4

	arm_func_start ov29_023005C0
ov29_023005C0: ; 0x023005C0
	stmdb sp!, {r4, lr}
	ldr r4, [r0, #0xb4]
	bl IsBlinded
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
	ldrb r0, [r4, #0xf1]
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end ov29_023005C0

	arm_func_start ov29_023005FC
ov29_023005FC: ; 0x023005FC
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xf3]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_023005FC

	arm_func_start ov29_02300618
ov29_02300618: ; 0x02300618
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xf5]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_02300618

	arm_func_start ov29_02300634
ov29_02300634: ; 0x02300634
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0xb4]
	mov r5, r1
	bl ov29_023004B0
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_023004E4
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_02300500
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_02300520
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_0230053C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_02300588
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_023005A4
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl ov29_023005C0
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_023005FC
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_02300618
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xfe]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0x106]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov ip, #0
	add r3, r4, #0x124
	mov r1, ip
	mov r2, #1
	b _02300770
_02300740:
	ldrb r0, [r3, ip, lsl #3]
	add lr, r3, ip, lsl #3
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	beq _0230076C
	ldrh r0, [lr, #2]
	tst r0, #1
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
_0230076C:
	add ip, ip, #1
_02300770:
	cmp ip, #4
	blt _02300740
	mov r1, #0
	b _02300798
_02300780:
	add r0, r4, r1
	ldrb r0, [r0, #0x119]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	add r1, r1, #1
_02300798:
	cmp r1, #5
	blt _02300780
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov29_02300634

	arm_func_start ov29_023007A8
ov29_023007A8: ; 0x023007A8
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xbd]
	cmp r0, #1
	moveq r0, #1
	bxeq lr
	cmp r0, #5
	moveq r0, #1
	bxeq lr
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_023007A8

	arm_func_start ov29_023007DC
ov29_023007DC: ; 0x023007DC
	ldr r3, [r0, #0xb4]
	ldr r0, _02300814 ; =0x000003E7
	ldrsh r2, [r3, #0x12]
	ldrsh r1, [r3, #0x16]
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	mov r0, r2, asr #1
	ldrsh r1, [r3, #0x10]
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	movle r0, #1
	movgt r0, #0
	bx lr
	.align 2, 0
_02300814: .word 0x000003E7
	arm_func_end ov29_023007DC

	arm_func_start ov29_02300818
ov29_02300818: ; 0x02300818
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	ldr r4, [r5, #0xb4]
	beq _02300840
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02300840:
	ldrb r0, [r4, #0xbd]
	cmp r0, #1
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #5
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xd0]
	cmp r0, #3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #7
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc4]
	cmp r0, #3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #4
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_02300CB0
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc4]
	cmp r0, #6
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x105]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_02300818

	arm_func_start ov29_023008DC
ov29_023008DC: ; 0x023008DC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	ldr r4, [r5, #0xb4]
	beq _02300904
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02300904:
	ldrb r0, [r4, #0xbd]
	cmp r0, #1
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #5
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xd0]
	cmp r0, #3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #7
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc4]
	cmp r0, #3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #4
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_02300D00
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc4]
	cmp r0, #6
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x105]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_023008DC

	arm_func_start ov29_023009A0
ov29_023009A0: ; 0x023009A0
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r4, r0
	bl ov29_0232461C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	mov r1, #0
	bl ov29_02300818
	ldmia sp!, {r4, pc}
	arm_func_end ov29_023009A0

	arm_func_start ov29_023009CC
ov29_023009CC: ; 0x023009CC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	mov r1, #0
	bl ov29_0232461C
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xbd]
	cmp r0, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ShouldMonsterRunAway
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xf3]
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r3, [r4, #0xc4]
	cmp r3, #6
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r3, #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r2, [r4, #0xd0]
	cmp r2, #2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r4, #0xbd]
	cmp r1, #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xef]
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r1, #5
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r2, #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r3, #3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r3, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xf1]
	cmp r0, #2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xd8]
	cmp r0, #2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xd0]
	cmp r0, #7
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #3
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_023009CC

	arm_func_start ov29_02300B04
ov29_02300B04: ; 0x02300B04
	ldr r1, [r0, #0xb4]
	ldrb r0, [r1, #0xbd]
	cmp r0, #1
	cmpne r0, #5
	cmpne r0, #3
	beq _02300B30
	ldrb r0, [r1, #0xc4]
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #6
	bhi _02300B38
_02300B30:
	mov r0, #0
	bx lr
_02300B38:
	mov r0, #1
	bx lr
	arm_func_end ov29_02300B04

	arm_func_start ov29_02300B40
ov29_02300B40: ; 0x02300B40
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl IsExperienceLocked
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _02300B90
	mov r0, r5
	bl ShouldMonsterRunAway
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02300B90:
	mov r0, r5
	mov r1, #0
	bl ov29_02300818
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_02300CB0
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #0
	bl ov29_0232461C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc4]
	cmp r0, #3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_02300B40

	arm_func_start ov29_02300BF8
ov29_02300BF8: ; 0x02300BF8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl IsExperienceLocked
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _02300C48
	mov r0, r5
	bl ShouldMonsterRunAway
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02300C48:
	mov r0, r5
	mov r1, #0
	bl ov29_023008DC
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_02300D00
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #0
	bl ov29_0232461C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc4]
	cmp r0, #3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_02300BF8

	arm_func_start ov29_02300CB0
ov29_02300CB0: ; 0x02300CB0
	ldr r1, [r0, #0xb4]
	ldrb r0, [r1, #0xbd]
	cmp r0, #2
	cmpne r0, #4
	cmpne r0, #0
	movne r0, #1
	bxne lr
	ldrb r0, [r1, #0xc4]
	cmp r0, #1
	moveq r0, #1
	bxeq lr
	cmp r0, #6
	moveq r0, #1
	bxeq lr
	ldrb r0, [r1, #0xd2]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_02300CB0

	arm_func_start ov29_02300D00
ov29_02300D00: ; 0x02300D00
	ldr r1, [r0, #0xb4]
	ldrb r0, [r1, #0xbd]
	cmp r0, #2
	cmpne r0, #4
	cmpne r0, #0
	movne r0, #1
	bxne lr
	ldrb r0, [r1, #0xc4]
	cmp r0, #1
	moveq r0, #1
	bxeq lr
	cmp r0, #6
	moveq r0, #1
	bxeq lr
	ldrb r0, [r1, #0xd2]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_02300D00

	arm_func_start ov29_02300D50
ov29_02300D50: ; 0x02300D50
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0xb4]
	ldrb r3, [r1, #0xc4]
	cmp r3, #3
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r3, #4
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldrb r2, [r1, #0xd0]
	cmp r2, #7
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r2, #3
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldrb r1, [r1, #0xbf]
	cmp r1, #4
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r3, #6
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r2, #1
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov29_02300CB0
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02300D50

	arm_func_start ov29_02300DC0
ov29_02300DC0: ; 0x02300DC0
	ldr ip, _02300DC8 ; =ov29_02300D50
	bx ip
	.align 2, 0
_02300DC8: .word ov29_02300D50
	arm_func_end ov29_02300DC0

	arm_func_start ov29_02300DCC
ov29_02300DCC: ; 0x02300DCC
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldr r2, [r0, #0xb4]
	bne _02300DF4
	ldrb r1, [r2, #0xbd]
	cmp r1, #2
	cmpne r1, #4
	cmpne r1, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
_02300DF4:
	ldrb r1, [r2, #0xc4]
	cmp r1, #1
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r1, #3
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r1, #4
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r1, #6
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldrb r1, [r2, #0xd0]
	cmp r1, #1
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r1, #3
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r1, #7
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldrb r1, [r2, #0xbf]
	cmp r1, #4
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ShouldMonsterRunAway
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02300DCC

	arm_func_start ov29_02300E78
ov29_02300E78: ; 0x02300E78
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #0xb4]
	mov r5, r1
	ldrsh r1, [r2, #2]
	bl ov29_022FF674
	ldr r2, _02300F24 ; =0x0235171C
	mov ip, r5, lsl #2
	ldr r1, _02300F28 ; =0x0235171E
	ldrsh r3, [r2, ip]
	ldrsh lr, [r6, #4]
	mov r4, r0
	ldrsh r2, [r6, #6]
	ldrsh r1, [r1, ip]
	add r0, lr, r3
	add r1, r2, r1
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x10
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	and r2, r5, #0xff
	bl ov29_02300F30
	mov r4, r0
	ldrsh r0, [r6, #4]
	ldrsh r1, [r6, #6]
	bl GetTile
	add r0, r0, r4
	ldr r1, _02300F2C ; =0x02352798
	and r2, r5, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02300F24: .word 0x0235171C
_02300F28: .word 0x0235171E
_02300F2C: .word 0x02352798
	arm_func_end ov29_02300E78

	arm_func_start ov29_02300F30
ov29_02300F30: ; 0x02300F30
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov29_02336204
	cmp r0, #0
	bne _02300FC4
	ldr r0, [r6, #0xb4]
	ldrb r0, [r0, #0xef]
	cmp r0, #3
	moveq r5, #3
	beq _02300FC4
	mov r0, r6
	mov r1, #0x10
	bl ItemIsActive__022FF898
	cmp r0, #0
	movne r5, #3
	bne _02300FC4
	cmp r5, #3
	beq _02300F98
	mov r0, r6
	mov r1, #0xc
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r5, #2
	bne _02300FC4
_02300F98:
	mov r0, r6
	mov r1, #0xd
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _02300FC4
	cmp r4, #0xff
	moveq r5, #3
	beq _02300FC4
	tst r4, #1
	movne r5, #2
	moveq r5, #3
_02300FC4:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov29_02300F30

	arm_func_start ov29_02300FCC
ov29_02300FCC: ; 0x02300FCC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r1, _02301050 ; =0x0235171C
	mov ip, r4, lsl #2
	ldr r0, _02301054 ; =0x0235171E
	ldrsh r3, [r1, ip]
	ldrsh lr, [r5, #4]
	ldrsh r1, [r0, ip]
	ldrsh r2, [r5, #6]
	add r0, lr, r3
	add r1, r2, r1
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x10
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsh r0, [r5, #4]
	ldrsh r1, [r5, #6]
	bl GetTile
	ldr r1, _02301058 ; =0x02352790
	and r2, r4, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02301050: .word 0x0235171C
_02301054: .word 0x0235171E
_02301058: .word 0x02352790
	arm_func_end ov29_02300FCC

	arm_func_start ov29_0230105C
ov29_0230105C: ; 0x0230105C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #0xb4]
	mov r5, r1
	ldrsh r1, [r2, #2]
	bl ov29_022FF674
	ldr r2, _0230110C ; =0x0235171C
	mov ip, r5, lsl #2
	ldr r1, _02301110 ; =0x0235171E
	ldrsh r3, [r2, ip]
	ldrsh lr, [r6, #4]
	mov r4, r0
	ldrsh r2, [r6, #6]
	ldrsh r1, [r1, ip]
	add r0, lr, r3
	add r1, r2, r1
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x10
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #1
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	and r2, r5, #0xff
	bl ov29_02300F30
	mov r4, r0
	ldrsh r0, [r6, #4]
	ldrsh r1, [r6, #6]
	bl GetTile
	add r0, r0, r4
	ldr r1, _02301114 ; =0x02352788
	and r2, r5, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0230110C: .word 0x0235171C
_02301110: .word 0x0235171E
_02301114: .word 0x02352788
	arm_func_end ov29_0230105C

	arm_func_start IsMonsterCornered
IsMonsterCornered: ; 0x02301118
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	b _02301148
_02301128:
	mov r0, r5
	mov r1, r4
	bl ov29_02301158
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r4, #1
	and r4, r0, #0xff
_02301148:
	cmp r4, #8
	blo _02301128
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end IsMonsterCornered

	arm_func_start ov29_02301158
ov29_02301158: ; 0x02301158
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #0xb4]
	mov r5, r1
	ldrsh r1, [r2, #2]
	bl ov29_022FF674
	ldr r2, _02301228 ; =0x0235171C
	mov ip, r5, lsl #2
	ldr r1, _0230122C ; =0x0235171E
	ldrsh r3, [r2, ip]
	ldrsh lr, [r6, #4]
	mov r4, r0
	ldrsh r2, [r6, #6]
	ldrsh r1, [r1, ip]
	add r0, lr, r3
	add r1, r2, r1
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x10
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _023011E0
	ldr r0, [r1]
	cmp r0, #1
	bne _023011E0
	mov r0, r6
	mov r2, #1
	mov r3, #0
	bl ov29_0230175C
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_023011E0:
	mov r0, r6
	mov r1, r4
	and r2, r5, #0xff
	bl ov29_02300F30
	mov r4, r0
	ldrsh r0, [r6, #4]
	ldrsh r1, [r6, #6]
	bl GetTile
	add r0, r0, r4
	ldr r1, _02301230 ; =0x02352780
	and r2, r5, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02301228: .word 0x0235171C
_0230122C: .word 0x0235171E
_02301230: .word 0x02352780
	arm_func_end ov29_02301158

	arm_func_start CanAttackInDirection
CanAttackInDirection: ; 0x02301234
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #0xb4]
	mov r5, r1
	ldrsh r1, [r2, #2]
	bl ov29_022FF674
	mov r4, r0
	ldr r1, _023012EC ; =0x0235171C
	mov ip, r5, lsl #2
	cmp r4, #1
	ldr r0, _023012F0 ; =0x0235171E
	ldrsh r3, [r1, ip]
	ldrsh lr, [r6, #4]
	ldrsh r1, [r0, ip]
	ldrsh r2, [r6, #6]
	add r0, lr, r3
	movls r4, #2
	add r1, r2, r1
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x10
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #1
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	and r2, r5, #0xff
	bl ov29_02300F30
	mov r4, r0
	ldrsh r0, [r6, #4]
	ldrsh r1, [r6, #6]
	bl GetTile
	add r0, r0, r4
	ldr r1, _023012F4 ; =0x02352778
	and r2, r5, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_023012EC: .word 0x0235171C
_023012F0: .word 0x0235171E
_023012F4: .word 0x02352778
	arm_func_end CanAttackInDirection

	arm_func_start CanAiMonsterMoveInDirection
CanAiMonsterMoveInDirection: ; 0x023012F8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0xb4]
	mov r7, r1
	ldrsh r1, [r3, #2]
	mov r6, r2
	bl ov29_022FF674
	mov r1, #0
	strb r1, [r6]
	ldr r2, _02301484 ; =0x0235171C
	mov r4, r7, lsl #2
	ldr r1, _02301488 ; =0x0235171E
	ldrsh r3, [r2, r4]
	ldrsh ip, [r8, #4]
	mov r5, r0
	ldrsh r2, [r8, #6]
	ldrsh r1, [r1, r4]
	add r0, ip, r3
	add r1, r2, r1
	bl GetTile
	mov r4, r0
	ldrh r0, [r4]
	tst r0, #0x10
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	tst r0, #0x40
	beq _02301390
	ldr r0, _0230148C ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x793]
	cmp r0, #0
	bne _02301390
	mov r0, r8
	mov r1, #0xf
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_02301390:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _023013E4
	mov r0, r8
	mov r1, #0xe
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _023013E4
	ldr r1, [r4, #0x10]
	ldr r0, [r1]
	cmp r0, #2
	bne _023013E4
	ldrb r0, [r1, #0x20]
	cmp r0, #0
	bne _023013DC
	ldr r0, [r8, #0xb4]
	ldrb r0, [r0, #0xf1]
	cmp r0, #3
	bne _023013E4
_023013DC:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_023013E4:
	ldrh r0, [r4]
	and r0, r0, #3
	cmp r0, #2
	bne _0230142C
	ldr r0, _0230148C ; =0x02353538
	ldr r1, _02301490 ; =0x020A1AE8
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0230142C
	mov r0, r8
	mov r1, #0x14
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_0230142C:
	mov r0, r8
	mov r1, r5
	and r2, r7, #0xff
	bl ov29_02300F30
	mov r5, r0
	ldrsh r0, [r8, #4]
	ldrsh r1, [r8, #6]
	bl GetTile
	add r0, r0, r5
	ldr r1, _02301494 ; =0x02352770
	and r2, r7, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	mov r0, #1
	strneb r0, [r6]
	movne r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02301484: .word 0x0235171C
_02301488: .word 0x0235171E
_0230148C: .word 0x02353538
_02301490: .word 0x020A1AE8
_02301494: .word 0x02352770
	arm_func_end CanAiMonsterMoveInDirection

	arm_func_start ov29_02301498
ov29_02301498: ; 0x02301498
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xb4]
	ldrsh r1, [r1, #2]
	bl ov29_022FF674
	mov r1, r0
	mov r0, r5
	mov r2, #0xff
	bl ov29_02300F30
	mov r4, r0
	cmp r4, #3
	bne _023014FC
	ldr r4, [r5, #0xb4]
	mov r0, #0x64
	bl DungeonRandInt
	add r1, r4, #0x200
	ldrsh r2, [r1, #0x12]
	add r0, r2, r0
	strh r0, [r1, #0x12]
	ldrsh r0, [r1, #0x12]
	cmp r0, #0xc8
	mov r0, #0
	strgeh r0, [r1, #0x12]
	movge r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_023014FC:
	ldr r0, _0230158C ; =0x02353538
	ldr r1, _02301590 ; =0x020A1AE8
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	ldrb r0, [r1, r0]
	cmp r0, #1
	cmpeq r4, #1
	bne _02301534
	mov r0, r5
	mov r1, #0x14
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r4, #0
_02301534:
	ldrsh r0, [r5, #4]
	ldrsh r1, [r5, #6]
	bl GetTile
	add r0, r0, r4
	ldrb r0, [r0, #8]
	cmp r0, #0x54
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0x51
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0x45
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0x15
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0x55
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230158C: .word 0x02353538
_02301590: .word 0x020A1AE8
	arm_func_end ov29_02301498

	arm_func_start ov29_02301594
ov29_02301594: ; 0x02301594
	stmdb sp!, {r4, lr}
	mov r4, r1
	mov r1, #3
	bl ov29_02301F20
	cmp r0, #0
	cmpne r4, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov29_02301594

	arm_func_start ShouldMonsterRunAway
ShouldMonsterRunAway: ; 0x023015B8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl EntityIsValid__023000E4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r4, [r5, #0xb4]
	ldrb r0, [r4, #0x104]
	cmp r0, #0
	ldrneb r0, [r4, #0x105]
	cmpne r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0230169C
	mov r0, r5
	mov r1, #0x2b
	bl AbilityIsActive
	cmp r0, #0
	beq _02301644
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _023016A4 ; =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	ldrsh r1, [r4, #0x10]
	add r0, r2, r2, lsr #31
	cmp r1, r0, asr #1
	movlt r0, #1
	movge r0, #0
	tst r0, #0xff
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02301644:
	mov r0, r5
	mov r1, #0xa
	bl ov29_02301F20
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #6
	bl ov29_02301F20
	cmp r0, #0
	beq _0230169C
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _023016A4 ; =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	ldrsh r1, [r4, #0x10]
	add r0, r2, r2, lsr #31
	cmp r1, r0, asr #1
	movle r0, #1
	ldmleia sp!, {r3, r4, r5, pc}
_0230169C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_023016A4: .word 0x000003E7
	arm_func_end ShouldMonsterRunAway

	arm_func_start ShouldMonsterRunAwayVariation
ShouldMonsterRunAwayVariation: ; 0x023016A8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ShouldMonsterRunAway
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov29_023016D8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ShouldMonsterRunAwayVariation

	arm_func_start ov29_023016D8
ov29_023016D8: ; 0x023016D8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0xb4]
	mov r5, r1
	ldrb r1, [r4, #7]
	cmp r1, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, #0x2b
	bl AbilityIsActive
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _02301758 ; =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	ldrsh r1, [r4, #0x10]
	add r0, r2, r2, lsr #31
	cmp r1, r0, asr #1
	movle r1, #1
	movgt r1, #0
	and r2, r1, #0xff
	mov r0, r4
	mov r1, #4
	bl ov29_023023C0
	cmp r5, #0
	cmpne r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_022E62A8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02301758: .word 0x000003E7
	arm_func_end ov29_023016D8

	arm_func_start ov29_0230175C
ov29_0230175C: ; 0x0230175C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, [r0, #0xb4]
	ldr r5, [r1, #0xb4]
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r4, #9]
	cmp r1, #1
	ldrneb r1, [r5, #9]
	cmpne r1, #1
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r4, #0xbc]
	cmp r1, #7
	ldrneb r1, [r5, #0xbc]
	cmpne r1, #7
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r3, #0
	beq _023017C4
	ldrb r1, [r4, #6]
	cmp r1, #0
	ldreqb r1, [r5, #0xc4]
	cmpeq r1, #6
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
_023017C4:
	cmp r2, #0
	ldreqb r1, [r5, #0xef]
	cmpeq r1, #1
	bne _023017E4
	bl CanSeeInvisibleMonsters
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
_023017E4:
	ldrb r0, [r4, #0x10c]
	cmp r0, #0
	bne _02301804
	ldrb r0, [r4, #7]
	cmp r0, #0
	movne r1, #0
	moveq r1, #1
	b _02301810
_02301804:
	cmp r0, #1
	moveq r1, #2
	movne r1, #3
_02301810:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _02301828
	cmp r0, #3
	moveq r2, #1
	b _02301844
_02301828:
	ldrb r0, [r4, #6]
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	cmp r0, #0
	ldrneb r0, [r4, #8]
	cmpne r0, #0
_02301844:
	ldrb r0, [r5, #9]
	movne r2, #0
	cmp r0, #0
	beq _02301860
	cmp r0, #3
	moveq r3, #1
	b _0230187C
_02301860:
	ldrb r0, [r5, #6]
	cmp r0, #0
	movne r3, #1
	moveq r3, #0
	cmp r0, #0
	ldrneb r0, [r5, #8]
	cmpne r0, #0
_0230187C:
	ldrb r0, [r5, #0xd8]
	movne r3, #0
	cmp r0, #2
	ldr r0, _023018A8 ; =0x023527A0
	moveq r4, #1
	add r0, r0, r1, lsl #3
	add r0, r0, r2, lsl #2
	movne r4, #0
	add r0, r0, r3, lsl #1
	ldrb r0, [r4, r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_023018A8: .word 0x023527A0
	arm_func_end ov29_0230175C

	arm_func_start ov29_023018AC
ov29_023018AC: ; 0x023018AC
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, [r0, #0xb4]
	ldr r5, [r1, #0xb4]
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl IsExperienceLocked
	cmp r0, #0
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #9]
	cmp r0, #0
	cmpne r0, #3
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0xbc]
	cmp r0, #7
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl IsExperienceLocked
	cmp r0, #0
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #9]
	cmp r0, #0
	cmpne r0, #3
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r1, [r4, #6]
	ldrb r0, [r5, #6]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_023018AC

	arm_func_start ov29_02301940
ov29_02301940: ; 0x02301940
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r3, [r4, #0xb4]
	mov r5, r0
	ldrb r0, [r3, #0xd5]
	cmp r0, #2
	bne _02301988
	cmp r2, #0
	beq _02301980
	mov r0, #0
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02301990 ; =0x00000C36
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02301980:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02301988:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02301990: .word 0x00000C36
	arm_func_end ov29_02301940

	arm_func_start ov29_02301994
ov29_02301994: ; 0x02301994
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl GetApparentWeather
	cmp r0, #1
	bne _02301A00
	mov r0, r6
	mov r1, r5
	mov r2, #0x7b
	mov r3, #1
	bl DefenderAbilityIsActive__02301A0C
	cmp r0, #0
	beq _02301A00
	cmp r4, #0
	beq _023019F8
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02301A08 ; =0x00000C37
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023019F8:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02301A00:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02301A08: .word 0x00000C37
	arm_func_end ov29_02301994

	arm_func_start DefenderAbilityIsActive__02301A0C
DefenderAbilityIsActive__02301A0C: ; 0x02301A0C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r7, r6
	beq _02301A50
	bl IsMonster__02301A60
	cmp r0, #0
	cmpne r4, #0
	beq _02301A50
	mov r0, r7
	mov r1, #0x53
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_02301A50:
	mov r0, r6
	mov r1, r5
	bl AbilityIsActive
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DefenderAbilityIsActive__02301A0C

	arm_func_start IsMonster__02301A60
IsMonster__02301A60: ; 0x02301A60
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end IsMonster__02301A60

	arm_func_start ov29_02301A84
ov29_02301A84: ; 0x02301A84
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov sb, r2
	bl GetApparentWeather
	ldr r6, _02301B24 ; =0x023535C0
	mov r7, r0
	ldrb r0, [r6, r7]
	mov r8, #0
	cmp r0, #0
	beq _02301B18
	ldrb r1, [r6, r7]
	mov r0, r4
	bl ExclusiveItemEffectIsActive__022FFF28
	cmp r0, #0
	beq _02301B18
	cmp sb, #0
	ldrb r6, [r6, r7]
	beq _02301B14
	mov r0, r8
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	add r2, sp, #0
	mov r0, r4
	mov r1, r6
	bl ov29_0230F654
	add r1, sp, #0
	mov r0, #1
	bl ov29_02344B44
	ldr r2, _02301B28 ; =0x00000C39
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02301B14:
	mov r8, #1
_02301B18:
	mov r0, r8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02301B24: .word 0x023535C0
_02301B28: .word 0x00000C39
	arm_func_end ov29_02301A84

	arm_func_start ov29_02301B2C
ov29_02301B2C: ; 0x02301B2C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0
	mov r5, r2
	mov r6, r1
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, r6
	bl ov29_023197CC
	movs r4, r0
	beq _02301BB0
	cmp r5, #0
	beq _02301BA8
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r4, #1
	bne _02301B8C
	ldr r2, _02301C20 ; =0x00000C38
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02301BA8
_02301B8C:
	cmp r4, #2
	bne _02301BA8
	ldr r2, _02301C24 ; =0x00000C39
	mov r0, r7
	mov r1, r6
	mov r3, #0x26
	bl ov29_02314DC4
_02301BA8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02301BB0:
	mov r0, r7
	mov r1, r6
	mov r2, #0xf
	mov r3, #1
	bl DefenderAbilityIsActive__02301A0C
	cmp r0, #0
	bne _02301BE8
	mov r0, r7
	mov r1, r6
	mov r2, #0x18
	mov r3, #1
	bl DefenderAbilityIsActive__02301A0C
	cmp r0, #0
	beq _02301C18
_02301BE8:
	cmp r5, #0
	beq _02301C10
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02301C28 ; =0x00000C3A
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02301C10:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02301C18:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02301C20: .word 0x00000C38
_02301C24: .word 0x00000C39
_02301C28: .word 0x00000C3A
	arm_func_end ov29_02301B2C

	arm_func_start ov29_02301C2C
ov29_02301C2C: ; 0x02301C2C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r8, [sl, #0xb4]
	mov sb, r1
	ldrb r0, [r8, #0xbd]
	cmp r0, #1
	cmpne r0, #5
	cmpne r0, #3
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r6, #0
	add r5, r8, #0x124
	mov fp, r6
	mov r4, #1
	b _02301CCC
_02301C68:
	ldrb r1, [r5, r6, lsl #3]
	add r7, r5, r6, lsl #3
	tst r1, #1
	movne r0, r4
	moveq r0, fp
	tst r0, #0xff
	beq _02301CC8
	ldrb r0, [r8, #7]
	cmp r0, #0
	bne _02301C98
	tst r1, #4
	beq _02301CC8
_02301C98:
	mov r0, sl
	mov r1, r7
	mov r2, #1
	bl ov29_02324BE8
	cmp r0, #0
	ldrneb r0, [r7, #6]
	cmpne r0, #0
	beq _02301CC8
	ldrh r0, [r7, #4]
	cmp r0, sb
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02301CC8:
	add r6, r6, #1
_02301CCC:
	cmp r6, #4
	blt _02301C68
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov29_02301C2C

	arm_func_start NoGastroAcidStatus
NoGastroAcidStatus: ; 0x02301CDC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl IsMonster__02301A60
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #4
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end NoGastroAcidStatus

	arm_func_start AbilityIsActive
AbilityIsActive: ; 0x02301D10
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl IsMonster__02301A60
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	ldr r1, [r5, #0xb4]
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r1, #0x60]
	cmp r0, r4
	bne _02301D58
	mov r0, r5
	mov r1, r4
	bl NoGastroAcidStatus
	ldmia sp!, {r3, r4, r5, pc}
_02301D58:
	ldrb r0, [r1, #0x61]
	cmp r0, r4
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl NoGastroAcidStatus
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end AbilityIsActive

	arm_func_start AbilityIsActive2
AbilityIsActive2: ; 0x02301D78
	ldr ip, _02301D80 ; =AbilityIsActive
	bx ip
	.align 2, 0
_02301D80: .word AbilityIsActive
	arm_func_end AbilityIsActive2

	arm_func_start ov29_02301D84
ov29_02301D84: ; 0x02301D84
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	mov r6, r1
	mov r5, #0
	mov r4, #1
	ldr r8, _02301E14 ; =0x02353538
	b _02301E04
_02301DA0:
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb78]
	mov r0, sb
	bl EntityIsValid__023000E4
	cmp r0, #0
	cmpne r7, sb
	beq _02301DF8
	mov r0, r7
	mov r1, sb
	bl ov29_022FAFD4
	cmp r0, #0
	beq _02301DF8
	mov r0, r7
	mov r1, sb
	mov r2, r6
	mov r3, r4
	bl DefenderAbilityIsActive__02301A0C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02301DF8:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
_02301E04:
	cmp r5, #0x14
	blt _02301DA0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02301E14: .word 0x02353538
	arm_func_end ov29_02301D84

	arm_func_start LevitateIsActive
LevitateIsActive: ; 0x02301E18
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl GravityIsActive
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x37
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end LevitateIsActive

	arm_func_start MonsterIsType
MonsterIsType: ; 0x02301E50
	cmp r1, #0
	ldr r2, [r0, #0xb4]
	moveq r0, #0
	bxeq lr
	ldrb r0, [r2, #0x5e]
	cmp r0, r1
	moveq r0, #1
	bxeq lr
	ldrb r0, [r2, #0x5f]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end MonsterIsType

	arm_func_start ov29_02301E88
ov29_02301E88: ; 0x02301E88
	stmdb sp!, {r3, lr}
	cmp r1, #0xa
	bne _02301EA4
	bl GravityIsActive
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
_02301EA4:
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02301E88

	arm_func_start ov29_02301EAC
ov29_02301EAC: ; 0x02301EAC
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0xb4]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrb r2, [r3, #0x5e]
	cmp r2, r1
	bne _02301ED4
	bl ov29_02301E88
	ldmia sp!, {r3, pc}
_02301ED4:
	ldrb r2, [r3, #0x5f]
	cmp r2, r1
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl ov29_02301E88
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02301EAC

	arm_func_start CanSeeInvisibleMonsters
CanSeeInvisibleMonsters: ; 0x02301EEC
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0xb4]
	ldrb r1, [r1, #0xf1]
	cmp r1, #3
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	mov r1, #0x21
	bl ItemIsActive__022FF898
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end CanSeeInvisibleMonsters

	arm_func_start ov29_02301F20
ov29_02301F20: ; 0x02301F20
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #7]
	cmp r0, #0
	beq _02301F38
	cmp r1, #1
	b _02301F40
_02301F38:
	ldrb r0, [r2, #0xa8]
	cmp r0, r1
_02301F40:
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_02301F20

	arm_func_start HasDropeyeStatus
HasDropeyeStatus: ; 0x02301F50
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl EntityIsValid__023000E4
	cmp r0, #0
	beq _02301F78
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xf1]
	cmp r0, #4
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_02301F78:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end HasDropeyeStatus

	arm_func_start IqSkillIsEnabled
IqSkillIsEnabled: ; 0x02301F80
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _02301FAC
	ldr r0, _02301FB8 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
_02301FAC:
	add r0, r2, #0x9c
	bl IqSkillFlagTest
	ldmia sp!, {r3, pc}
	.align 2, 0
_02301FB8: .word 0x02353538
	arm_func_end IqSkillIsEnabled

	arm_func_start ov29_02301FBC
ov29_02301FBC: ; 0x02301FBC
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrb r0, [r4, #6]
	mov r6, #0
	cmp r0, #0
	str r6, [r4, #0x9c]
	beq _02302118
	str r6, [r4, #0xa0]
	str r6, [r4, #0xa4]
	b _0230202C
_02301FE4:
	ldrsh r0, [r4, #2]
	and r1, r6, #0xff
	bl GetSpeciesIqSkill
	mov r5, r0
	cmp r5, #0xff
	beq _02302034
	ldrsh r0, [r4, #0xe]
	mov r1, r5
	bl CanLearnIqSkill
	cmp r0, #0
	beq _02302028
	mov r1, r5
	add r0, r4, #0x90
	bl EnableIqSkill
	mov r1, r5
	add r0, r4, #0x9c
	bl EnableIqSkill
_02302028:
	add r6, r6, #1
_0230202C:
	cmp r6, #0x19
	blt _02301FE4
_02302034:
	ldr r0, _023021E8 ; =0x020A188C
	ldrsh r1, [r4, #0xe]
	ldrsh r0, [r0]
	cmp r1, r0
	bge _02302068
	add r0, r4, #0x9c
	mov r1, #0x17
	bl IqSkillFlagTest
	cmp r0, #0
	beq _02302068
	add r0, r4, #0x9c
	mov r1, #0x17
	bl DisableIqSkill
_02302068:
	mov r0, r4
	bl ov29_022FBDE0
	cmp r0, #0
	bne _0230208C
	ldr r0, _023021EC ; =0x020A18A4
	ldrsh r1, [r4, #0xe]
	ldrsh r0, [r0]
	cmp r1, r0
	bge _023020AC
_0230208C:
	add r0, r4, #0x9c
	mov r1, #0x16
	bl IqSkillFlagTest
	cmp r0, #0
	beq _023020AC
	add r0, r4, #0x9c
	mov r1, #0x16
	bl DisableIqSkill
_023020AC:
	add r0, r4, #0x9c
	mov r1, #0x15
	bl IqSkillFlagTest
	cmp r0, #0
	beq _023020CC
	add r0, r4, #0x9c
	mov r1, #0x15
	bl DisableIqSkill
_023020CC:
	add r0, r4, #0x9c
	mov r1, #0x14
	bl IqSkillFlagTest
	cmp r0, #0
	beq _023020EC
	add r0, r4, #0x9c
	mov r1, #0x14
	bl DisableIqSkill
_023020EC:
	add r0, r4, #0x9c
	mov r1, #0xb
	bl IqSkillFlagTest
	cmp r0, #0
	beq _0230210C
	add r0, r4, #0x9c
	mov r1, #0xb
	bl DisableIqSkill
_0230210C:
	mov r0, #2
	strb r0, [r4, #0xa8]
	ldmia sp!, {r4, r5, r6, pc}
_02302118:
	str r6, [r4, #0xa0]
	str r6, [r4, #0xa4]
	b _02302174
_02302124:
	ldrsh r0, [r4, #2]
	and r1, r6, #0xff
	bl GetSpeciesIqSkill
	mov r5, r0
	cmp r5, #0xff
	beq _0230217C
	ldrsh r0, [r4, #0xe]
	mov r1, r5
	bl CanLearnIqSkill
	cmp r0, #0
	beq _02302170
	mov r1, r5
	add r0, r4, #0x90
	bl IqSkillFlagTest
	cmp r0, #0
	beq _02302170
	mov r1, r5
	add r0, r4, #0x9c
	bl EnableIqSkill
_02302170:
	add r6, r6, #1
_02302174:
	cmp r6, #0x19
	blt _02302124
_0230217C:
	mov r0, #3
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	beq _023021A4
	add r0, r4, #0x90
	mov r1, #0x18
	bl EnableIqSkill
	add r0, r4, #0x9c
	mov r1, #0x18
	bl EnableIqSkill
_023021A4:
	add r0, r4, #0x90
	mov r1, #0x38
	bl IqSkillFlagTest
	cmp r0, #0
	beq _023021C4
	add r0, r4, #0x9c
	mov r1, #0x38
	bl EnableIqSkill
_023021C4:
	add r0, r4, #0x90
	mov r1, #0x39
	bl IqSkillFlagTest
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r4, #0x9c
	mov r1, #0x39
	bl EnableIqSkill
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_023021E8: .word 0x020A188C
_023021EC: .word 0x020A18A4
	arm_func_end ov29_02301FBC

	arm_func_start ov29_023021F0
ov29_023021F0: ; 0x023021F0
	ldr ip, _023021FC ; =ov29_02301FBC
	ldr r0, [r0, #0xb4]
	bx ip
	.align 2, 0
_023021FC: .word ov29_02301FBC
	arm_func_end ov29_023021F0

	arm_func_start ov29_02302200
ov29_02302200: ; 0x02302200
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0
	ldr r5, _02302278 ; =0x02353538
	b _02302268
_02302228:
	ldr r1, [r5]
	mov r0, r4
	add r1, r1, r6, lsl #2
	add r1, r1, #0x12000
	ldr r7, [r1, #0xb28]
	bl EntityIsValid__023000E4
	cmp r0, #0
	cmpne r4, r7
	beq _02302264
	mov r0, r4
	mov r1, r7
	bl ov29_022E274C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_02302264:
	add r6, r6, #1
_02302268:
	cmp r6, #4
	blt _02302228
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02302278: .word 0x02353538
	arm_func_end ov29_02302200

	arm_func_start GetMoveTypeForMonster
GetMoveTypeForMonster: ; 0x0230227C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	ldrh r0, [r4, #4]
	bl IsRegularAttackOrProjectile
	cmp r0, #0
	bne _023022C0
	mov r0, r5
	bl EntityIsValid__023000E4
	cmp r0, #0
	beq _023022C0
	mov r0, r5
	mov r1, #0x6b
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_023022C0:
	ldrh r1, [r4, #4]
	cmp r1, #0x144
	ldreq r0, [r5, #0xb4]
	ldreqb r0, [r0, #0x46]
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _02302318 ; =0x000001D7
	cmp r1, r0
	bne _023022F4
	mov r0, r5
	bl ov29_0231AE90
	cmp r0, #0
	ldrneb r0, [r0, #2]
	ldmneia sp!, {r3, r4, r5, pc}
_023022F4:
	ldrh r0, [r4, #4]
	cmp r0, #0x1f
	bne _0230230C
	mov r0, r5
	bl ov29_0231AF0C
	ldmia sp!, {r3, r4, r5, pc}
_0230230C:
	mov r0, r4
	bl GetMoveType
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02302318: .word 0x000001D7
	arm_func_end GetMoveTypeForMonster

	arm_func_start GetMovePower
GetMovePower: ; 0x0230231C
	stmdb sp!, {r3, r4, r5, lr}
	ldrh r2, [r1, #4]
	mov r5, r0
	ldrb r4, [r1, #7]
	cmp r2, #0x144
	ldreq r0, [r5, #0xb4]
	ldreqsh r0, [r0, #0x44]
	addeq r0, r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r1
	bl GetMoveBasePower
	add r4, r4, r0
	mov r0, r5
	mov r1, #0x2b
	bl ItemIsActive__022FF898
	cmp r0, #0
	movne r4, r4, lsl #1
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end GetMovePower

	arm_func_start ov29_02302368
ov29_02302368: ; 0x02302368
	stmdb sp!, {r3, lr}
	ldrsh r0, [r0, #2]
	bl CanThrowItems
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02302368

	arm_func_start ov29_02302388
ov29_02302388: ; 0x02302388
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl EntityIsValid__023000E4
	cmp r0, #0
	ldrne r0, [r4, #0xb4]
	ldrneb r1, [r0, #0xbc]
	cmpne r1, #7
	beq _023023B8
	bl IsExperienceLocked
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_023023B8:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov29_02302388

	arm_func_start ov29_023023C0
ov29_023023C0: ; 0x023023C0
	stmdb sp!, {r3, lr}
	add r3, r0, #0x100
	ldrh ip, [r3, #0x58]
	tst ip, r1
	ldrneh ip, [r3, #0x5a]
	ldreqh lr, [r3, #0x5a]
	orrne ip, ip, r1
	mvneq ip, r1
	andeq ip, lr, ip
	cmp r2, #0
	add r2, r0, #0x100
	strh ip, [r3, #0x5a]
	ldrneh r3, [r2, #0x58]
	ldreqh ip, [r2, #0x58]
	add r0, r0, #0x100
	orrne r3, r3, r1
	mvneq r3, r1
	andeq r3, ip, r3
	strh r3, [r2, #0x58]
	ldrh r2, [r0, #0x5a]
	tst r2, r1
	bne _02302428
	ldrh r0, [r0, #0x58]
	tst r0, r1
	movne r0, #1
	ldmneia sp!, {r3, pc}
_02302428:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov29_023023C0

	arm_func_start ov29_02302430
ov29_02302430: ; 0x02302430
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov29_02301994
	cmp r0, #0
	movne r0, #1
	bne _023024D4
	mov r0, r5
	mov r1, #0x59
	bl ExclusiveItemEffectIsActive__022FFF28
	cmp r0, #0
	beq _023024B4
	cmp r4, #0
	beq _023024AC
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	add r2, sp, #0
	mov r0, r5
	mov r1, #0x59
	bl ov29_0230F654
	add r1, sp, #0
	mov r0, #1
	bl ov29_02344B44
	ldr r2, _023024DC ; =0x00000C39
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023024AC:
	mov r0, #1
	b _023024D4
_023024B4:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov29_02301A84
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_023024D4:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_023024DC: .word 0x00000C39
	arm_func_end ov29_02302430

	arm_func_start ov29_023024E0
ov29_023024E0: ; 0x023024E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #7
	mov r5, r0
	bl IqSkillIsEnabled
	cmp r0, #0
	bne _02302534
	cmp r4, #0
	beq _02302518
	mov r0, r5
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	bne _0230252C
_02302518:
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #0xd0]
	cmp r0, #2
	cmpne r0, #4
	bne _02302534
_0230252C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02302534:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_023024E0

	arm_func_start AddExpSpecial
AddExpSpecial: ; 0x0230253C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	ldr r5, [r7, #0xb4]
	mov r6, r2
	mov r0, r5
	bl IsExperienceLocked
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0xa]
	cmp r0, #0x64
	bne _02302580
	cmp r6, #0
	ldrgt r0, _023026B4 ; =0x02353538
	movgt r1, #1
	ldrgt r0, [r0]
	strgtb r1, [r0, #0xf]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02302580:
	ldr r2, [r5, #0x20]
	mov r0, r7
	mov r1, #0x1c
	add r4, r2, r6
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _023025C0
	ldr r0, _023026B8 ; =0x022C44A8
	mov r1, #0x64
	ldrsh r0, [r0]
	mov r0, r0, lsl #8
	bl DivideInt
	mov r1, r0
	mov r0, r6, lsl #8
	bl MultiplyByFixedPoint
	add r4, r4, r0, asr #8
_023025C0:
	mov r0, r7
	mov r1, #0x43
	bl ItemIsActive__023026CC
	cmp r0, #0
	beq _023025F8
	ldr r0, _023026BC ; =0x022C469C
	mov r1, #0x64
	ldrsh r0, [r0]
	mov r0, r0, lsl #8
	bl DivideInt
	mov r1, r0
	mov r0, r6, lsl #8
	bl MultiplyByFixedPoint
	add r4, r4, r0, asr #8
_023025F8:
	mov r0, r7
	mov r1, #0x42
	bl ItemIsActive__023026CC
	cmp r0, #0
	beq _02302630
	ldr r0, _023026C0 ; =0x022C4698
	mov r1, #0x64
	ldrsh r0, [r0]
	mov r0, r0, lsl #8
	bl DivideInt
	mov r1, r0
	mov r0, r6, lsl #8
	bl MultiplyByFixedPoint
	add r4, r4, r0, asr #8
_02302630:
	ldr r1, [r7, #0xb4]
	ldrb r0, [r1, #6]
	cmp r0, #0
	movne r0, #0
	bne _02302650
	add r0, r1, #0x228
	mov r1, #0x4f
	bl ExclusiveItemEffectFlagTest
_02302650:
	cmp r0, #0
	beq _0230267C
	ldr r0, _023026C4 ; =0x022C458C
	mov r1, #0x64
	ldrsh r0, [r0]
	mov r0, r0, lsl #8
	bl DivideInt
	mov r1, r0
	mov r0, r6, lsl #8
	bl MultiplyByFixedPoint
	add r4, r4, r0, asr #8
_0230267C:
	ldr r0, _023026C8 ; =0x0098967F
	cmp r4, r0
	movge r4, r0
	ldr r0, [r5, #0x20]
	subs r2, r4, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5, #0x214]
	ldr r0, _023026B4 ; =0x02353538
	add r1, r1, r2
	str r1, [r5, #0x214]
	ldr r0, [r0]
	mov r1, #1
	strb r1, [r0, #0xf]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_023026B4: .word 0x02353538
_023026B8: .word 0x022C44A8
_023026BC: .word 0x022C469C
_023026C0: .word 0x022C4698
_023026C4: .word 0x022C458C
_023026C8: .word 0x0098967F
	arm_func_end AddExpSpecial

	arm_func_start ItemIsActive__023026CC
ItemIsActive__023026CC: ; 0x023026CC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ItemIsActive__023026CC

	arm_func_start EnemyEvolution
EnemyEvolution: ; 0x023026FC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x168
	mov sl, r0
	bl sub_02025888
	ldr r0, _02302A28 ; =0x02353538
	ldr r2, [r0]
	ldrb r1, [r2, #0xf]
	ldrb r0, [r2, #0x748]
	cmp r1, #0
	str r0, [sp, #8]
	beq _02302A20
	mov r0, #0
	strb r0, [r2, #0xf]
	bl GetForcedLossReason
	cmp r0, #0
	bne _02302A20
	mov r0, sl
	bl EntityIsValid__02302A38
	cmp r0, #0
	bne _02302758
	add r0, sp, #0xb0
	bl ov29_022E2470
	add sl, sp, #0xb0
_02302758:
	ldr r0, _02302A2C ; =0x023527F8
	mov r4, #0
	ldr r3, [r0]
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
_02302780:
	ldr r0, _02302A28 ; =0x02353538
	ldr r3, [sp, #0x14]
	ldr r0, [r0]
	ldr r2, [sp, #0x18]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb78]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r6, #0
	str r6, [sp, #4]
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	cmp r5, #0
	beq _02302A14
	mov r0, r5
	bl EntityIsValid__02302A38
	cmp r0, #0
	ldrne sb, [r5, #0xb4]
	ldrnesh r0, [sb, #0x10]
	cmpne r0, #0
	beq _02302A14
	ldrb r0, [sb, #0x102]
	cmp r0, #0
	movne r0, r6
	strneb r0, [sb, #0x102]
	bne _02302A08
	ldr fp, [sb, #0x214]
	cmp fp, #0
	beq _023028C4
	ldrb r0, [sb, #7]
	cmp r0, #0
	beq _02302818
	ldrb r1, [sb, #0xa]
	add r0, sp, #0x54
	bl sub_02058C9C
_02302818:
	ldrsh r2, [sb, #0x12]
	ldrsh r0, [sb, #0x16]
	ldrb r7, [sb, #0x1a]
	ldr r1, _02302A30 ; =0x000003E7
	add r0, r2, r0
	ldrb r3, [sb, #0x1b]
	ldrb r2, [sb, #0x1c]
	str r0, [sp, #4]
	cmp r0, r1
	strgt r1, [sp, #4]
	ldrb r1, [sb, #0x1d]
	ldrb r0, [sb, #0xa]
	str r7, [sp, #0x24]
	str r3, [sp, #0x28]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	cmp r0, #0x64
	beq _023028C4
	ldr r0, [sp, #8]
	bl IsExpEnabledInDungeon
	cmp r0, #0
	beq _023028C4
	ldr r0, [sb, #0x20]
	mov r1, fp
	add r2, r0, fp
	mov r0, #0
	str r2, [sb, #0x20]
	bl ov29_0234B09C
	bl ov29_0234B034
	mov r1, #0
	str r1, [sp]
	mov r2, sb
	mov r3, r1
	bl ov29_0230040C
	mov r0, sl
	ldr r1, _02302A34 ; =0x00000F1F
	bl LogMessageByIdWithPopup
	mov r0, sl
	mov r1, r5
	mov r2, #1
	mov r3, r2
	bl ov29_0230303C
	orr r6, r6, r0
_023028C4:
	ldrb r0, [sb, #0x153]
	cmp r0, #0
	beq _02302968
	ldrsh r0, [sb, #2]
	mov r2, #0
	add r1, sp, #0x2c
	mov r3, r2
	bl GetEvolutions
	movs r6, r0
	beq _02302964
	bl DungeonRandInt
	mov r8, r0
	mov r7, #0
	b _0230293C
_023028FC:
	mov r1, r8, lsl #1
	add r0, sp, #0x2c
	ldrsh r0, [r0, r1]
	bl IsOnMonsterSpawnList
	cmp r0, #0
	beq _0230292C
	mov r1, r8, lsl #1
	add r0, sp, #0x2c
	ldrsh r0, [r0, r1]
	bl GetSpriteIndex__022F7388
	cmp r0, #0
	bne _02302944
_0230292C:
	add r8, r8, #1
	cmp r8, r6
	movge r8, #0
	add r7, r7, #1
_0230293C:
	cmp r7, r6
	blt _023028FC
_02302944:
	cmp r7, r6
	bge _02302964
	add r0, sp, #0x2c
	mov r1, r8, lsl #1
	ldrsh r2, [r0, r1]
	mov r0, sl
	mov r1, r5
	bl EvolveMonster
_02302964:
	mov r6, #0
_02302968:
	cmp r6, #0
	beq _023029EC
	ldrb r0, [sb, #6]
	cmp r0, #0
	bne _023029EC
	ldrsh r2, [sb, #0x12]
	ldrsh r1, [sb, #0x16]
	ldr r0, _02302A30 ; =0x000003E7
	ldr r3, [sp, #0x28]
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [sp, #0x84]
	ldrb r2, [sb, #0x1a]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	sub r1, r2, r1
	str r1, [sp, #0x88]
	ldrb r1, [sb, #0x1c]
	ldr r2, [sp, #0x20]
	sub r0, r1, r0
	str r0, [sp, #0x8c]
	ldrb r6, [sb, #0x1b]
	add r1, sp, #0x60
	mov r0, r5
	sub r3, r6, r3
	str r3, [sp, #0x90]
	ldrb r3, [sb, #0x1d]
	sub r2, r3, r2
	str r2, [sp, #0x94]
	bl ov29_02302CC8
_023029EC:
	cmp fp, #0
	beq _02302A08
	add r2, sp, #0x54
	mov r0, sl
	mov r1, r5
	mov r3, #1
	bl ov29_02302C04
_02302A08:
	mov r0, #0
	str r0, [sb, #0x214]
	strb r0, [sb, #0x153]
_02302A14:
	add r4, r4, #1
	cmp r4, #0x14
	blt _02302780
_02302A20:
	add sp, sp, #0x168
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02302A28: .word 0x02353538
_02302A2C: .word 0x023527F8
_02302A30: .word 0x000003E7
_02302A34: .word 0x00000F1F
	arm_func_end EnemyEvolution

	arm_func_start EntityIsValid__02302A38
EntityIsValid__02302A38: ; 0x02302A38
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__02302A38

	arm_func_start ov29_02302A5C
ov29_02302A5C: ; 0x02302A5C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x74
	mov sb, r1
	mov sl, r0
	mov r0, sb
	str r2, [sp]
	mov r8, r3
	bl EntityIsValid__02302A38
	cmp r0, #0
	beq _02302BF4
	ldr r5, [sb, #0xb4]
	mov r4, #0
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _02302AA4
	ldrb r1, [r5, #0xa]
	add r0, sp, #0xc
	bl sub_02058C9C
_02302AA4:
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	ldr r0, _02302BFC ; =0x000003E7
	ldrb fp, [r5, #0x1c]
	add r7, r2, r1
	ldrb r1, [r5, #0x1a]
	cmp r7, r0
	movgt r7, r0
	str r1, [sp, #8]
	ldrb r1, [r5, #0x1b]
	mov r0, r5
	ldrb r6, [r5, #0x1d]
	str r1, [sp, #4]
	bl IsExperienceLocked
	cmp r0, #0
	bne _02302BA8
	ldrb r1, [r5, #0xa]
	ldr r0, [sp]
	add r2, r1, r0
	cmp r2, #0x64
	movge r2, #0x64
	cmp r2, r1
	beq _02302BA8
	ldrsh r1, [r5, #2]
	add r0, sp, #0x18
	bl GetLvlStats
	ldr r1, [sp, #0x18]
	ldrb r3, [sp, #0x98]
	str r1, [r5, #0x20]
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov29_0230303C
	orrs r4, r4, r0
	beq _02302BA8
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _02302BA8
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	ldr r0, _02302BFC ; =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	sub r0, r1, r7
	str r0, [sp, #0x48]
	ldrb r1, [r5, #0x1a]
	ldr r0, [sp, #8]
	cmp r8, #0
	sub r0, r1, r0
	str r0, [sp, #0x4c]
	ldrb r0, [r5, #0x1c]
	sub r0, r0, fp
	str r0, [sp, #0x50]
	ldrb r1, [r5, #0x1b]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [sp, #0x54]
	ldrb r0, [r5, #0x1d]
	sub r0, r0, r6
	str r0, [sp, #0x58]
	beq _02302BA8
	add r1, sp, #0x24
	mov r0, sb
	bl ov29_02302CC8
_02302BA8:
	add r2, sp, #0xc
	mov r0, sl
	mov r1, sb
	mov r3, r8
	bl ov29_02302C04
	mov r0, #0
	str r0, [r5, #0x214]
	strb r0, [r5, #0x153]
	cmp r4, #0
	bne _02302BF4
	cmp r8, #0
	beq _02302BF4
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02302C00 ; =0x00000F1D
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02302BF4:
	add sp, sp, #0x74
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02302BFC: .word 0x000003E7
_02302C00: .word 0x00000F1D
	arm_func_end ov29_02302A5C

	arm_func_start ov29_02302C04
ov29_02302C04: ; 0x02302C04
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sb, r1
	ldr r1, [sb, #0xb4]
	mov sl, r0
	ldrb r0, [r1, #7]
	mov r8, r2
	mov r4, r3
	cmp r0, #0
	beq _02302CB8
	ldrb r1, [r1, #0xa]
	add r0, sp, #0
	bl sub_02058C9C
	ldr r0, _02302CC0 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl sub_0204F610
	cmp r0, #0
	bne _02302CB8
	cmp r4, #0
	beq _02302CB8
	mov r7, #0
	ldr r4, _02302CC4 ; =0x00000F2A
	mov fp, r7
	mov r5, #1
	add r6, sp, #0
_02302C6C:
	ldrb r0, [r8, r7]
	cmp r0, #0
	ldreqb r0, [r6, r7]
	cmpeq r0, #1
	bne _02302CAC
	mov r0, fp
	mov r1, sb
	mov r2, fp
	bl SubstitutePlaceholderStringTags
	mov r0, r5
	and r1, r7, #0xff
	bl ov29_0234B084
	mov r0, sl
	mov r1, sb
	mov r2, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02302CAC:
	add r7, r7, #1
	cmp r7, #0xc
	blt _02302C6C
_02302CB8:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02302CC0: .word 0x02353538
_02302CC4: .word 0x00000F2A
	arm_func_end ov29_02302C04

	arm_func_start ov29_02302CC8
ov29_02302CC8: ; 0x02302CC8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x58
	mov sb, r0
	mov r8, r1
	mov r4, #0
	bl sub_02025888
	mov r5, r0
	ldr r7, [sb, #0xb4]
	mov r0, sb
	mov r1, r4
	mov r2, #1
	bl ov29_022F98B4
	add r0, sp, #0x18
	mov r1, r7
	bl ov29_02300164
	add r1, sp, #0x18
	mov r0, sb
	str r1, [r8, #0x38]
	bl ov29_023009CC
	cmp r0, #0
	beq _02302DBC
	mov r0, sb
	mov r6, r4
	bl ov29_022FB6E4
	cmp r0, #0
	bne _02302D40
	ldrb r0, [r7, #7]
	cmp r0, #0
	moveq r6, #1
	b _02302D58
_02302D40:
	ldr r0, _02302F64 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl IsSpecialEpisodeDungeon
	cmp r0, #0
	movne r6, #1
_02302D58:
	cmp r6, #0
	beq _02302DEC
	mov r0, r7
	bl ov29_0234CFEC
	mov r6, r0
	ldrb r0, [r7, #0x48]
	bl ov29_0234CFA0
	mov r2, r0
	mov r0, r6
	mov r1, #3
	bl GetTalkLine
	mov r6, r0
	ldrsh r1, [r7, #4]
	add r0, sp, #8
	mov r2, #0
	bl ov29_0234BAC0
	mov r1, r6
	mov r0, r5
	bl GetStringFromFileVeneer
	mov r0, sb
	add r1, sp, #8
	mov r2, r5
	mov r3, #1
	bl ov29_0234D304
	b _02302DEC
_02302DBC:
	ldr r0, _02302F68 ; =0x00000F27
	bl StringFromMessageId
	mov r1, r0
	mov r0, r5
	bl Strcpy
	mov r2, r4
	mov r0, r5
	mov r3, r2
	str r8, [sp]
	mov r1, #1
	str r1, [sp, #4]
	bl ov29_0234D234
_02302DEC:
	mov r0, #0
	strb r0, [r5]
	ldr r0, [r8, #0x24]
	cmp r0, #0
	ble _02302E18
	ldr r0, _02302F6C ; =0x00000F18
	bl StringFromMessageId
	mov r1, r0
	mov r0, r5
	bl Strcat
	add r4, r4, #1
_02302E18:
	ldr r0, [r8, #0x28]
	cmp r0, #0
	ble _02302E5C
	ldr r0, _02302F70 ; =0x023527F0
	ldrb r2, [r0, r4]
	cmp r2, #0
	beq _02302E44
	ldr r1, _02302F74 ; =0x023535C8
	mov r0, r5
	ldr r1, [r1, r2, lsl #2]
	bl Strcat
_02302E44:
	ldr r0, _02302F78 ; =0x00000F19
	bl StringFromMessageId
	mov r1, r0
	mov r0, r5
	bl Strcat
	add r4, r4, #1
_02302E5C:
	ldr r0, [r8, #0x2c]
	cmp r0, #0
	ble _02302EA0
	ldr r0, _02302F70 ; =0x023527F0
	ldrb r2, [r0, r4]
	cmp r2, #0
	beq _02302E88
	ldr r1, _02302F74 ; =0x023535C8
	mov r0, r5
	ldr r1, [r1, r2, lsl #2]
	bl Strcat
_02302E88:
	ldr r0, _02302F7C ; =0x00000F1A
	bl StringFromMessageId
	mov r1, r0
	mov r0, r5
	bl Strcat
	add r4, r4, #1
_02302EA0:
	ldr r0, [r8, #0x30]
	cmp r0, #0
	ble _02302EE4
	ldr r0, _02302F70 ; =0x023527F0
	ldrb r2, [r0, r4]
	cmp r2, #0
	beq _02302ECC
	ldr r1, _02302F74 ; =0x023535C8
	mov r0, r5
	ldr r1, [r1, r2, lsl #2]
	bl Strcat
_02302ECC:
	ldr r0, _02302F80 ; =0x00000F1B
	bl StringFromMessageId
	mov r1, r0
	mov r0, r5
	bl Strcat
	add r4, r4, #1
_02302EE4:
	ldr r0, [r8, #0x34]
	cmp r0, #0
	ble _02302F24
	ldr r0, _02302F70 ; =0x023527F0
	ldrb r2, [r0, r4]
	cmp r2, #0
	beq _02302F10
	ldr r1, _02302F74 ; =0x023535C8
	mov r0, r5
	ldr r1, [r1, r2, lsl #2]
	bl Strcat
_02302F10:
	ldr r0, _02302F84 ; =0x00000F1C
	bl StringFromMessageId
	mov r1, r0
	mov r0, r5
	bl Strcat
_02302F24:
	ldrb r0, [r5]
	cmp r0, #0
	beq _02302F4C
	mov r2, #0
	mov r0, r5
	mov r3, r2
	str r8, [sp]
	mov r1, #1
	str r1, [sp, #4]
	bl ov29_0234D234
_02302F4C:
	bl GetLeader
	mov r1, #0
	mov r2, #1
	bl ov29_022F98B4
	add sp, sp, #0x58
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02302F64: .word 0x02353538
_02302F68: .word 0x00000F27
_02302F6C: .word 0x00000F18
_02302F70: .word 0x023527F0
_02302F74: .word 0x023535C8
_02302F78: .word 0x00000F19
_02302F7C: .word 0x00000F1A
_02302F80: .word 0x00000F1B
_02302F84: .word 0x00000F1C
	arm_func_end ov29_02302CC8

	arm_func_start ov29_02302F88
ov29_02302F88: ; 0x02302F88
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	bl EntityIsValid__02302A38
	cmp r0, #0
	beq _02303030
	ldr r5, [r7, #0xb4]
	mov r4, #0
	mov r0, r5
	bl IsExperienceLocked
	cmp r0, #0
	bne _02303000
	ldrb r0, [r5, #0xa]
	sub r2, r0, r6
	cmp r2, #1
	movlt r2, #1
	cmp r2, r0
	beq _02303000
	ldrsh r1, [r5, #2]
	add r0, sp, #0
	bl GetLvlStats
	ldr r2, [sp]
	mov r0, r8
	mov r1, r7
	str r2, [r5, #0x20]
	bl ov29_02303284
	orr r4, r4, r0
_02303000:
	mov r0, #0
	str r0, [r5, #0x214]
	strb r0, [r5, #0x153]
	cmp r4, #0
	bne _02303030
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02303038 ; =0x00000F1E
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02303030:
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02303038: .word 0x00000F1E
	arm_func_end ov29_02302F88

	arm_func_start ov29_0230303C
ov29_0230303C: ; 0x0230303C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sl, r1
	str r0, [sp, #4]
	mov r0, sl
	mov r6, #0
	mov sb, r2
	str r3, [sp, #8]
	bl EntityIsValid__02302A38
	cmp r0, #0
	moveq r0, r6
	beq _02303268
	ldr r7, [sl, #0xb4]
	mov r0, r7
	ldrsh fp, [r7, #2]
	ldr r8, [r7, #0x20]
	bl IsExperienceLocked
	cmp r0, #0
	movne r0, r6
	bne _02303268
	ldrb r0, [r7, #0xa]
	ldr r4, _02303270 ; =0x0237C9C4
	add r5, r0, #1
	b _0230325C
_0230309C:
	add r0, sp, #0xc
	mov r1, fp
	mov r2, r5
	bl GetLvlStats
	ldr r0, [sp, #0xc]
	cmp r0, r8
	bgt _02303264
	strb r5, [r7, #0xa]
	str r8, [r7, #0x20]
	cmp sb, #0
	beq _02303160
	ldrb r0, [r7, #6]
	cmp r0, #0
	bne _02303124
	mov r0, sl
	mov r1, #0
	mov r2, #1
	bl ov29_022F98B4
	cmp r6, #0
	bne _023030F0
	bl ov29_022EAC7C
_023030F0:
	mov r0, #0
	mov r1, r5
	bl ov29_0234B09C
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r0, sl
	mov r1, #0xf20
	bl ov29_0234D484
	b _02303160
_02303124:
	cmp r6, #0
	bne _02303130
	bl ov29_022EAC7C
_02303130:
	mov r0, #0
	mov r1, r5
	bl ov29_0234B09C
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r0, sl
	mov r1, #0xf20
	bl LogMessageByIdWithPopup
_02303160:
	ldrh r1, [sp, #0x10]
	add r0, r7, #0x12
	mov r6, #1
	bl sub_02054FB8
	ldrsh r1, [r7, #0x10]
	ldrh r0, [sp, #0x10]
	add r0, r1, r0
	strh r0, [r7, #0x10]
	ldrsh r1, [r7, #0x12]
	ldrsh r0, [r7, #0x16]
	add r2, r1, r0
	ldr r0, _02303274 ; =0x000003E7
	cmp r2, r0
	movgt r1, r0
	ldrsh r0, [r7, #0x10]
	movle r1, r2
	cmp r0, r1
	blt _023031B8
	ldr r0, _02303274 ; =0x000003E7
	cmp r2, r0
	movgt r2, r0
	strh r2, [r7, #0x10]
_023031B8:
	ldr r0, _02303278 ; =0x0237C9C8
	ldrb r2, [r7, #0x1a]
	mov r1, r0
	strb r2, [r1]
	ldrb r2, [r7, #0x1b]
	strb r2, [r1, #1]
	ldrb r1, [r7, #0x1c]
	strb r1, [r4]
	ldrb r1, [r7, #0x1d]
	strb r1, [r4, #1]
	ldrb r1, [sp, #0x12]
	bl sub_02054FEC
	ldrb r1, [sp, #0x13]
	ldr r0, _0230327C ; =0x0237C9C9
	bl sub_02054FEC
	ldrb r1, [sp, #0x14]
	mov r0, r4
	bl sub_02055020
	ldrb r1, [sp, #0x15]
	ldr r0, _02303280 ; =0x0237C9C5
	bl sub_02055020
	mov r0, sl
	bl ov29_023021F0
	mov r0, sl
	bl ov29_02318D58
	ldr r0, _02303278 ; =0x0237C9C8
	mov r1, sl
	ldrb r2, [r0]
	ldr r0, [sp, #4]
	strb r2, [r7, #0x1a]
	ldr r2, _02303278 ; =0x0237C9C8
	ldr r3, [sp, #8]
	ldrb ip, [r2, #1]
	mov r2, sb
	strb ip, [r7, #0x1b]
	ldrb ip, [r4]
	strb ip, [r7, #0x1c]
	ldrb ip, [r4, #1]
	strb ip, [r7, #0x1d]
	bl ov29_023034E0
	add r5, r5, #1
_0230325C:
	cmp r5, #0x64
	ble _0230309C
_02303264:
	mov r0, r6
_02303268:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02303270: .word 0x0237C9C4
_02303274: .word 0x000003E7
_02303278: .word 0x0237C9C8
_0230327C: .word 0x0237C9C9
_02303280: .word 0x0237C9C5
	arm_func_end ov29_0230303C

	arm_func_start ov29_02303284
ov29_02303284: ; 0x02303284
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r1
	str r0, [sp, #4]
	mov r0, sl
	bl EntityIsValid__02302A38
	cmp r0, #0
	moveq r0, #0
	beq _023034BC
	ldr r7, [sl, #0xb4]
	mov r0, r7
	ldrsh r5, [r7, #2]
	ldr r8, [r7, #0x20]
	ldrb r6, [r7, #0xa]
	bl IsExperienceLocked
	cmp r0, #0
	movne r0, #0
	bne _023034BC
	mov sb, #1
	add r4, sp, #8
	b _023032F8
_023032D8:
	mov r0, r4
	mov r1, r5
	mov r2, sb
	bl GetLvlStats
	ldr r0, [sp, #8]
	cmp r0, r8
	bge _02303304
	add sb, sb, #1
_023032F8:
	ldrb r0, [r7, #0xa]
	cmp sb, r0
	blt _023032D8
_02303304:
	sub r4, sb, #1
	ldrb sb, [r7, #0xa]
	ldr fp, _023034C4 ; =0x0237C9C4
	b _02303450
_02303314:
	cmp sb, #0x64
	strge r8, [r7, #0x20]
	bge _0230333C
	add r0, sp, #8
	mov r1, r5
	add r2, sb, #1
	bl GetLvlStats
	ldr r0, [sp, #8]
	sub r0, r0, #1
	str r0, [r7, #0x20]
_0230333C:
	cmp r6, sb
	ble _0230344C
	add r0, sp, #8
	mov r1, r5
	add r2, sb, #1
	bl GetLvlStats
	strb sb, [r7, #0xa]
	ldrh r1, [sp, #0xc]
	add r0, r7, #0x10
	rsb r1, r1, #0
	bl sub_02054FB8
	ldrh r1, [sp, #0xc]
	add r0, r7, #0x12
	rsb r1, r1, #0
	bl sub_02054FB8
	ldrsh r1, [r7, #0x12]
	ldrsh r0, [r7, #0x16]
	add r2, r1, r0
	ldr r0, _023034C8 ; =0x000003E7
	cmp r2, r0
	movgt r1, r0
	ldrsh r0, [r7, #0x10]
	movle r1, r2
	cmp r0, r1
	blt _023033B0
	ldr r0, _023034C8 ; =0x000003E7
	cmp r2, r0
	movgt r2, r0
	strh r2, [r7, #0x10]
_023033B0:
	ldr r0, _023034CC ; =0x0237C9C8
	ldrb r2, [r7, #0x1a]
	mov r1, r0
	strb r2, [r1]
	ldrb r2, [r7, #0x1b]
	strb r2, [r1, #1]
	ldrb r1, [r7, #0x1c]
	strb r1, [fp]
	ldrb r1, [r7, #0x1d]
	strb r1, [fp, #1]
	ldrb r1, [sp, #0xe]
	rsb r1, r1, #0
	bl sub_02054FEC
	ldrb r1, [sp, #0xf]
	ldr r0, _023034D0 ; =0x0237C9C9
	rsb r1, r1, #0
	bl sub_02054FEC
	ldrb r1, [sp, #0x10]
	mov r0, fp
	rsb r1, r1, #0
	bl sub_02055020
	ldrb r1, [sp, #0x11]
	ldr r0, _023034D4 ; =0x0237C9C5
	rsb r1, r1, #0
	bl sub_02055020
	mov r0, sl
	bl ov29_023021F0
	mov r0, sl
	bl ov29_02318D58
	ldr r0, _023034CC ; =0x0237C9C8
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	ldr r0, _023034CC ; =0x0237C9C8
	ldrb r0, [r0, #1]
	strb r0, [r7, #0x1b]
	ldrb r0, [fp]
	strb r0, [r7, #0x1c]
	ldrb r0, [fp, #1]
	strb r0, [r7, #0x1d]
_0230344C:
	sub sb, sb, #1
_02303450:
	cmp sb, r4
	bgt _02303314
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	ldrb r1, [r7, #0xa]
	cmp r1, r6
	bne _02303494
	ldr r2, _023034D8 ; =0x00000F22
	ldr r0, [sp, #4]
	mov r1, sl
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0
	b _023034BC
_02303494:
	mov r0, #0
	bl ov29_0234B09C
	mov r0, sl
	mov r1, #0x204
	bl ov29_022E56A0
	ldr r2, _023034DC ; =0x00000F21
	ldr r0, [sp, #4]
	mov r1, sl
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #1
_023034BC:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_023034C4: .word 0x0237C9C4
_023034C8: .word 0x000003E7
_023034CC: .word 0x0237C9C8
_023034D0: .word 0x0237C9C9
_023034D4: .word 0x0237C9C5
_023034D8: .word 0x00000F22
_023034DC: .word 0x00000F21
	arm_func_end ov29_02303284

	arm_func_start ov29_023034E0
ov29_023034E0: ; 0x023034E0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x78
	mov sb, r1
	ldr r5, [sb, #0xb4]
	mov r4, #0
	ldrb r0, [r5, #6]
	mov r8, r2
	mov fp, r4
	str r3, [sp, #8]
	cmp r0, #0
	str r4, [sp, #0xc]
	add r0, r5, #0x4a
	strne r4, [sp, #8]
	movne r8, r4
	bl ov29_022EBCE8
	mov sl, #0
	mov r6, r0
	mvn r0, #0
	cmp r6, r0
	addne r0, r5, r6, lsl #3
	addne r0, r0, #0x100
	ldrneh r7, [r0, #0x28]
	mov ip, sl
	mov lr, sl
	moveq r7, #0
	mov r3, #1
	add r0, sp, #0x10
_0230354C:
	add r1, r5, ip, lsl #3
	ldrb r1, [r1, #0x124]
	tst r1, #1
	movne r1, r3
	moveq r1, lr
	tst r1, #0xff
	beq _02303588
	add r1, r5, ip, lsl #3
	add r1, r1, #0x100
	ldrh r2, [r1, #0x28]
	mov r1, sl, lsl #1
	add sl, sl, #1
	strh r2, [r0, r1]
	mov r1, sl, lsl #0x10
	mov sl, r1, asr #0x10
_02303588:
	add r1, ip, #1
	mov r1, r1, lsl #0x10
	mov ip, r1, asr #0x10
	cmp ip, #4
	blt _0230354C
	mov r2, sl
	mov r3, #0
	add r1, sp, #0x10
	b _023035C0
_023035AC:
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	mov r2, r2, lsl #1
	strh r3, [r1, r2]
	mov r2, r0, asr #0x10
_023035C0:
	cmp r2, #4
	blt _023035AC
	add r1, sp, #0x10
	stmia sp, {r1, sl}
	ldrsh r1, [r5, #2]
	ldrb r2, [r5, #0xa]
	ldrsh r3, [r5, #0xe]
	add r0, sp, #0x58
	bl sub_02053904
	mov sl, r0
	add r0, sp, #0x18
	add r1, r5, #0x124
	bl sub_020149C0
	cmp sl, #0
	beq _02303670
	mov r0, sl
	bl DungeonRandInt
	mov sl, #0
	add ip, sp, #0x18
	mov r1, sl
	mov r2, #1
	b _02303668
_02303618:
	ldrb r3, [ip, sl, lsl #3]
	tst r3, #1
	movne r3, r2
	moveq r3, r1
	tst r3, #0xff
	bne _02303664
	add r1, sp, #0x58
	mov r0, r0, lsl #1
	ldrh r2, [r1, r0]
	add r3, sp, #0x18
	mov r0, sb
	add r1, r3, sl, lsl #3
	bl ov29_0231EA04
	add r2, sp, #0x1a
	mov r1, sl, lsl #3
	ldrh r0, [r2, r1]
	orr r0, r0, #4
	strh r0, [r2, r1]
	b _02303670
_02303664:
	add sl, sl, #1
_02303668:
	cmp sl, #8
	blt _02303618
_02303670:
	add sl, sp, #0x18
_02303674:
	mov lr, #0
	mov r1, lr
_0230367C:
	ldrb r0, [sl, r1, lsl #3]
	add r1, r1, #1
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	addne lr, lr, #1
	cmp r1, #8
	blt _0230367C
	cmp lr, #4
	bgt _02303770
	mov sl, #0
	mov ip, sl
	b _023036FC
_023036B4:
	add r1, r5, ip, lsl #3
	add r0, sp, #0x18
	add r2, r1, #0x124
	add r3, r0, ip, lsl #3
	mov r1, #4
_023036C8:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _023036C8
	add r0, r5, ip, lsl #3
	add r0, r0, #0x100
	ldrh r1, [r0, #0x26]
	add ip, ip, #1
	tst r1, #4
	bicne r1, r1, #4
	strneh r1, [r0, #0x26]
	ldrneh r4, [r0, #0x28]
	movne sl, #1
_023036FC:
	cmp ip, lr
	blt _023036B4
	mov r1, #0
	b _02303718
_0230370C:
	add r0, r5, ip, lsl #3
	strb r1, [r0, #0x124]
	add ip, ip, #1
_02303718:
	cmp ip, #4
	blt _0230370C
	cmp sl, #0
	cmpne r8, #0
	beq _02303818
	bl ov29_0234B034
	mov r1, #0
	mov r2, r5
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r1, r4
	mov r0, #0
	bl ov29_0234B084
	ldr r1, _023038C4 ; =0x0000131B
	mov r0, sb
	bl ov29_022E56A0
	ldr r1, _023038C8 ; =0x00000F23
	mov r0, sb
	bl ov29_0234D484
	mov fp, #1
	b _02303818
_02303770:
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _02303808
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02303808
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _023037E8
	cmp r8, #0
	beq _023037E8
	mov r0, #0xa
	mov r1, #6
	bl ov29_022EA370
	ldrsh r1, [r5, #2]
	ldr r0, _023038CC ; =0xFFFFFE5E
	mov r2, #1
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #3
	mov r0, #0
	ldr r1, _023038D0 ; =0x00000F25
	bhi _023037E4
	add r1, r1, #1
	bl DisplayMessage2
	b _023037E8
_023037E4:
	bl DisplayMessage2
_023037E8:
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, sb
	mov r1, sl
	mov r2, #1
	mov r3, #0
	bl ov29_0234FAEC
	b _02303674
_02303808:
	mov r0, sb
	mov r1, sl
	bl ov29_02303BEC
	b _02303674
_02303818:
	cmp fp, #0
	cmpne r7, #0
	mvnne r0, #0
	cmpne r6, r0
	beq _023038BC
	mov r2, #0
	mov r4, r6
	mov r0, r2
	mov r1, #1
	b _0230389C
_02303840:
	add r3, r5, r4, lsl #3
	ldrb r3, [r3, #0x124]
	tst r3, #1
	movne r3, r1
	moveq r3, r0
	tst r3, #0xff
	beq _02303870
	add r3, r5, r4, lsl #3
	add r3, r3, #0x100
	ldrh r3, [r3, #0x28]
	cmp r7, r3
	beq _023038A4
_02303870:
	add r3, r4, #1
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	mov r4, r3, lsr #0x1f
	rsb r3, r4, r3, lsl #30
	add r4, r4, r3, ror #30
	add r3, r2, #1
	mov r2, r4, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r4, r2, asr #0x10
	mov r2, r3, asr #0x10
_0230389C:
	cmp r2, #4
	blt _02303840
_023038A4:
	cmp r2, #4
	beq _023038B4
	cmp r4, r6
	beq _023038BC
_023038B4:
	mov r0, #1
	strb r0, [r5, #0x23e]
_023038BC:
	add sp, sp, #0x78
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_023038C4: .word 0x0000131B
_023038C8: .word 0x00000F23
_023038CC: .word 0xFFFFFE5E
_023038D0: .word 0x00000F25
	arm_func_end ov29_023034E0

	arm_func_start ov29_023038D4
ov29_023038D4: ; 0x023038D4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xa4
	mov sl, r0
	ldr r8, [sl, #0xb4]
	mov r6, r1
	mov r5, #0
	add r0, sp, #0
	add r1, r8, #0x124
	mov r7, r5
	bl sub_020149C0
	mov r4, r5
	add r3, sp, #0
	mov r0, r5
	mov r1, #1
	b _02303958
_02303910:
	ldrb r2, [r3, r4, lsl #3]
	tst r2, #1
	movne r2, r1
	moveq r2, r0
	tst r2, #0xff
	bne _02303954
	add r1, sp, #0
	mov r0, sl
	mov r2, r6
	add r1, r1, r4, lsl #3
	bl ov29_0231EA04
	add r2, sp, #2
	mov r1, r4, lsl #3
	ldrh r0, [r2, r1]
	orr r0, r0, #4
	strh r0, [r2, r1]
	b _02303960
_02303954:
	add r4, r4, #1
_02303958:
	cmp r4, #8
	blt _02303910
_02303960:
	mov sb, #0
	mov fp, #1
	add r4, sp, #0
	b _02303AC8
_02303970:
	mov r6, #0
	mov r1, r6
_02303978:
	ldrb r0, [r4, r1, lsl #3]
	add r1, r1, #1
	tst r0, #1
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	addne r6, r6, #1
	cmp r1, #8
	blt _02303978
	cmp r6, #4
	bgt _02303A84
	mov sb, #0
	add r4, r8, #0x124
	add fp, sp, #0
	b _02303A14
_023039B4:
	add r0, r8, sb, lsl #3
	add r3, fp, sb, lsl #3
	add r2, r0, #0x124
	mov r1, #4
_023039C4:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _023039C4
	add r0, r8, sb, lsl #3
	add r3, r0, #0x100
	ldrh r0, [r3, #0x26]
	tst r0, #4
	beq _02303A10
	bic r5, r0, #4
	add r0, sp, #0x40
	mov r2, #0
	add r1, r4, sb, lsl #3
	strh r5, [r3, #0x26]
	bl FormatMoveString
	add r0, r8, sb, lsl #3
	add r0, r0, #0x100
	ldrh r5, [r0, #0x28]
	mov r7, #1
_02303A10:
	add sb, sb, #1
_02303A14:
	cmp sb, r6
	blt _023039B4
	mov r1, #0
	b _02303A30
_02303A24:
	add r0, r8, sb, lsl #3
	strb r1, [r0, #0x124]
	add sb, sb, #1
_02303A30:
	cmp sb, #4
	blt _02303A24
	cmp r7, #0
	beq _02303AD0
	ldrb r0, [r8, #6]
	cmp r0, #0
	bne _02303AD0
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r5
	mov r0, #0
	bl ov29_0234B084
	ldr r1, _02303B08 ; =0x0000131B
	mov r0, sl
	bl ov29_022E56A0
	ldr r1, _02303B0C ; =0x00000F23
	mov r0, sl
	bl ov29_0234D484
	b _02303AD0
_02303A84:
	ldrb r0, [r8, #6]
	mov r7, #0
	cmp r0, #0
	bne _02303AC4
	ldr r1, _02303B10 ; =0x00000F28
	mov r0, r7
	mov r2, #1
	bl DisplayMessage
	mov r2, #1
	mov r0, sl
	mov r1, r4
	mov r3, r2
	bl ov29_0234FAEC
	cmp r0, #0
	moveq r0, r7
	beq _02303B00
_02303AC4:
	add sb, sb, #1
_02303AC8:
	cmp sb, #0x1e
	blt _02303970
_02303AD0:
	cmp r7, #0
	ldreqb r0, [r8, #6]
	cmpeq r0, #0
	bne _02303AFC
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _02303B14 ; =0x00000F24
	mov r0, sl
	bl ov29_0234D484
_02303AFC:
	mov r0, #1
_02303B00:
	add sp, sp, #0xa4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02303B08: .word 0x0000131B
_02303B0C: .word 0x00000F23
_02303B10: .word 0x00000F28
_02303B14: .word 0x00000F24
	arm_func_end ov29_023038D4

	arm_func_start ov29_02303B18
ov29_02303B18: ; 0x02303B18
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov sb, r2
	mov r2, #0
	mov sl, r0
	mov r8, r2
_02303B30:
	mov r0, r2, lsl #1
	add r2, r2, #1
	strh r8, [sl, r0]
	cmp r2, #4
	blt _02303B30
	mov r0, r1
	bl GetMovesetLevelUpPtr
	mov r7, r0
	add r6, sp, #0
	mov r5, #0
	mov r4, #4
	b _02303BD8
_02303B60:
	mov r0, r7
	mov r1, r6
	bl sub_0205384C
	ldrb r1, [r0]
	add r7, r0, #1
	cmp r1, sb
	bgt _02303BE4
	mov r1, r5
	ldrh r2, [sp]
	b _02303BA4
_02303B88:
	mov r0, r1, lsl #1
	ldrh r0, [sl, r0]
	cmp r2, r0
	beq _02303BAC
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
_02303BA4:
	cmp r1, #4
	blt _02303B88
_02303BAC:
	cmp r1, #4
	bne _02303BD8
	cmp r8, #4
	movne r0, r8
	addne r8, r8, #1
	bne _02303BCC
	mov r0, r4
	bl DungeonRandInt
_02303BCC:
	ldrh r1, [sp]
	mov r0, r0, lsl #1
	strh r1, [sl, r0]
_02303BD8:
	ldrb r0, [r7]
	cmp r0, #0
	bne _02303B60
_02303BE4:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02303B18

	arm_func_start ov29_02303BEC
ov29_02303BEC: ; 0x02303BEC
	stmdb sp!, {r4, lr}
	mov r0, #0
	mov r4, r1
	mov ip, r0
	mov r2, r0
	mov r3, #1
_02303C04:
	ldrb r1, [r4, ip, lsl #3]
	tst r1, #1
	movne r1, r3
	moveq r1, r2
	tst r1, #0xff
	ldrneb r1, [r4, ip, lsl #3]
	addne r0, r0, #1
	bicne r1, r1, #2
	strneb r1, [r4, ip, lsl #3]
	add ip, ip, #1
	cmp ip, #8
	blt _02303C04
	bl DungeonRandInt
	add r1, r4, r0, lsl #3
	ldrh lr, [r1, #4]
	b _02303C64
_02303C44:
	add ip, r4, r0, lsl #3
	add r3, ip, #8
	mov r2, #4
_02303C50:
	ldrh r1, [r3], #2
	subs r2, r2, #1
	strh r1, [ip], #2
	bne _02303C50
	add r0, r0, #1
_02303C64:
	cmp r0, #7
	blt _02303C44
	mov r1, #0
	mov r0, lr
	strb r1, [r4, #0x38]
	ldmia sp!, {r4, pc}
	arm_func_end ov29_02303BEC

	arm_func_start EvolveMonster
EvolveMonster: ; 0x02303C7C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r7, r1
	ldr r6, [r7, #0xb4]
	mov r8, r0
	mov r5, r2
	bl ov29_0234B034
	mov r1, #0
	mov r2, r6
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r1, r5
	mov r0, #1
	bl ov29_0234B06C
	mov r0, r5
	bl GetSpriteIndex__022F7388
	strh r5, [r6, #4]
	strh r5, [r6, #2]
	mov r4, r0
	ldrb r2, [r6, #0xa]
	add r0, sp, #0x14
	mov r1, r5
	bl GetLvlStats
	ldr r1, [sp, #0x14]
	mov r0, r6
	str r1, [r6, #0x20]
	mov r1, #0
	strh r4, [r7, #0xa8]
	bl ov29_022FDDC0
	mov r0, r7
	bl ov29_022F9194
	mov r0, r7
	mov r1, #7
	bl ov29_02304830
	ldr r2, _02303DFC ; =0x00000F29
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r7
	bl ov29_022E6724
	bl ov29_022EAC9C
	ldr r0, _02303E00 ; =0x0000013F
	cmp r5, r0
	addne r0, r0, #0x258
	cmpne r5, r0
	bne _02303DF4
	mov r5, #0
	ldr r4, _02303E04 ; =0x0235171C
	mov r8, #0x140
	b _02303D84
_02303D48:
	mov r1, r5, lsl #2
	add r0, r4, r5, lsl #2
	ldrsh ip, [r7, #4]
	ldrsh r3, [r4, r1]
	ldrsh r2, [r7, #6]
	ldrsh r1, [r0, #2]
	add r0, ip, r3
	add r1, r2, r1
	bl GetTile
	mov r1, r0
	mov r0, r8
	bl ov29_022FF6C4
	cmp r0, #0
	beq _02303D8C
	add r5, r5, #1
_02303D84:
	cmp r5, #8
	blt _02303D48
_02303D8C:
	mov r0, #0x140
	bl IsOnMonsterSpawnList
	cmp r0, #0
	beq _02303DF4
	mov r0, #0x140
	strh r0, [sp, #4]
	ldrb r1, [r6, #0xa]
	mov r2, #0
	ldr r0, _02303E04 ; =0x0235171C
	mov r5, r5, lsl #2
	strh r1, [sp, #0xc]
	strb r2, [sp, #6]
	ldrsh r3, [r0, r5]
	ldrsh r4, [r7, #4]
	ldr r1, _02303E08 ; =0x0235171E
	add r0, sp, #4
	add r3, r4, r3
	strh r3, [sp, #0xe]
	ldrsh r4, [r7, #6]
	ldrsh r3, [r1, r5]
	mov r1, #1
	str r2, [sp, #8]
	add r3, r4, r3
	strh r3, [sp, #0x10]
	strb r2, [sp, #0x12]
	bl SpawnMonster
_02303DF4:
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02303DFC: .word 0x00000F29
_02303E00: .word 0x0000013F
_02303E04: .word 0x0235171C
_02303E08: .word 0x0235171E
	arm_func_end EvolveMonster

	arm_func_start ov29_02303E0C
ov29_02303E0C: ; 0x02303E0C
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0xbc]
	cmp r1, #1
	cmpne r1, #2
	cmpne r1, #3
	cmpne r1, #0xb
	cmpne r1, #0xc
	cmpne r1, #0xd
	cmpne r1, #0xe
	beq _02303E4C
	cmp r1, #4
	bne _02303E54
	ldrsh r0, [r0, #2]
	bl NeedsItemToSpawn
	cmp r0, #0
	beq _02303E54
_02303E4C:
	mov r0, #1
	ldmia sp!, {r3, pc}
_02303E54:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02303E0C

	arm_func_start ov29_02303E5C
ov29_02303E5C: ; 0x02303E5C
	stmdb sp!, {r3, r4, r5, lr}
	mvn r4, #0x1f
	cmp r3, r4
	ldrgtsh ip, [sp, #0x10]
	cmpgt ip, r4
	ldmleia sp!, {r3, r4, r5, pc}
	rsb lr, r4, #0xff
	cmp r3, lr
	cmplt ip, #0xe0
	ldmgeia sp!, {r3, r4, r5, pc}
	cmp r1, #6
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r5, _02303F0C ; =0x0237C888
	mov lr, #0x48
	smlabb r5, r2, lr, r5
	mov r2, #0xc
	mla r1, r2, r1, r5
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh lr, [r1, #2]
	ldrsh r5, [r1, #8]
	sub r0, r2, #0x20c
	and r0, lr, r0
	strh r0, [r1, #2]
	ldrh r2, [r1, #2]
	add r0, r3, r5
	and r0, r0, r4, lsr #23
	orr r0, r2, r0
	strh r0, [r1, #2]
	ldrh r3, [r1, #6]
	ldrsh r4, [r1, #0xa]
	ldr r0, _02303F10 ; =0xFFFF000F
	ldr r2, _02303F14 ; =0x020AFC4C
	and r0, r3, r0
	strh r0, [r1, #6]
	add r0, ip, r4
	ldrh r4, [r1, #6]
	mov r3, r0, lsl #0x14
	ldr r0, [r2]
	orr r3, r4, r3, lsr #16
	mov r2, #0
	strh r3, [r1, #6]
	bl sub_0201B9F8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02303F0C: .word 0x0237C888
_02303F10: .word 0xFFFF000F
_02303F14: .word 0x020AFC4C
	arm_func_end ov29_02303E5C

	arm_func_start ov29_02303F18
ov29_02303F18: ; 0x02303F18
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x38
	ldr r1, _023046C8 ; =0x02353538
	mov r7, r0
	ldr r0, [r1]
	ldr r5, [r7, #0xb4]
	add r0, r0, #0x1a000
	ldr r1, [r0, #0x22c]
	cmp r1, r7
	moveq r4, #0
	ldrneb r4, [r0, #0x245]
	ldrb r0, [r5, #0xd8]
	ldrb r1, [r7, #0xaf]
	cmp r0, #2
	ldrb r0, [r7, #0xae]
	moveq r4, #1
	cmp r1, r0
	ldreqb r1, [r7, #0xb1]
	ldreqb r0, [r7, #0xb0]
	cmpeq r1, r0
	ldreqb r0, [r7, #0xb3]
	cmpeq r0, #0
	bne _02304044
	add r0, r7, #0x2c
	mov r6, #0
	bl sub_0201D1B0
	cmp r0, #0
	moveq r6, #1
	cmp r6, #0
	beq _02304044
	mov r0, r7
	bl GetSleepAnimationId
	mov r3, #1
	strb r3, [r7, #0x21]
	ldrb r1, [r5, #0x10a]
	cmp r1, #0x63
	bne _02303FF4
	ldrb r6, [r7, #0xaf]
	cmp r6, #0xd
	bhs _02303FF0
	ldrb r1, [r5, #0xd2]
	cmp r1, #1
	moveq r3, #2
	beq _02303FD4
	ldrb r1, [r7, #0x23]
	cmp r1, #3
	movlo r3, #0
_02303FD4:
	ldr r2, _023046CC ; =0x02352810
	mov r1, #0xd
	mla r1, r3, r1, r2
	ldrb r1, [r6, r1]
	cmp r1, #7
	moveq r1, r0
	b _02303FF4
_02303FF0:
	mov r1, #0x63
_02303FF4:
	cmp r1, #0x63
	beq _02304044
	strb r1, [r7, #0xae]
	mov r1, #0
	strb r1, [r7, #0x28]
	ldrb r2, [r7, #0xb1]
	mov r1, #1
	and r2, r2, #7
	strb r2, [r7, #0xb0]
	strb r1, [r7, #0xb3]
	ldrb r1, [r5, #0x23d]
	cmp r1, #0
	ldreqb r1, [r7, #0xae]
	cmpeq r1, #6
	ldreqb r1, [r7, #0xb2]
	addeq r2, r1, #1
	andeq r1, r2, #0xff
	streqb r2, [r7, #0xb2]
	cmpeq r1, #0x10
	streqb r0, [r7, #0xae]
_02304044:
	ldrh r0, [r7, #0x2e]
	orr r0, r0, #0x10
	strh r0, [r7, #0x2e]
	ldrb r2, [r7, #0xae]
	ldrb r0, [r7, #0xaf]
	cmp r0, r2
	ldreqb r1, [r7, #0xb1]
	ldreqb r0, [r7, #0xb0]
	cmpeq r1, r0
	ldreqb r0, [r7, #0xb3]
	cmpeq r0, #0
	beq _023041F4
	strb r2, [r7, #0xaf]
	ldrb r1, [r7, #0xb0]
	mov r0, #0
	strb r1, [r7, #0xb1]
	strb r0, [r7, #0xb3]
	ldrb r0, [r7, #0x28]
	cmp r0, #0
	movne r6, #2
	ldreqsh r6, [r7, #0xac]
	cmp r4, #0
	bne _0230414C
	cmp r0, #0
	beq _023040EC
	bl ov29_022F7050
	mov r1, r0
	add r0, r7, #0x2c
	bl sub_0201C0E8
	bl Rand16Bit
	mov r1, r6, lsl #0x10
	mov r3, r1, asr #0x10
	mov r1, #0
	str r1, [sp]
	and r0, r0, #3
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldrb r1, [r7, #0xae]
	ldrb r2, [r7, #0xb0]
	add r0, r7, #0x2c
	bl sub_0201C418
	b _023041E4
_023040EC:
	ldrsh r1, [r7, #0xa8]
	add r0, r7, #0x2c
	bl sub_0201C0E8
	bl Rand16Bit
	ldrb r1, [r7, #0xaa]
	and r0, r0, #3
	mov r3, r6, lsl #0x10
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r7, #0xae]
	ldrb r2, [r7, #0xb0]
	add r0, r7, #0x2c
	mov r3, r3, asr #0x10
	bl sub_0201C418
	ldrb r0, [r5, #0x171]
	cmp r0, #0
	beq _023041E4
	add r0, r7, #0x2c
	mov r1, #1
	bl sub_0201D198
	b _023041E4
_0230414C:
	cmp r0, #0
	beq _02304198
	bl ov29_022F7050
	mov r1, r0
	add r0, r7, #0x2c
	bl sub_0201C0E8
	bl Rand16Bit
	mov r1, r6, lsl #0x10
	mov r3, r1, asr #0x10
	mov r1, #0
	str r1, [sp]
	and r0, r0, #3
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldrb r1, [r7, #0xae]
	ldrb r2, [r7, #0xb0]
	add r0, r7, #0x2c
	bl sub_0201C418
	b _023041E4
_02304198:
	ldr r0, _023046D0 ; =0x00000229
	bl GetSpriteIndex__022F7388
	mov r1, r0
	add r0, r7, #0x2c
	bl sub_0201C0E8
	bl Rand16Bit
	mov r1, r6, lsl #0x10
	mov r3, r1, asr #0x10
	ldrb r2, [r7, #0xaa]
	and r1, r0, #3
	mov r0, #0
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r7, #0x2c
	ldrb r1, [r7, #0xae]
	ldrb r2, [r7, #0xb0]
	bl sub_0201C418
_023041E4:
	ldrb r0, [r7, #0xae]
	cmp r0, #6
	movne r0, #0
	strneb r0, [r7, #0xb2]
_023041F4:
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x14]
	cmp r1, r0
	ldreq r1, [r7, #0x10]
	ldreq r0, [r7, #0x18]
	cmpeq r1, r0
	bne _02304224
	ldrb r0, [r7, #0x23]
	cmp r0, #0xa
	addlo r0, r0, #1
	strlob r0, [r7, #0x23]
	b _0230422C
_02304224:
	mov r0, #0
	strb r0, [r7, #0x23]
_0230422C:
	ldr r1, [r7, #0xc]
	ldr r0, _023046D4 ; =0x0001A224
	str r1, [r7, #0x14]
	ldr r2, [r7, #0x10]
	ldr r1, _023046C8 ; =0x02353538
	str r2, [r7, #0x18]
	ldr r8, [r1]
	add r1, r0, #2
	ldrsh r4, [r8, r1]
	ldr r6, [r7, #0x10]
	ldr r3, [r7, #0x1c]
	ldrb r2, [r5, #0x160]
	rsb r1, r4, r6, asr #8
	ldrsh r8, [r8, r0]
	add r1, r1, r1, lsr #31
	ldr sb, [r7, #0xc]
	ldr r0, [r5, #0x188]
	sub r3, r6, r3
	sub r0, r3, r0
	rsb r8, r8, sb, asr #8
	mov sl, r1, asr #1
	cmp r2, #0
	rsb sb, r4, r0, asr #8
	subeq sl, sl, #1
	bl ov29_022ECB38
	cmp r0, #0
	beq _023042B0
	ldr r0, _023046D8 ; =0x0237C850
	ldr r0, [r0]
	tst r0, #1
	mvnne r0, #1
	moveq r0, #2
	add r8, r8, r0
_023042B0:
	ldrb r0, [r5, #0x172]
	cmp r0, #0
	bne _023042D8
	mov r0, r7
	bl ov29_022E273C
	ldrb r1, [r5, #0x170]
	mov r4, r0
	cmp r1, #0
	movne r4, #0
	b _02304310
_023042D8:
	ldrb r0, [r5, #0x173]
	cmp r0, #0
	beq _023042FC
	ldr r0, _023046D8 ; =0x0237C850
	ldr r0, [r0]
	tst r0, #4
	movne r0, #1
	mvneq r0, #0
	add r8, r8, r0
_023042FC:
	ldrb r0, [r5, #0x174]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r4, r0, #0xff
_02304310:
	ldr r3, _023046DC ; =0x0235280C
	add r0, sp, #0x28
	ldrh r6, [r3]
	add r2, r7, #0x2c
	mov r1, #4
	strh r6, [sp, #0x18]
	ldrh r3, [r3, #2]
	strh r3, [sp, #0x1a]
	ldr r3, [r7, #0xc]
	mov r3, r3, asr #8
	strh r3, [sp, #0x18]
	ldr ip, [r7, #0x10]
	ldr r6, [r7, #0x1c]
	ldr r3, [r5, #0x188]
	sub r6, ip, r6
	sub r3, r6, r3
	mov r3, r3, asr #8
	strh r3, [sp, #0x1a]
	bl sub_0201D034
	ldr r1, _023046C8 ; =0x02353538
	ldr r0, [r5, #0xb0]
	ldr r2, [r1]
	add r1, sp, #0x18
	add r2, r2, #0x1a000
	ldrb r3, [r2, #0x23c]
	add r2, sp, #0x28
	bl ov29_022DDB98
	add r0, sp, #0x10
	mov r1, r7
	bl ov29_022E3A40
	cmp r4, #0
	ldrneb r0, [r5, #0x156]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	str r0, [sp]
	ldrsh r1, [r5, #4]
	ldr r0, [r5, #0xb0]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl ov29_022DD7D8
	mov r0, r7
	mov r1, sl
	bl ov29_022E6E80
	mov r0, r7
	bl ov29_023046E8
	cmp r4, #0
	beq _0230464C
	ldr r0, [r7, #0xb4]
	ldr r1, _023046C8 ; =0x02353538
	ldr r3, _023046E0 ; =0x0000F3FF
	ldrb r6, [r0, #0x220]
	mov r0, #0
	ldr r1, [r1]
	add r2, r3, #0xc00
	strh r3, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	strh r3, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r0, [sp, #0x24]
	add r2, r1, #0x1a000
	ldrb r2, [r2, #0x23c]
	mov r2, r2, lsl #0xa
	strh r2, [sp, #0x26]
	ldrb r2, [r5, #6]
	cmp r2, #0
	beq _02304458
	ldrb r2, [r5, #0xbc]
	cmp r2, #0xb
	blo _02304434
	cmp r2, #0xe
	bls _02304458
_02304434:
	ldrsh r3, [r5, #4]
	ldr r2, _023046E4 ; =0xFFFFFE5D
	add r2, r3, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	cmp r2, #2
	movls r0, #1
_02304458:
	ldrb r2, [r5, #0xef]
	cmp r2, #1
	addeq r1, r1, #0x1a000
	ldreqb r1, [r1, #0x244]
	cmpeq r1, #0
	moveq r0, #1
	cmp r0, #0
	beq _023044B8
	bl ov29_02338988
	cmp r0, #0
	beq _02304498
	ldr r0, _023046D8 ; =0x0237C850
	ldr r0, [r0]
	tst r0, #1
	beq _023044B8
	b _023046C0
_02304498:
	bl ov29_022E3580
	cmp r0, #0
	bne _023044B8
	bl ov29_022E3570
	cmp r0, #0
	ldreqh r0, [sp, #0x22]
	orreq r0, r0, #0x400
	streqh r0, [sp, #0x22]
_023044B8:
	ldrh r2, [r7, #0x2e]
	add r1, sp, #0x1c
	add r0, r7, #0x2c
	orr r2, r2, #0x20
	strh r2, [r7, #0x2e]
	bl sub_0201D110
	ldrb r0, [r5, #6]
	cmp r0, #0
	ldrneb r0, [r5, #0xd8]
	cmpne r0, #2
	moveq r0, #1
	movne r0, #0
	mov r1, r0, lsl #0x10
	mov r0, r5
	mov r4, r1, asr #0x10
	bl IsExperienceLocked
	cmp r0, #0
	bne _0230450C
	ldrb r0, [r5, #0xbc]
	cmp r0, #7
	bne _02304510
_0230450C:
	mov r4, #1
_02304510:
	strh sl, [r7, #0x64]
	strh r8, [r7, #0x48]
	strh sb, [r7, #0x4a]
	ldrb r0, [r5, #0x10b]
	cmp r0, #2
	beq _02304590
	ldrb r1, [r5, #0xc4]
	cmp r1, #6
	ldrneb r0, [r5, #0xbf]
	cmpne r0, #4
	cmpne r1, #2
	bne _02304558
	ldr r0, _023046D8 ; =0x0237C850
	ldr r0, [r0]
	and r0, r0, #2
	add r0, r8, r0
	strh r0, [r7, #0x48]
	strh sb, [r7, #0x4a]
_02304558:
	ldrb r0, [r7, #0x22]
	cmp r0, #0
	bne _02304570
	add r0, r7, #0x2c
	bl sub_0201CF5C
	b _02304590
_02304570:
	cmp r0, #1
	bne _02304590
	ldr r0, _023046D8 ; =0x0237C850
	ldr r0, [r0]
	tst r0, #1
	beq _02304590
	add r0, r7, #0x2c
	bl sub_0201CF5C
_02304590:
	ldrsh r2, [r7, #0x50]
	add r1, r5, #0x100
	ldr r0, _023046D4 ; =0x0001A224
	strh r2, [r1, #0x82]
	ldrsh r8, [r7, #0x52]
	ldr r3, _023046C8 ; =0x02353538
	add r2, r0, #2
	strh r8, [r1, #0x84]
	ldrsh sb, [r1, #0x82]
	ldr r8, [r7, #0xc]
	add r8, sb, r8, asr #8
	strh r8, [r1, #0x82]
	ldrsh sb, [r1, #0x84]
	ldr r8, [r7, #0x10]
	add r8, sb, r8, asr #8
	strh r8, [r1, #0x84]
	ldr sb, [r3]
	ldrsh r8, [r1, #0x82]
	ldrsh r0, [sb, r0]
	ldrsh r3, [r1, #0x84]
	ldrsh r1, [sb, r2]
	sub r0, r8, r0
	mov r0, r0, lsl #0x10
	sub r1, r3, r1
	mov r1, r1, lsl #0x10
	mov r8, r0, asr #0x10
	mov sb, r1, asr #0x10
	bl ov29_022ECB38
	cmp r0, #0
	beq _02304628
	ldr r0, _023046D8 ; =0x0237C850
	ldr r0, [r0]
	tst r0, #1
	mvnne r0, #1
	moveq r0, #2
	add r0, r8, r0
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
_02304628:
	ldrb r0, [r7, #0x22]
	cmp r0, #0
	bne _0230464C
	str sb, [sp]
	ldrb r0, [r5, #0x160]
	mov r1, r6
	mov r2, r4
	mov r3, r8
	bl ov29_02303E5C
_0230464C:
	ldrb r0, [r5, #0xc4]
	cmp r0, #1
	cmpne r0, #6
	beq _023046C0
	ldr r0, _023046C8 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x78b]
	cmp r0, #0
	beq _02304690
	bl ov29_0234B4E0
	cmp r0, #0
	bne _02304690
	add r0, r7, #0x2c
	bl sub_0201C458
	add r0, r7, #0x2c
	bl sub_0201C458
	b _023046B8
_02304690:
	ldrb r0, [r7, #0xaf]
	cmp r0, #0
	cmpne r0, #7
	bne _023046B8
	ldr r0, [r7, #0xb4]
	ldr r0, [r0, #0x110]
	cmp r0, #1
	ble _023046B8
	add r0, r7, #0x2c
	bl sub_0201C458
_023046B8:
	add r0, r7, #0x2c
	bl sub_0201C458
_023046C0:
	add sp, sp, #0x38
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_023046C8: .word 0x02353538
_023046CC: .word 0x02352810
_023046D0: .word 0x00000229
_023046D4: .word 0x0001A224
_023046D8: .word 0x0237C850
_023046DC: .word 0x0235280C
_023046E0: .word 0x0000F3FF
_023046E4: .word 0xFFFFFE5D
	arm_func_end ov29_02303F18

	arm_func_start ov29_023046E8
ov29_023046E8: ; 0x023046E8
	ldr r1, [r0, #0xb4]
	ldrb r0, [r1, #0x172]
	cmp r0, #0
	bxne lr
	ldrb r0, [r1, #0x10b]
	cmp r0, #1
	ldr r0, [r1, #0x188]
	bne _02304728
	cmp r0, #0xc800
	bxge lr
	add r0, r0, #0x800
	str r0, [r1, #0x188]
	cmp r0, #0xc800
	movgt r0, #0xc800
	strgt r0, [r1, #0x188]
	bx lr
_02304728:
	subs r0, r0, #0xc00
	str r0, [r1, #0x188]
	movmi r0, #0
	strmi r0, [r1, #0x188]
	bx lr
	arm_func_end ov29_023046E8

	arm_func_start ov29_0230473C
ov29_0230473C: ; 0x0230473C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	ldr r6, _023047B4 ; =0x02353538
	mov r7, r5
_0230474C:
	ldr r0, [r6]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r4, [r0, #0xb78]
	mov r0, r4
	bl EntityIsValid__023047B8
	cmp r0, #0
	ldrne r2, [r4, #0xb4]
	ldrneb r0, [r2, #0x179]
	cmpne r0, #0
	beq _023047A4
	sub r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r2, #0x179]
	tst r0, #1
	bne _023047A4
	ldrb r2, [r2, #0x4c]
	mov r0, r4
	mov r1, r7
	sub r2, r2, #1
	and r2, r2, #7
	bl ov29_023049A8
_023047A4:
	add r5, r5, #1
	cmp r5, #0x14
	blt _0230474C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_023047B4: .word 0x02353538
	arm_func_end ov29_0230473C

	arm_func_start EntityIsValid__023047B8
EntityIsValid__023047B8: ; 0x023047B8
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__023047B8

	arm_func_start ov29_023047DC
ov29_023047DC: ; 0x023047DC
	stmdb sp!, {r4, r5, r6, lr}
	ldr r4, _0230482C ; =0x02353538
	mov r5, #0
_023047E8:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid__023047B8
	cmp r0, #0
	beq _0230481C
	mov r0, r6
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r6
	bl ov29_02304830
_0230481C:
	add r5, r5, #1
	cmp r5, #0x14
	blt _023047E8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0230482C: .word 0x02353538
	arm_func_end ov29_023047DC

	arm_func_start ov29_02304830
ov29_02304830: ; 0x02304830
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r2, _0230494C ; =0x02353538
	mov r5, r0
	ldr r0, [r2]
	ldr r4, [r5, #0xb4]
	add r0, r0, #0x1a000
	ldr r2, [r0, #0x22c]
	ldrb r3, [r0, #0x245]
	cmp r5, r2
	mov r2, #0
	strb r2, [r5, #0x28]
	strb r1, [r5, #0xaf]
	and r0, r1, #0xff
	strb r0, [r5, #0xae]
	ldrb r0, [r4, #0x4c]
	moveq r3, #0
	strb r0, [r5, #0xb1]
	strb r0, [r5, #0xb0]
	strb r2, [r5, #0xb3]
	ldrb r0, [r4, #0xd8]
	ldrsh r6, [r5, #0xac]
	cmp r0, #2
	beq _023048E0
	cmp r3, #0
	bne _023048E0
	ldrsh r1, [r5, #0xa8]
	add r0, r5, #0x2c
	bl sub_0201C0E8
	bl Rand16Bit
	ldrb r1, [r5, #0xaa]
	and r0, r0, #3
	mov r3, r6, lsl #0x10
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r5, #0xae]
	ldrb r2, [r5, #0xb0]
	add r0, r5, #0x2c
	mov r3, r3, asr #0x10
	bl sub_0201C418
	b _0230492C
_023048E0:
	ldr r0, _02304950 ; =0x00000229
	bl GetSpriteIndex__022F7388
	mov r1, r0
	add r0, r5, #0x2c
	bl sub_0201C0E8
	bl Rand16Bit
	mov r1, r6, lsl #0x10
	mov r3, r1, asr #0x10
	ldrb r2, [r5, #0xaa]
	and r1, r0, #3
	mov r0, #0
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0x2c
	ldrb r1, [r5, #0xae]
	ldrb r2, [r5, #0xb0]
	bl sub_0201C418
_0230492C:
	mov r0, #0
	strb r0, [r5, #0xb2]
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _02304944
	bl ov29_022E8104
_02304944:
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0230494C: .word 0x02353538
_02304950: .word 0x00000229
	arm_func_end ov29_02304830

	arm_func_start ov29_02304954
ov29_02304954: ; 0x02304954
	stmdb sp!, {r4, r5, r6, lr}
	ldr r4, _023049A4 ; =0x02353538
	mov r5, #0
_02304960:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid__023047B8
	cmp r0, #0
	beq _02304994
	mov r0, r6
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r6
	bl ov29_02304830
_02304994:
	add r5, r5, #1
	cmp r5, #0x14
	blt _02304960
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_023049A4: .word 0x02353538
	arm_func_end ov29_02304954

	arm_func_start ov29_023049A8
ov29_023049A8: ; 0x023049A8
	ldr r3, [r0]
	cmp r3, #1
	bxne lr
	mov r3, #0
	strb r3, [r0, #0x28]
	strb r1, [r0, #0xae]
	cmp r2, #0
	bxlt lr
	cmp r2, #8
	strltb r2, [r0, #0xb0]
	bx lr
	arm_func_end ov29_023049A8

	arm_func_start ov29_023049D4
ov29_023049D4: ; 0x023049D4
	stmdb sp!, {r3, lr}
	ldr r3, [r0]
	cmp r3, #1
	ldmneia sp!, {r3, pc}
	ldrb r3, [r0, #0xaf]
	cmp r3, r1
	ldreqb r3, [r0, #0xb1]
	cmpeq r3, r2
	ldmeqia sp!, {r3, pc}
	bl ov29_023049A8
	ldmia sp!, {r3, pc}
	arm_func_end ov29_023049D4

	arm_func_start ov29_02304A00
ov29_02304A00: ; 0x02304A00
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5]
	mov r4, r1
	cmp r2, #1
	ldmneia sp!, {r3, r4, r5, pc}
	bl GetSleepAnimationId
	strb r0, [r5, #0xae]
	mov r0, #0
	strb r0, [r5, #0x28]
	cmp r4, #0
	ldmltia sp!, {r3, r4, r5, pc}
	cmp r4, #8
	ldrlt r0, [r5, #0xb4]
	andlt r1, r4, #7
	strltb r1, [r0, #0x4c]
	strltb r1, [r5, #0xb0]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_02304A00

	arm_func_start ov29_02304A48
ov29_02304A48: ; 0x02304A48
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5]
	mov r4, r1
	cmp r2, #1
	ldmneia sp!, {r3, r4, r5, pc}
	bl GetSleepAnimationId
	strb r0, [r5, #0xae]
	mov r0, #0
	strb r0, [r5, #0x28]
	cmp r4, #0
	ldmltia sp!, {r3, r4, r5, pc}
	cmp r4, #8
	strltb r4, [r5, #0xb0]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_02304A48

	arm_func_start ov29_02304A84
ov29_02304A84: ; 0x02304A84
	ldr r2, [r0]
	cmp r2, #1
	bxne lr
	mov r2, #6
	strb r2, [r0, #0xae]
	mov r2, #0
	strb r2, [r0, #0x28]
	cmp r1, #0
	bxlt lr
	cmp r1, #8
	strltb r1, [r0, #0xb0]
	bx lr
	arm_func_end ov29_02304A84

	arm_func_start GetSleepAnimationId
GetSleepAnimationId: ; 0x02304AB4
	ldr r1, [r0, #0xb4]
	ldrb r0, [r1, #0xbd]
	cmp r0, #1
	cmpne r0, #5
	cmpne r0, #3
	bne _02304AE8
	ldrsh r0, [r1, #4]
	cmp r0, #0xb9
	ldreqb r0, [r1, #0xbe]
	cmpeq r0, #0x7f
	moveq r0, #7
	movne r0, #5
	bx lr
_02304AE8:
	ldrb r0, [r1, #0xd2]
	cmp r0, #1
	moveq r0, #0xb
	movne r0, #7
	bx lr
	arm_func_end GetSleepAnimationId

	arm_func_start ov29_02304AFC
ov29_02304AFC: ; 0x02304AFC
	ldr r2, [r0, #0xb4]
	and r1, r1, #7
	ldr ip, _02304B10 ; =ov29_02304A48
	strb r1, [r2, #0x4c]
	bx ip
	.align 2, 0
_02304B10: .word ov29_02304A48
	arm_func_end ov29_02304AFC

	arm_func_start ov29_02304B14
ov29_02304B14: ; 0x02304B14
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl EntityIsValid__023047B8
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, [r7, #0xb4]
	mov r5, #0
	mov r4, #0x21
	b _02304B58
_02304B38:
	mov r0, r4
	bl AdvanceFrame
	ldrsh r0, [r6, #4]
	ldrb r1, [r7, #0xaf]
	bl sub_02053038
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r5, #1
_02304B58:
	cmp r5, #0x64
	blt _02304B38
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_02304B14

	arm_func_start ov29_02304B64
ov29_02304B64: ; 0x02304B64
	stmdb sp!, {r4, r5, r6, lr}
	ldr r4, _02304BA8 ; =0x02353538
	mov r5, #0
_02304B70:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid__023047B8
	cmp r0, #0
	beq _02304B98
	mov r0, r6
	bl ov29_02304BAC
_02304B98:
	add r5, r5, #1
	cmp r5, #0x14
	blt _02304B70
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02304BA8: .word 0x02353538
	arm_func_end ov29_02304B64

	arm_func_start ov29_02304BAC
ov29_02304BAC: ; 0x02304BAC
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl GetTileAtEntity
	ldrh r1, [r0]
	ldr r5, [r4, #0xb4]
	ldrsh r0, [r5, #4]
	and r6, r1, #3
	bl GetShadowSize
	mov r4, r0
	cmp r6, #3
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r6, #1
	bne _02304BF8
	bl ov29_02337E94
	cmp r0, #0
	ldrne r0, _02304C30 ; =0x02352808
	ldrneb r4, [r0, r4]
	b _02304C24
_02304BF8:
	cmp r6, #2
	bne _02304C24
	ldr r0, _02304C34 ; =0x02353538
	ldr r1, _02304C38 ; =0x020A1AE8
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	ldrb r0, [r1, r0]
	cmp r0, #1
	ldrne r0, _02304C30 ; =0x02352808
	ldrneb r4, [r0, r4]
_02304C24:
	mov r0, r4
	strb r4, [r5, #0x220]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02304C30: .word 0x02352808
_02304C34: .word 0x02353538
_02304C38: .word 0x020A1AE8
	arm_func_end ov29_02304BAC

	arm_func_start ov29_02304C3C
ov29_02304C3C: ; 0x02304C3C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r0
	mov sl, r1
	bl EntityIsValid__023047B8
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [r4]
	cmp r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, [r4, #0xb4]
	mov r0, r4
	ldrb r7, [r1, #0x4c]
	mov r8, r7
	bl ov29_022E272C
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov sb, #0
	mov r6, #2
	mov r5, #0x43
	b _02304CC0
_02304C8C:
	mov r0, r4
	mov r1, r8
	bl ov29_02304A48
	mov r0, r6
	mov r1, r5
	bl ov29_022EA370
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	and r8, r1, #7
	mov sb, r0, asr #0x10
_02304CC0:
	cmp sb, sl, lsl #3
	blt _02304C8C
	mov r6, #2
	mov r5, #0x43
	b _02304CFC
_02304CD4:
	mov r0, r4
	mov r1, r8
	bl ov29_02304A48
	mov r0, r6
	mov r1, r5
	bl ov29_022EA370
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	and r8, r0, #7
_02304CFC:
	cmp r8, r7
	bne _02304CD4
	mov r0, r4
	mov r1, r8
	bl ov29_02304A48
	mov r0, #2
	mov r1, #0x43
	bl ov29_022EA370
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02304C3C

	arm_func_start ov29_02304D20
ov29_02304D20: ; 0x02304D20
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, r0
	ldr sb, [r6, #0xb4]
	mov r5, r1
	add r0, sb, #0x200
	ldrsh r0, [r0, #0xc]
	mov r4, r2
	cmp r0, #4
	movge r0, #0
	strgeh r0, [sb, #0x4a]
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_0204AEE0
	cmp r0, #0
	movne r1, #2
	ldr r2, _02304FD4 ; =0x0237C9CC
	moveq r1, #1
	str r1, [r2]
	add r0, sb, #0x200
	ldrsh r3, [r0, #0xc]
	mov r1, #0x1c
	add r0, sb, #0x19c
	smulbb sl, r3, r1
	add r7, r0, sl
	mov r1, #0
	strb r1, [r7, #0x1a]
	str r5, [r7, #0xc]
	ldrsh r8, [r6, #4]
	mov r3, r5, lsl #2
	ldr r1, _02304FD8 ; =0x0235173C
	strh r8, [r0, sl]
	ldrsh r5, [r6, #6]
	ldr r0, _02304FDC ; =0x0235173E
	ldrsh r1, [r1, r3]
	strh r5, [r7, #2]
	ldrsh r5, [r4]
	ldrsh r0, [r0, r3]
	str r5, [r7, #4]
	ldrsh r3, [r4, #2]
	str r3, [r7, #8]
	ldr r3, [r2]
	mul r1, r3, r1
	str r1, [r7, #0x10]
	ldr r1, [r2]
	mul r0, r1, r0
	str r0, [r7, #0x14]
	bl sub_0204AEE0
	cmp r0, #0
	movne r1, #2
	ldr r5, _02304FD4 ; =0x0237C9CC
	moveq r1, #1
	add r0, sb, #0x200
	str r1, [r5]
	ldrsh r1, [r0, #0xc]
	add r1, r1, #1
	strh r1, [r0, #0xc]
	ldrsh r0, [r0, #0xc]
	cmp r0, #2
	bne _02304E6C
	ldr r1, [r5]
	mov r0, #0x18
	mov r1, r1, lsl #1
	bl DivideInt
	add r1, sb, #0x100
	strh r0, [r1, #0xb4]
	ldr r0, [sb, #0x1ac]
	mov r1, r5
	mov r0, r0, lsl #1
	str r0, [sb, #0x1ac]
	ldr r2, [sb, #0x1b0]
	mov r0, #0x18
	mov r2, r2, lsl #1
	str r2, [sb, #0x1b0]
	ldr r1, [r1]
	mov r1, r1, lsl #1
	bl DivideInt
	strh r0, [r7, #0x18]
	ldr r0, [r7, #0x10]
	mov r0, r0, lsl #1
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	mov r0, r0, lsl #1
	str r0, [r7, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02304E6C:
	cmp r0, #3
	bne _02304F14
	mov r6, #0
	mov r4, #0x18
	mov sl, #0x1c
_02304E80:
	mla r8, r6, sl, sb
	ldr r1, [r5]
	mov r0, r4
	add r1, r1, r1, lsl #1
	bl DivideInt
	add r1, r8, #0x100
	strh r0, [r1, #0xb4]
	ldr r0, [r8, #0x1ac]
	add r6, r6, #1
	add r0, r0, r0, lsl #1
	str r0, [r8, #0x1ac]
	ldr r0, [r8, #0x1b0]
	cmp r6, #2
	add r0, r0, r0, lsl #1
	str r0, [r8, #0x1b0]
	ldr r0, [r8, #0x1ac]
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	str r0, [r8, #0x1ac]
	ldr r0, [r8, #0x1b0]
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	str r0, [r8, #0x1b0]
	blt _02304E80
	ldr r1, _02304FD4 ; =0x0237C9CC
	mov r0, #0x18
	ldr r1, [r1]
	add r1, r1, r1, lsl #1
	bl DivideInt
	strh r0, [r7, #0x18]
	ldr r0, [r7, #0x10]
	add r0, r0, r0, lsl #1
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	add r0, r0, r0, lsl #1
	str r0, [r7, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02304F14:
	cmp r0, #4
	bne _02304FC0
	mov r8, #0
	mov r6, #0x18
	mov fp, #3
	mov r4, #0x1c
_02304F2C:
	mla sl, r8, r4, sb
	ldr r1, [r5]
	mov r0, r6
	mov r1, r1, lsl #2
	bl DivideInt
	add r1, sl, #0x100
	strh r0, [r1, #0xb4]
	ldr r0, [sl, #0x1ac]
	mov r1, fp
	mov r0, r0, lsl #2
	str r0, [sl, #0x1ac]
	ldr r0, [sl, #0x1b0]
	mov r0, r0, lsl #2
	str r0, [sl, #0x1b0]
	ldr r0, [sl, #0x1ac]
	bl DivideInt
	str r0, [sl, #0x1ac]
	ldr r0, [sl, #0x1b0]
	mov r1, #3
	bl DivideInt
	add r8, r8, #1
	str r0, [sl, #0x1b0]
	cmp r8, #3
	blt _02304F2C
	ldr r1, _02304FD4 ; =0x0237C9CC
	mov r0, #0x18
	ldr r1, [r1]
	mov r1, r1, lsl #2
	bl DivideInt
	strh r0, [r7, #0x18]
	ldr r0, [r7, #0x10]
	mov r0, r0, lsl #2
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	mov r0, r0, lsl #2
	str r0, [r7, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02304FC0:
	ldr r1, [r5]
	mov r0, #0x18
	bl DivideInt
	strh r0, [r7, #0x18]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02304FD4: .word 0x0237C9CC
_02304FD8: .word 0x0235173C
_02304FDC: .word 0x0235173E
	arm_func_end ov29_02304D20

	arm_func_start DisplayActions
DisplayActions: ; 0x02304FE0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r1, _02305580 ; =0x0237C9C1
	mov r6, #0
	mov sl, r0
	mov r7, r6
	strb r6, [r1]
	bl sub_0204AEE0
	cmp r0, #0
	mov r5, #0
	movne r1, #2
	ldr r0, _02305584 ; =0x0237C9CC
	moveq r1, #1
	str r1, [r0]
	mov r4, r5
	mov fp, r5
_02305020:
	ldr r0, _02305588 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb78]
	mov r0, r8
	bl EntityIsValid__0230558C
	cmp r0, #0
	beq _02305160
	ldr sb, [r8, #0xb4]
	add r0, sb, #0x200
	ldrsh r0, [r0, #0xc]
	cmp r0, #0
	bne _023050EC
	ldrb r0, [sb, #0x151]
	cmp r0, #0
	beq _02305160
	strb r4, [sb, #0x151]
	add r0, sb, #0x100
	ldrsh r1, [r0, #0x7e]
	cmp r1, #0
	ldreqsh r0, [r0, #0x80]
	cmpeq r0, #0
	beq _02305160
	ldrsh r0, [r8, #4]
	cmp r1, r0
	addeq r0, sb, #0x100
	ldreqsh r1, [r0, #0x80]
	ldreqsh r0, [r8, #6]
	cmpeq r1, r0
	beq _02305160
	mov r0, r8
	mov r1, #1
	bl ov29_02300818
	cmp r0, #0
	beq _023050C0
	mov r0, r8
	bl ov29_02300CB0
	cmp r0, #0
	bne _02305160
_023050C0:
	add r0, r8, #4
	add r1, sb, #0x7e
	add r1, r1, #0x100
	bl GetDirectionTowardsPosition
	mov r1, r0
	ldrb r0, [sb, #0x4c]
	cmp r1, r0
	beq _02305160
	mov r0, r8
	bl ov29_02304A48
	b _02305160
_023050EC:
	ldrh r2, [sb]
	mov r0, r8
	add r1, sp, #0xc
	orr r2, r2, #0x2000
	strh r2, [sb]
	ldr r3, [sb, #0x1a0]
	mov r2, #0x18
	mul r2, r3, r2
	add r2, r2, #0xc
	mov r2, r2, lsl #8
	str r2, [sp, #0xc]
	ldr r3, [sb, #0x1a4]
	mov r2, #0x18
	mul r2, r3, r2
	add r2, r2, #0x10
	mov r2, r2, lsl #8
	str r2, [sp, #0x10]
	bl ov29_022E1A40
	ldr r2, [sb, #0x1a8]
	mov r0, r8
	mov r1, #0
	bl ov29_023049D4
	add r0, sb, #0x200
	strh fp, [r0, #0xe]
	mov r0, r8
	mov r6, #1
	bl ov29_022E272C
	cmp r0, #0
	movne r7, r6
_02305160:
	add r5, r5, #1
	cmp r5, #0x14
	blt _02305020
	cmp r6, #0
	moveq r0, #0
	beq _02305578
	ldr r0, _02305588 ; =0x02353538
	ldr r1, [r0]
	ldr r6, [r1, #0xc4]
	str sl, [r1, #0xc4]
	ldr r0, [r0]
	ldrb r0, [r0, #0x78b]
	cmp r0, #0
	bne _0230532C
	cmp r7, #0
	beq _0230532C
	mov r0, #0x35
	bl ov29_0234BA18
	mov r5, #0
	b _02305314
_023051B0:
	mov r0, #7
	bl AdvanceFrame
	mov sl, #0
	ldr r4, _02305588 ; =0x02353538
	mov fp, sl
_023051C4:
	ldr r0, [r4]
	add r0, r0, sl, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid__0230558C
	cmp r0, #0
	beq _02305304
	ldr sb, [r7, #0xb4]
	add r0, sb, #0x200
	ldrsh r2, [r0, #0xe]
	ldrsh r1, [r0, #0xc]
	add r3, sb, #0x19c
	mov r0, #0x1c
	smlabb r8, r2, r0, r3
	cmp r1, #0
	beq _02305304
	mov r0, r7
	ldr r1, [r8, #0x10]
	ldr r2, [r8, #0x14]
	bl ov29_022E1A90
	ldrb r0, [sb, #7]
	cmp r0, #0
	beq _02305258
	ldr r0, [r4]
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xdc]
	cmp r1, #0
	blt _02305258
	ldr r1, [r7, #0xc]
	mov r1, r1, asr #8
	strh r1, [r0, #0xdc]
	ldr r1, [r7, #0x10]
	ldr r0, [r4]
	mov r1, r1, asr #8
	add r0, r0, #0x100
	strh r1, [r0, #0xde]
_02305258:
	ldrsh r0, [r8, #0x18]
	sub r0, r0, #1
	strh r0, [r8, #0x18]
	ldrsh r0, [r8, #0x18]
	cmp r0, #0
	bne _02305304
	add r2, sb, #0x200
	ldrsh r0, [r2, #0xe]
	add r0, r0, #1
	strh r0, [r2, #0xe]
	ldrsh r1, [r2, #0xe]
	ldrsh r0, [r2, #0xc]
	cmp r1, r0
	streqh fp, [r2, #0xc]
	beq _02305304
	mov r0, #0x1c
	smlabb r0, r1, r0, sb
	ldr r3, [r0, #0x1a0]
	mov r1, #0x18
	mul r1, r3, r1
	add r1, r1, #0xc
	mov r1, r1, lsl #8
	str r1, [sp, #4]
	ldrsh r3, [r2, #0xe]
	mov r2, #0x1c
	mov r0, r7
	smlabb r2, r3, r2, sb
	ldr r3, [r2, #0x1a4]
	mov r2, #0x18
	mul r2, r3, r2
	add r2, r2, #0x10
	mov r2, r2, lsl #8
	add r1, sp, #4
	str r2, [sp, #8]
	bl ov29_022E1A40
	add r2, sb, #0x200
	ldrsh r3, [r2, #0xe]
	mov r2, #0x1c
	mov r0, r7
	smlabb r2, r3, r2, sb
	ldr r2, [r2, #0x1a8]
	mov r1, #0
	bl ov29_023049D4
_02305304:
	add sl, sl, #1
	cmp sl, #0x14
	blt _023051C4
	add r5, r5, #1
_02305314:
	ldr r1, _02305584 ; =0x0237C9CC
	mov r0, #0x18
	ldr r1, [r1]
	bl DivideInt
	cmp r5, r0
	blt _023051B0
_0230532C:
	mov r7, #0
	ldr r8, _02305588 ; =0x02353538
	mov r4, r7
_02305338:
	ldr r0, [r8]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb78]
	mov r0, r5
	bl EntityIsValid__0230558C
	cmp r0, #0
	beq _0230537C
	ldr r1, [r5, #0xb4]
	add r0, r1, #0x200
	strh r4, [r0, #0xc]
	ldrh r0, [r1]
	tst r0, #0x2000
	beq _0230537C
	mov r0, r5
	mov r1, r4
	bl ov29_022E1A40
_0230537C:
	add r7, r7, #1
	cmp r7, #0x14
	blt _02305338
	bl ov29_02307DD0
	mov r8, #0
_02305390:
	mov sl, #0
	mov fp, sl
	mov r7, #1
	ldr r5, _02305588 ; =0x02353538
	ldr r4, _02305580 ; =0x0237C9C1
	b _02305530
_023053A8:
	ldr r0, [r5]
	add r0, r0, sl, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb78]
	mov r0, sb
	bl EntityIsValid__0230558C
	cmp r0, #0
	beq _0230552C
	bl IsFloorOver
	cmp r0, #0
	bne _02305538
	ldr r0, [sb, #0xb4]
	cmp r8, #0
	ldrb r1, [r0, #7]
	bne _023053F0
	cmp r1, #0
	beq _0230552C
	b _023053F8
_023053F0:
	cmp r1, #0
	bne _0230552C
_023053F8:
	ldrh r3, [sb, #4]
	ldrh r2, [sb, #6]
	ldrh r1, [r0]
	strh r3, [sp]
	strh r2, [sp, #2]
	tst r1, #0x2000
	bne _02305430
	mov r0, sb
	bl ov29_0234AD10
	mov r0, sb
	bl EntityIsValid__0230558C
	cmp r0, #0
	beq _0230552C
	b _023054E4
_02305430:
	bic r1, r1, #0x2000
	strh r1, [r0]
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _0230545C
	add r0, sb, #4
	bl ov29_02337A3C
	mov r0, fp
	bl ov29_022F62CC
	bl ov29_022F3634
	b _0230547C
_0230545C:
	mov r0, sb
	bl ov29_0234AD10
	mov r0, sb
	bl EntityIsValid__0230558C
	cmp r0, #0
	beq _0230552C
	mov r0, sb
	bl ov29_02305694
_0230547C:
	mov r0, sb
	bl EntityIsValid__0230558C
	cmp r0, #0
	beq _0230552C
	bl IsFloorOver
	cmp r0, #0
	bne _02305538
	mov r0, #0
	bl TryForcedLoss
	mov r0, sb
	bl ov29_0230FC24
	mov r0, sb
	bl EntityIsValid__0230558C
	cmp r0, #0
	beq _0230552C
	bl IsFloorOver
	cmp r0, #0
	bne _02305538
	mov r0, sb
	bl EnemyEvolution
	bl ov29_02346888
	ldr r1, [r5]
	mov r0, sb
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02305814
_023054E4:
	mov r0, sb
	bl EntityIsValid__0230558C
	cmp r0, #0
	beq _0230552C
	bl IsFloorOver
	cmp r0, #0
	bne _02305538
	ldrsh r1, [sp]
	ldrsh r0, [sb, #4]
	cmp r1, r0
	ldreqsh r1, [sp, #2]
	ldreqsh r0, [sb, #6]
	cmpeq r1, r0
	mov r0, sb
	strneb r7, [r4]
	bl ov29_022F9C74
	mov r0, sb
	bl ov29_02321104
_0230552C:
	add sl, sl, #1
_02305530:
	cmp sl, #0x14
	blt _023053A8
_02305538:
	add r8, r8, #1
	cmp r8, #2
	blt _02305390
	bl ov29_022EF9C8
	bl IsFloorOver
	cmp r0, #0
	ldrne r1, _02305588 ; =0x02353538
	movne r0, #1
	ldrne r1, [r1]
	strne r6, [r1, #0xc4]
	bne _02305578
	bl ov29_022EF9BC
	ldr r1, _02305588 ; =0x02353538
	mov r0, #1
	ldr r1, [r1]
	str r6, [r1, #0xc4]
_02305578:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02305580: .word 0x0237C9C1
_02305584: .word 0x0237C9CC
_02305588: .word 0x02353538
	arm_func_end DisplayActions

	arm_func_start EntityIsValid__0230558C
EntityIsValid__0230558C: ; 0x0230558C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__0230558C

	arm_func_start ov29_023055B0
ov29_023055B0: ; 0x023055B0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, #0
	mov r5, #1
	ldr r4, _02305690 ; =0x02353538
	b _02305684
_023055C4:
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid__0230558C
	cmp r0, #0
	beq _02305680
	ldr r8, [r7, #0xb4]
	ldrb r0, [r8, #7]
	cmp r0, #0
	bne _02305680
	mov r0, r8
	bl ov29_022FBE04
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r8, #0x100
	ldrsh r1, [r0, #0x7e]
	cmp r1, #0
	ldreqsh r0, [r0, #0x80]
	cmpeq r0, #0
	beq _02305680
	ldrsh r0, [r7, #4]
	cmp r1, r0
	addeq r0, r8, #0x100
	ldreqsh r1, [r0, #0x80]
	ldreqsh r0, [r7, #6]
	cmpeq r1, r0
	beq _02305680
	mov r0, r7
	mov r1, r5
	bl ov29_02300818
	cmp r0, #0
	bne _02305680
	add r1, r8, #0x7e
	add r0, r7, #4
	add r1, r1, #0x100
	bl GetDirectionTowardsPosition
	mov sb, r0
	and r1, sb, #7
	mov r0, r7
	strb r1, [r8, #0x4c]
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	mov r2, sb
	bl ov29_023049A8
_02305680:
	add r6, r6, #1
_02305684:
	cmp r6, #0x14
	blt _023055C4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02305690: .word 0x02353538
	arm_func_end ov29_023055B0

	arm_func_start ov29_02305694
ov29_02305694: ; 0x02305694
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r8, [sb, #0xb4]
	bl EntityIsValid__0230558C
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, sb
	bl GetTileAtEntity
	mov r4, r0
	mov r0, sb
	mov r1, #0xd
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrneb r0, [r8, #0xef]
	cmpne r0, #3
	beq _02305708
	mov r0, sb
	mov r1, #0x6f
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	bne _023056F8
	mov r0, sb
	mov r1, #0x10
	bl HasHeldItem
_023056F8:
	cmp r0, #0
	bne _02305708
	add r0, sb, #4
	bl ov29_02337D68
_02305708:
	ldr r4, [r4, #0x10]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r4]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02305724: ; jump table
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc} ; case 0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc} ; case 1
	b _02305740 ; case 2
	b _02305808 ; case 3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc} ; case 4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc} ; case 5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc} ; case 6
_02305740:
	mov r0, r4
	bl ov29_022E1608
	ldrb r1, [r8, #6]
	mov r6, #0
	mov r5, r0
	mov r7, r6
	cmp r1, #0
	bne _02305790
	mov r0, sb
	mov r1, #0x13
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _02305790
	ldrb r0, [r4, #0x20]
	cmp r0, #0
	bne _02305790
	mov r0, #1
	strb r0, [r4, #0x20]
	bl ov29_02336F4C
	mov r7, #1
_02305790:
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _023057B8
	ldrb r0, [r4, #0x20]
	cmp r0, #0
	beq _023057E0
	ldrb r0, [r8, #6]
	cmp r0, #0
	moveq r6, #1
	b _023057E0
_023057B8:
	cmp r0, #1
	bne _023057D0
	ldrb r0, [r8, #6]
	cmp r0, #0
	movne r6, #1
	b _023057E0
_023057D0:
	cmp r0, #2
	ldreqb r0, [r8, #6]
	cmpeq r0, #0
	moveq r6, #1
_023057E0:
	cmp r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r7, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, sb
	add r1, sb, #4
	mov r2, #0
	mov r3, #1
	bl ov29_022EDFA0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02305808:
	mov r0, sb
	bl ov29_0230F164
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_02305694

	arm_func_start ov29_02305814
ov29_02305814: ; 0x02305814
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl EntityIsValid__0230558C
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl IsFloorOver
	cmp r0, #0
	ldreq r0, _023058BC ; =0x02353538
	ldreq r0, [r0]
	ldreqb r0, [r0, #0x793]
	cmpeq r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl GetTileAtEntity
	ldrh r0, [r0]
	tst r0, #0x40
	ldmeqia sp!, {r3, r4, r5, pc}
	bl GetLeader
	ldr r1, _023058C0 ; =0x00000C82
	bl LogMessageByIdWithPopupCheckUser
	ldr r1, _023058BC ; =0x02353538
	mov r0, r5
	ldr r2, [r1]
	mov r3, #1
	mov r1, r4
	strb r3, [r2, #0x794]
	bl ov29_02307F4C
	mov r0, #0
	bl ov29_022E3A58
	add r0, r5, #4
	bl ov29_022E2CA0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0x78
	mov r1, #0x39
	bl ov29_022EA370
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_023058BC: .word 0x02353538
_023058C0: .word 0x00000C82
	arm_func_end ov29_02305814

	arm_func_start ov29_023058C4
ov29_023058C4: ; 0x023058C4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, #0
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov r8, r2
	mov r7, r3
	mov r5, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb
	mov r1, r4
	ldr r6, [sb, #0xb4]
	bl ov29_02300634
	cmp r0, #0
	beq _02305AD8
	mov r0, sb
	mov r4, #1
	bl ov29_023004B0
	cmp r0, #0
	beq _0230593C
	mov r2, r5
	mov fp, r4
	mov r0, sl
	mov r1, sb
	mov r3, r2
	str fp, [sp]
	bl ov29_02305FDC
_0230593C:
	mov r0, sb
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb
	bl ov29_023004E4
	cmp r0, #0
	beq _0230596C
	mov r0, sl
	mov r1, sb
	bl ov29_023061A8
_0230596C:
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	mov r0, sb
	beq _0230599C
	bl ov29_02300500
	cmp r0, #0
	beq _023059C0
	mov r0, sl
	mov r1, sb
	mov r2, #1
	bl EndFrozenClassStatus
	b _023059C0
_0230599C:
	bl ov29_02300500
	cmp r0, #0
	ldrneb r0, [r6, #0xc4]
	cmpne r0, #3
	beq _023059C0
	mov r0, sl
	mov r1, sb
	mov r2, #1
	bl EndFrozenClassStatus
_023059C0:
	mov r0, sb
	bl ov29_02300520
	cmp r0, #0
	beq _023059DC
	mov r0, sl
	mov r1, sb
	bl EndCringeClassStatus
_023059DC:
	mov r0, sb
	bl ov29_0230053C
	cmp r0, #0
	beq _02305A00
	mov r0, sl
	mov r1, sb
	mov r2, #0
	mov r3, #1
	bl ov29_02306728
_02305A00:
	mov r0, sb
	bl ov29_02300588
	cmp r0, #0
	beq _02305A1C
	mov r0, sl
	mov r1, sb
	bl ov29_023068C4
_02305A1C:
	mov r0, sb
	bl ov29_023005A4
	cmp r0, #0
	beq _02305A38
	mov r0, sl
	mov r1, sb
	bl ov29_02306950
_02305A38:
	mov r0, sb
	mov r1, #0
	bl ov29_023005C0
	cmp r0, #0
	beq _02305A58
	mov r0, sl
	mov r1, sb
	bl ov29_02306B28
_02305A58:
	mov r0, sb
	bl ov29_023005FC
	cmp r0, #0
	beq _02305A74
	mov r0, sl
	mov r1, sb
	bl ov29_02306BF8
_02305A74:
	mov r0, sb
	bl ov29_02300618
	cmp r0, #0
	beq _02305A90
	mov r0, sl
	mov r1, sb
	bl ov29_02306C64
_02305A90:
	ldrb r0, [r6, #0x106]
	cmp r0, #0
	beq _02305AB4
	ldr r2, _02305BF0 ; =0x00000C83
	mov r3, #0
	mov r0, sl
	mov r1, sb
	strb r3, [r6, #0x106]
	bl LogMessageByIdWithPopupCheckUserTarget
_02305AB4:
	ldrb r0, [r6, #0xfe]
	cmp r0, #0
	beq _02305AD8
	ldr r2, _02305BF4 ; =0x00000C84
	mov r3, #0
	mov r0, sl
	mov r1, sb
	strb r3, [r6, #0xfe]
	bl LogMessageByIdWithPopupCheckUserTarget
_02305AD8:
	mov r0, sb
	bl CalcSpeedStageWrapper
	mov r2, #0
	mov fp, r0
	mov r1, r2
_02305AEC:
	add r0, r6, r2
	add r2, r2, #1
	strb r1, [r0, #0x119]
	cmp r2, #5
	blt _02305AEC
	mov r0, sb
	bl CalcSpeedStageWrapper
	cmp fp, r0
	beq _02305B40
	mov r0, #0
	mov r1, sb
	mov r2, r0
	mov r4, #1
	bl SubstitutePlaceholderStringTags
	ldr r1, [r6, #0x110]
	ldr r0, _02305BF8 ; =0x02353318
	mov r1, r1, lsl #1
	ldrh r2, [r0, r1]
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02305B40:
	mov fp, #0
	mov r1, #1
	add r2, r6, #0x124
	mov r0, fp
	mov ip, r1
_02305B54:
	ldrb r6, [r2, fp, lsl #3]
	add r3, r2, fp, lsl #3
	tst r6, #1
	movne r6, r1
	moveq r6, r0
	tst r6, #0xff
	beq _02305B88
	ldrh r6, [r3, #2]
	tst r6, #1
	bicne r6, r6, #1
	movne r4, ip
	movne r5, ip
	strneh r6, [r3, #2]
_02305B88:
	add fp, fp, #1
	cmp fp, #4
	blt _02305B54
	cmp r4, #0
	beq _02305BC8
	cmp r8, #0
	beq _02305BAC
	mov r0, sb
	bl ov29_022E543C
_02305BAC:
	cmp r5, #0
	beq _02305BE0
	ldr r2, _02305BFC ; =0x00000C85
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02305BE0
_02305BC8:
	cmp r7, #0
	bne _02305BE0
	ldr r2, _02305C00 ; =0x00000C86
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02305BE0:
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02305BF0: .word 0x00000C83
_02305BF4: .word 0x00000C84
_02305BF8: .word 0x02353318
_02305BFC: .word 0x00000C85
_02305C00: .word 0x00000C86
	arm_func_end ov29_023058C4

	arm_func_start EntityIsValid__02305C04
EntityIsValid__02305C04: ; 0x02305C04
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__02305C04

	arm_func_start ov29_02305C28
ov29_02305C28: ; 0x02305C28
	stmdb sp!, {r3, lr}
	mov ip, #0
	str ip, [sp]
	bl ov29_023058C4
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02305C28

	arm_func_start ov29_02305C3C
ov29_02305C3C: ; 0x02305C3C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xb8
	mov sb, r0
	mov r8, r1
	bl EntityIsValid__02305C04
	cmp r0, #0
	beq _02305F4C
	mov r0, r8
	bl EntityIsValid__02305C04
	cmp r0, #0
	beq _02305F4C
	mov r5, #0
	mov r0, sb
	mov r1, r5
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	bl ov29_02300634
	cmp r0, #0
	beq _02305D28
	mov r0, sb
	mov r1, r8
	bl ov29_02306DCC
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_02306F00
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_02307078
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_02307198
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_0230737C
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_023076C0
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_023077FC
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_023078EC
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_02307A2C
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_02307B0C
	orr r5, r5, r0
_02305D28:
	ldrb r0, [r6, #0x106]
	cmp r0, #0
	beq _02305D68
	mov r0, sb
	mov r1, r8
	mov r2, #1
	bl ov29_0231662C
	cmp r0, #0
	ldrneb r1, [r6, #0x106]
	orrne r0, r5, #0x11
	andne r5, r0, #0xff
	orreq r0, r5, #1
	andeq r5, r0, #0xff
	strneb r1, [r7, #0x106]
	mov r0, #0
	strb r0, [r6, #0x106]
_02305D68:
	ldrb r0, [r6, #0xfe]
	cmp r0, #0
	beq _02305DAC
	mov r0, sb
	mov r1, r8
	mov r2, #0
	mov r3, #1
	bl ov29_023174C8
	cmp r0, #0
	ldrneb r1, [r6, #0xfe]
	orrne r0, r5, #0x11
	andne r5, r0, #0xff
	orreq r0, r5, #1
	andeq r5, r0, #0xff
	strneb r1, [r7, #0xfe]
	mov r0, #0
	strb r0, [r6, #0xfe]
_02305DAC:
	mov r0, sb
	mov r1, r8
	mov r2, #0
	bl ov29_02301940
	cmp r0, #0
	bne _02305E08
	mov r0, sb
	mov r1, r8
	mov r2, #0
	bl ov29_02302430
	cmp r0, #0
	bne _02305E08
	mov r2, #0
_02305DE0:
	add r0, r6, r2
	ldrb r0, [r0, #0x119]
	add r1, r7, r2
	add r2, r2, #1
	strb r0, [r1, #0x119]
	cmp r0, #0
	orrne r0, r5, #0x11
	andne r5, r0, #0xff
	cmp r2, #5
	blt _02305DE0
_02305E08:
	mov r0, sb
	bl CalcSpeedStageWrapper
	mov r2, #0
	mov r4, r0
	mov r1, r2
_02305E1C:
	add r0, r6, r2
	add r2, r2, #1
	strb r1, [r0, #0x119]
	cmp r2, #5
	blt _02305E1C
	mov r0, sb
	bl CalcSpeedStageWrapper
	cmp r4, r0
	orrne r0, r5, #1
	andne r5, r0, #0xff
	mov r0, #0
	add r6, r6, #0x124
	mov r3, r0
	mov r4, #1
_02305E54:
	ldrb r1, [r6, r0, lsl #3]
	add ip, r6, r0, lsl #3
	tst r1, #1
	movne r1, r4
	moveq r1, r3
	tst r1, #0xff
	beq _02305E88
	ldrh r1, [ip, #2]
	tst r1, #1
	orrne r2, r5, #1
	bicne r1, r1, #1
	strneh r1, [ip, #2]
	andne r5, r2, #0xff
_02305E88:
	add r0, r0, #1
	cmp r0, #4
	blt _02305E54
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r7, #0xd8]
	mov r2, #0
	cmp r0, #2
	mov r0, #1
	bne _02305ED0
	mov r1, r8
	strb r2, [r7, #0xd8]
	bl SubstitutePlaceholderStringTags
	mov r0, #2
	strb r0, [r7, #0xd8]
	b _02305ED8
_02305ED0:
	mov r1, r8
	bl SubstitutePlaceholderStringTags
_02305ED8:
	cmp r5, #0
	beq _02305EF4
	cmp r5, #1
	beq _02305F08
	cmp r5, #0x11
	beq _02305F24
	b _02305F3C
_02305EF4:
	ldr r2, _02305F54 ; =0x00000CCC
	add r1, sp, #0
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02305F3C
_02305F08:
	mov r0, sb
	bl ov29_022E543C
	ldr r2, _02305F58 ; =0x00000CCB
	add r1, sp, #0
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02305F3C
_02305F24:
	mov r0, sb
	bl ov29_022E543C
	ldr r2, _02305F5C ; =0x00000CCA
	add r1, sp, #0
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02305F3C:
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
_02305F4C:
	add sp, sp, #0xb8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02305F54: .word 0x00000CCC
_02305F58: .word 0x00000CCB
_02305F5C: .word 0x00000CCA
	arm_func_end ov29_02305C3C

	arm_func_start ov29_02305F60
ov29_02305F60: ; 0x02305F60
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r0, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r5, [r4, #0xb4]
	mov r1, #0
	mov r0, r5
	bl ov29_022FDDC0
	mov ip, #0
	strb ip, [r5, #0x106]
	strb ip, [r5, #0xfe]
	add r3, r5, #0x124
	mov r1, ip
	mov r2, #1
_02305FA0:
	ldrb r0, [r3, ip, lsl #3]
	add lr, r3, ip, lsl #3
	add ip, ip, #1
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	ldrneh r0, [lr, #2]
	bicne r0, r0, #1
	strneh r0, [lr, #2]
	cmp ip, #4
	blt _02305FA0
	mov r0, r4
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_02305F60

	arm_func_start ov29_02305FDC
ov29_02305FDC: ; 0x02305FDC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov sb, r0
	mov r0, r8
	mov r7, r2
	mov r6, r3
	mov r4, #0
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	ldr r5, [r8, #0xb4]
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r5, #0xbd]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02306164
_02306028: ; jump table
	b _02306164 ; case 0
	b _02306044 ; case 1
	b _0230605C ; case 2
	b _02306070 ; case 3
	b _02306118 ; case 4
	b _023060A8 ; case 5
	b _02306164 ; case 6
_02306044:
	ldr r2, _0230618C ; =0x00000C8D
	mov r0, sb
	mov r1, r8
	mov r4, #1
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306164
_0230605C:
	ldr r2, _02306190 ; =0x00000C8E
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306164
_02306070:
	mov r4, #1
	mov r0, sb
	mov r1, r8
	rsb r2, r4, #0xc90
	bl LogMessageByIdWithPopupCheckUserTarget
	cmp r6, #0
	beq _02306164
	ldr r0, _02306194 ; =0x022C45A8
	ldr r3, _02306198 ; =0x0000024E
	ldrsh r1, [r0]
	mov r0, r8
	mov r2, #8
	bl ov29_0230D11C
	b _02306164
_023060A8:
	mov r0, sb
	mov r1, r8
	mov r2, #0xc90
	mov r4, #1
	bl LogMessageByIdWithPopupCheckUserTarget
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	beq _023060E8
	ldr r0, _0230619C ; =0x022C45A0
	mov r6, r4
	ldrsh r2, [r0]
	mov r0, sb
	mov r1, r8
	mov r3, #0
	str r6, [sp]
	bl TryIncreaseHp
_023060E8:
	ldrb r0, [sp, #0x20]
	mov r6, #0
	strb r6, [r5, #0xbd]
	cmp r0, #0
	beq _02306164
	mov r2, #1
	mov r0, sb
	mov r1, r8
	mov r3, r2
	str r6, [sp]
	bl ov29_023058C4
	b _02306164
_02306118:
	cmp r7, #0
	beq _02306154
	ldr r1, _023061A0 ; =0x022C4868
	mov r3, r4
	mov r0, r8
	mov r2, #1
	strb r3, [r5, #0xbd]
	bl CalcStatusDuration
	mov r2, r0
	mov r0, sb
	mov r1, r8
	add r2, r2, #1
	mov r3, #1
	bl TryInflictSleepStatus
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02306154:
	ldr r2, _023061A4 ; =0x00000C91
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
_02306164:
	mov r1, #0
	mov r0, r8
	strb r1, [r5, #0xbd]
	bl UpdateStatusIconFlags
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r8
	mov r1, #8
	bl ov29_02304A48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0230618C: .word 0x00000C8D
_02306190: .word 0x00000C8E
_02306194: .word 0x022C45A8
_02306198: .word 0x0000024E
_0230619C: .word 0x022C45A0
_023061A0: .word 0x022C4868
_023061A4: .word 0x00000C91
	arm_func_end ov29_02305FDC

	arm_func_start ov29_023061A8
ov29_023061A8: ; 0x023061A8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	arm_func_end ov29_023061A8

	arm_func_start ov29_023061CC
ov29_023061CC: ; 0x023061CC
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xbf]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	arm_func_end ov29_023061CC

	arm_func_start caseD_6
caseD_6: ; 0x023061E4
	b _02306238
_023061E8: ; jump table
	b _02306238 ; case 0
	b _02306228 ; case 1
	b _02306200 ; case 2
	b _02306200 ; case 3
	b _02306214 ; case 4
	b _02306238 ; case 5
_02306200:
	ldr r2, _0230624C ; =0x00000C9E
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306238
_02306214:
	ldr r2, _02306250 ; =0x00000C9C
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306238
_02306228:
	ldr r2, _02306254 ; =0x00000C9D
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	arm_func_end caseD_6
_02306238:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xbf]
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0230624C: .word 0x00000C9E
_02306250: .word 0x00000C9C
_02306254: .word 0x00000C9D

	arm_func_start EndFrozenClassStatus
EndFrozenClassStatus: ; 0x02306258
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r4, #0
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	ldr r5, [r7, #0xb4]
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r5, #0xc4]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02306398
_023062A0: ; jump table
	b _02306398 ; case 0
	b _023062C4 ; case 1
	b _02306300 ; case 2
	b _02306338 ; case 3
	b _0230635C ; case 4
	b _0230631C ; case 5
	b _02306380 ; case 6
	b _023062E4 ; case 7
	b _02306398 ; case 8
_023062C4:
	cmp r6, #0
	beq _023062DC
	ldr r2, _023063BC ; =0x00000C9F
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_023062DC:
	mov r4, #1
	b _02306398
_023062E4:
	cmp r6, #0
	beq _02306398
	ldr r2, _023063C0 ; =0x00000C99
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306398
_02306300:
	cmp r6, #0
	beq _02306398
	ldr r2, _023063C4 ; =0x00000C9A
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306398
_0230631C:
	cmp r6, #0
	beq _02306398
	ldr r2, _023063C8 ; =0x00000C9B
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306398
_02306338:
	cmp r6, #0
	beq _02306350
	ldr r2, _023063CC ; =0x00000C98
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02306350:
	ldr r0, [r5, #0xb4]
	bl FreeOtherWrappedMonsters
	b _02306398
_0230635C:
	cmp r6, #0
	beq _02306374
	ldr r2, _023063CC ; =0x00000C98
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02306374:
	ldr r0, [r5, #0xb4]
	bl FreeOtherWrappedMonsters
	b _02306398
_02306380:
	cmp r6, #0
	beq _02306398
	ldr r2, _023063D0 ; =0x00000CBB
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02306398:
	mov r1, #0
	mov r0, r7
	strb r1, [r5, #0xc4]
	bl UpdateStatusIconFlags
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl ov29_022E6798
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_023063BC: .word 0x00000C9F
_023063C0: .word 0x00000C99
_023063C4: .word 0x00000C9A
_023063C8: .word 0x00000C9B
_023063CC: .word 0x00000C98
_023063D0: .word 0x00000CBB
	arm_func_end EndFrozenClassStatus

	arm_func_start EndCringeClassStatus
EndCringeClassStatus: ; 0x023063D4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd0]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _023064C0
_02306414: ; jump table
	b _023064C0 ; case 0
	b _023064B0 ; case 1
	b _02306438 ; case 2
	b _02306474 ; case 3
	b _0230644C ; case 4
	b _02306460 ; case 5
	b _0230649C ; case 6
	b _02306488 ; case 7
	b _023064C0 ; case 8
_02306438:
	ldr r2, _023064DC ; =0x00000C97
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023064C0
_0230644C:
	ldr r2, _023064E0 ; =0x00000CA4
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023064C0
_02306460:
	ldr r2, _023064E4 ; =0x00000CA7
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023064C0
_02306474:
	ldr r2, _023064E8 ; =0x00000CBD
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023064C0
_02306488:
	ldr r2, _023064EC ; =0x00000CB7
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023064C0
_0230649C:
	mov r0, r6
	mov r1, r5
	mov r2, #0xcb0
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023064C0
_023064B0:
	ldr r2, _023064F0 ; =0x00000CBC
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023064C0:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xd0]
	bl UpdateStatusIconFlags
	mov r0, r5
	bl CalcSpeedStageWrapper
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_023064DC: .word 0x00000C97
_023064E0: .word 0x00000CA4
_023064E4: .word 0x00000CA7
_023064E8: .word 0x00000CBD
_023064EC: .word 0x00000CB7
_023064F0: .word 0x00000CBC
	arm_func_end EndCringeClassStatus

	arm_func_start ov29_023064F4
ov29_023064F4: ; 0x023064F4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, #0x12
	addls pc, pc, r0, lsl #2
	b _02306688
_02306530: ; jump table
	b _02306688 ; case 0
	b _0230657C ; case 1
	b _0230658C ; case 2
	b _0230659C ; case 3
	b _023065AC ; case 4
	b _023065BC ; case 5
	b _023065CC ; case 6
	b _023065DC ; case 7
	b _023065EC ; case 8
	b _023065FC ; case 9
	b _023065AC ; case 10
	b _0230660C ; case 11
	b _0230661C ; case 12
	b _0230663C ; case 13
	b _0230664C ; case 14
	b _0230665C ; case 15
	b _0230666C ; case 16
	b _0230667C ; case 17
	b _02306688 ; case 18
_0230657C:
	ldr r1, _0230669C ; =0x00000C87
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230658C:
	ldr r1, _023066A0 ; =0x00000C8A
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230659C:
	ldr r1, _023066A4 ; =0x00000C88
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_023065AC:
	ldr r1, _023066A8 ; =0x00000C89
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_023065BC:
	ldr r1, _023066AC ; =0x00000C8B
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_023065CC:
	ldr r1, _023066B0 ; =0x00000C8C
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_023065DC:
	ldr r1, _023066B4 ; =0x00000CA6
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_023065EC:
	ldr r1, _023066B8 ; =0x00000CAE
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_023065FC:
	ldr r1, _023066BC ; =0x00000CB1
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230660C:
	ldr r1, _023066C0 ; =0x00000CB2
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230661C:
	ldr r1, _023066C4 ; =0x00000CB3
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, r5
	bl ov29_022E65F4
	mov r0, r5
	bl ov29_02307CE0
	b _02306688
_0230663C:
	ldr r1, _023066C8 ; =0x00000CB4
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230664C:
	ldr r1, _023066CC ; =0x00000CB5
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230665C:
	ldr r1, _023066D0 ; =0x00000CBE
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230666C:
	mov r0, r5
	mov r1, #0xcc0
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230667C:
	ldr r1, _023066D4 ; =0x00000CC1
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_02306688:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xd5]
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230669C: .word 0x00000C87
_023066A0: .word 0x00000C8A
_023066A4: .word 0x00000C88
_023066A8: .word 0x00000C89
_023066AC: .word 0x00000C8B
_023066B0: .word 0x00000C8C
_023066B4: .word 0x00000CA6
_023066B8: .word 0x00000CAE
_023066BC: .word 0x00000CB1
_023066C0: .word 0x00000CB2
_023066C4: .word 0x00000CB3
_023066C8: .word 0x00000CB4
_023066CC: .word 0x00000CB5
_023066D0: .word 0x00000CBE
_023066D4: .word 0x00000CC1
	arm_func_end ov29_023064F4

	arm_func_start ov29_023066D8
ov29_023066D8: ; 0x023066D8
	stmdb sp!, {r4, lr}
	mov r4, r1
	mov r0, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #3
	ldmneia sp!, {r4, pc}
	ldr r1, _02306724 ; =0x02353538
	mov r2, #0
	ldr r0, [r1]
	add r0, r0, #0x19000
	str r2, [r0, #0x904]
	ldr r0, [r1]
	add r0, r0, #0x19000
	str r2, [r0, #0x90c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02306724: .word 0x02353538
	arm_func_end ov29_023066D8

	arm_func_start ov29_02306728
ov29_02306728: ; 0x02306728
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #0
	ldr r4, [r7, #0xb4]
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd8]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02306894
_02306770: ; jump table
	b _02306894 ; case 0
	b _02306790 ; case 1
	b _023067D4 ; case 2
	b _023067AC ; case 3
	b _02306830 ; case 4
	b _02306868 ; case 5
	b _02306880 ; case 6
	b _02306894 ; case 7
_02306790:
	cmp r6, #1
	cmpne r5, #0
	beq _02306894
	ldr r1, _023068A8 ; =0x00000C95
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _02306894
_023067AC:
	cmp r6, #3
	cmpne r5, #0
	beq _023067C4
	ldr r1, _023068AC ; =0x00000C96
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
_023067C4:
	mov r0, r8
	mov r1, r7
	bl ov29_023066D8
	b _02306894
_023067D4:
	mov r1, #0
	mov r0, r7
	strb r1, [r4, #0xd8]
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	bl ov29_02304830
	ldr r1, _023068B0 ; =0x02353538
	mov r0, #0
	ldr r1, [r1]
	cmp r6, #2
	add r1, r1, #0x3000
	strb r0, [r1, #0xe38]
	beq _02306894
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r5, #0
	beq _02306894
	ldr r1, _023068B4 ; =0x00000CA5
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _02306894
_02306830:
	mov r1, #0
	mov r0, r7
	strb r1, [r4, #0xd8]
	bl ov29_022FB984
	cmp r5, #0
	beq _02306854
	ldr r1, _023068B8 ; =0x00000CBF
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
_02306854:
	ldr r0, _023068B0 ; =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0xe]
	b _02306894
_02306868:
	cmp r5, #0
	beq _02306894
	ldr r1, _023068BC ; =0x00000CC2
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _02306894
_02306880:
	cmp r5, #0
	beq _02306894
	ldr r1, _023068C0 ; =0x00000CC3
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
_02306894:
	mov r1, #0
	mov r0, r7
	strb r1, [r4, #0xd8]
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_023068A8: .word 0x00000C95
_023068AC: .word 0x00000C96
_023068B0: .word 0x02353538
_023068B4: .word 0x00000CA5
_023068B8: .word 0x00000CBF
_023068BC: .word 0x00000CC2
_023068C0: .word 0x00000CC3
	arm_func_end ov29_02306728

	arm_func_start ov29_023068C4
ov29_023068C4: ; 0x023068C4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xe0]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0230692C
_02306900: ; jump table
	b _0230692C ; case 0
	b _02306910 ; case 1
	b _02306920 ; case 2
	b _0230692C ; case 3
_02306910:
	ldr r1, _02306948 ; =0x00000C94
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _0230692C
_02306920:
	ldr r1, _0230694C ; =0x00000CAF
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_0230692C:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xe0]
	mov r1, #0xff
	strb r1, [r4, #0xe8]
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02306948: .word 0x00000C94
_0230694C: .word 0x00000CAF
	arm_func_end ov29_023068C4

	arm_func_start ov29_02306950
ov29_02306950: ; 0x02306950
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xec]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _023069E0
_0230698C: ; jump table
	b _023069E0 ; case 0
	b _023069A4 ; case 1
	b _023069B4 ; case 2
	b _023069C4 ; case 3
	b _023069D4 ; case 4
	b _023069E0 ; case 5
_023069A4:
	mov r0, r5
	mov r1, #0xca0
	bl LogMessageByIdWithPopupCheckUser
	b _023069E0
_023069B4:
	ldr r1, _023069F4 ; =0x00000CA1
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _023069E0
_023069C4:
	ldr r1, _023069F8 ; =0x00000CA2
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _023069E0
_023069D4:
	ldr r1, _023069FC ; =0x00000CA3
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_023069E0:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xec]
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_023069F4: .word 0x00000CA1
_023069F8: .word 0x00000CA2
_023069FC: .word 0x00000CA3
	arm_func_end ov29_02306950

	arm_func_start ov29_02306A00
ov29_02306A00: ; 0x02306A00
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r4, #0
	mov r0, r8
	mov r7, r2
	mov r5, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	ldr r6, [r8, #0xb4]
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xef]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02306ADC
_02306A48: ; jump table
	b _02306ADC ; case 0
	b _02306A60 ; case 1
	b _02306A84 ; case 2
	b _02306A74 ; case 3
	b _02306AC4 ; case 4
	b _02306ADC ; case 5
_02306A60:
	ldr r1, _02306B18 ; =0x00000CA8
	mov r0, r8
	mov r4, #1
	bl LogMessageByIdWithPopupCheckUser
	b _02306ADC
_02306A74:
	ldr r1, _02306B1C ; =0x00000CB8
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _02306ADC
_02306A84:
	ldrsh r1, [r6, #2]
	mov r0, r8
	bl ov29_022F9408
	strh r0, [r6, #4]
	ldrsh r0, [r6, #4]
	bl GetSpriteIndex__022F7388
	strh r0, [r8, #0xa8]
	mov r0, r8
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r8
	bl ov29_02304830
	ldr r1, _02306B20 ; =0x00000CB6
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _02306ADC
_02306AC4:
	cmp r7, #0
	bne _02306AD8
	ldr r1, _02306B24 ; =0x00000CAC
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
_02306AD8:
	mov r5, #1
_02306ADC:
	mov r1, #0
	mov r0, r8
	strb r1, [r6, #0xef]
	bl UpdateStatusIconFlags
	cmp r4, #0
	beq _02306AFC
	mov r0, #1
	bl ov29_022F62CC
_02306AFC:
	cmp r7, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl ov29_02321104
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02306B18: .word 0x00000CA8
_02306B1C: .word 0x00000CB8
_02306B20: .word 0x00000CB6
_02306B24: .word 0x00000CAC
	arm_func_end ov29_02306A00

	arm_func_start ov29_02306B28
ov29_02306B28: ; 0x02306B28
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xf1]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02306BB8
_02306B64: ; jump table
	b _02306BB8 ; case 0
	b _02306B7C ; case 1
	b _02306B8C ; case 2
	b _02306B9C ; case 3
	b _02306BAC ; case 4
	b _02306BB8 ; case 5
_02306B7C:
	ldr r1, _02306BE8 ; =0x00000CA9
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306BB8
_02306B8C:
	ldr r1, _02306BEC ; =0x00000CAA
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306BB8
_02306B9C:
	ldr r1, _02306BF0 ; =0x00000CAB
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306BB8
_02306BAC:
	ldr r1, _02306BF4 ; =0x00000CAD
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_02306BB8:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xf1]
	bl UpdateStatusIconFlags
	ldrb r0, [r4, #7]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0x31
	bl AdvanceFrame
	bl ov29_02336F4C
	bl ov29_02339CE8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02306BE8: .word 0x00000CA9
_02306BEC: .word 0x00000CAA
_02306BF0: .word 0x00000CAB
_02306BF4: .word 0x00000CAD
	arm_func_end ov29_02306B28

	arm_func_start ov29_02306BF8
ov29_02306BF8: ; 0x02306BF8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xf3]
	cmp r0, #0
	beq _02306C4C
	cmp r0, #1
	beq _02306C40
	cmp r0, #2
	b _02306C4C
_02306C40:
	ldr r1, _02306C60 ; =0x00000CB9
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_02306C4C:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xf3]
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02306C60: .word 0x00000CB9
	arm_func_end ov29_02306BF8

	arm_func_start ov29_02306C64
ov29_02306C64: ; 0x02306C64
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xf5]
	cmp r0, #0
	beq _02306CB8
	arm_func_end ov29_02306C64

	arm_func_start ov29_02306C9C
ov29_02306C9C: ; 0x02306C9C
	cmp r0, #1
	beq _02306CAC
	cmp r0, #2
	b _02306CB8
_02306CAC:
	ldr r1, _02306CCC ; =0x00000CC4
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_02306CB8:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xf5]
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02306CCC: .word 0x00000CC4
	arm_func_end ov29_02306C9C

	arm_func_start ov29_02306CD0
ov29_02306CD0: ; 0x02306CD0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r0, r6
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r4, #0
	ldr r5, [r6, #0xb4]
	mov r0, r4
	mov r1, r6
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r5, #0xf7]
	cmp r0, #0
	beq _02306D2C
	cmp r0, #1
	beq _02306D1C
	cmp r0, #2
	b _02306D2C
_02306D1C:
	ldr r1, _02306D50 ; =0x00000CC5
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	mov r4, #1
_02306D2C:
	mov r1, #0
	mov r0, r6
	strb r1, [r5, #0xf7]
	bl UpdateStatusIconFlags
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_02321134
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02306D50: .word 0x00000CC5
	arm_func_end ov29_02306CD0

	arm_func_start ov29_02306D54
ov29_02306D54: ; 0x02306D54
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, #0
	ldr r4, _02306DC8 ; =0x02353538
	mov sb, r0
	mov r5, r8
	mov r6, #1
	mov r7, r8
_02306D70:
	ldr r0, [r4]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr r1, [r0, #0xb78]
	cmp r1, #0
	moveq r0, r7
	beq _02306DA0
	ldr r0, [r1]
	cmp r0, #1
	moveq r0, r6
	movne r0, r5
	and r0, r0, #0xff
_02306DA0:
	cmp r0, #0
	beq _02306DB0
	mov r0, sb
	bl ov29_02306CD0
_02306DB0:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #0x14
	blt _02306D70
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02306DC8: .word 0x02353538
	arm_func_end ov29_02306D54

	arm_func_start ov29_02306DCC
ov29_02306DCC: ; 0x02306DCC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r8, r1
	mov r4, #0
	mov sb, r0
	mov r0, r8
	mov sl, r4
	mov r5, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	mov r0, r4
	beq _02306EF8
	mov r1, sb
	mov r2, r0
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xbd]
	cmp r0, #0
	moveq r0, r4
	beq _02306EF8
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02306E9C
_02306E3C: ; jump table
	b _02306E9C ; case 0
	b _02306E58 ; case 1
	b _02306E9C ; case 2
	b _02306E58 ; case 3
	b _02306E58 ; case 4
	b _02306E7C ; case 5
	b _02306E9C ; case 6
_02306E58:
	mov r2, #1
	mov r0, sb
	mov r1, r8
	mov r3, r2
	str r4, [sp]
	bl ov29_02311C28
	mov sl, r0
	mov r4, #1
	b _02306E9C
_02306E7C:
	mov r2, r4
	mov r0, sb
	mov r1, r8
	mov r3, r2
	str r2, [sp]
	bl ov29_02311C28
	mov sl, r0
	mov r4, #1
_02306E9C:
	cmp sl, #0
	beq _02306EBC
	ldrb r1, [r6, #0xbd]
	orr r0, r5, #0x11
	and r5, r0, #0xff
	strb r1, [r7, #0xbd]
	ldrb r0, [r6, #0xbe]
	strb r0, [r7, #0xbe]
_02306EBC:
	cmp r4, #0
	orrne r1, r5, #1
	movne r0, #0
	strneb r0, [r6, #0xbd]
	andne r5, r1, #0xff
	cmp r4, #0
	beq _02306EE4
	mov r0, sb
	mov r1, #0x378
	bl ov29_02304A48
_02306EE4:
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r5
_02306EF8:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02306DCC

	arm_func_start ov29_02306F00
ov29_02306F00: ; 0x02306F00
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov sl, #0
	mov sb, r0
	mov r8, r1
	mov r4, sl
	mov r5, sl
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, sl
	beq _02307070
	mov r0, r8
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, sl
	beq _02307070
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	ldrb r0, [r6, #0xbf]
	cmp r0, #0
	mov r0, sl
	beq _02307070
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, sl
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xbf]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0230701C
_02306F84: ; jump table
	b _0230701C ; case 0
	b _02306FFC ; case 1
	b _02306F9C ; case 2
	b _02306FBC ; case 3
	b _02306FDC ; case 4
	b _0230701C ; case 5
_02306F9C:
	mov r0, sb
	mov r1, r8
	mov r2, sl
	mov r3, #1
	bl TryInflictPoisonedStatus
	mov sl, r0
	mov r4, #1
	b _0230701C
_02306FBC:
	mov r0, sb
	mov r1, r8
	mov r2, sl
	mov r3, #1
	bl TryInflictBadlyPoisonedStatus
	mov sl, r0
	mov r4, #1
	b _0230701C
_02306FDC:
	mov r0, sb
	mov r1, r8
	mov r2, sl
	mov r3, #1
	bl TryInflictParalysisStatus
	mov sl, r0
	mov r4, #1
	b _0230701C
_02306FFC:
	mov r2, sl
	mov r4, #1
	mov r0, sb
	mov r1, r8
	mov r3, r2
	str r4, [sp]
	bl TryInflictBurnStatus
	mov sl, r0
_0230701C:
	cmp sl, #0
	beq _02307048
	add r3, r6, #0xbf
	add r2, r7, #0xbf
	mov r1, #4
_02307030:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _02307030
	orr r0, r5, #0x11
	and r5, r0, #0xff
_02307048:
	cmp r4, #0
	orrne r0, r5, #1
	movne r1, #0
	andne r5, r0, #0xff
	mov r0, sb
	strneb r1, [r6, #0xbf]
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r5
_02307070:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02306F00

	arm_func_start ov29_02307078
ov29_02307078: ; 0x02307078
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sb, r0
	mov r8, r1
	mov sl, r4
	mov r5, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r8
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	ldrb r1, [r6, #0xc4]
	cmp r1, #3
	cmpne r1, #4
	beq _023070E0
	ldrb r0, [r7, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _023070E8
_023070E0:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_023070E8:
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0230714C
_023070F4: ; jump table
	b _0230714C ; case 0
	b _0230714C ; case 1
	b _02307114 ; case 2
	b _0230714C ; case 3
	b _0230714C ; case 4
	b _0230714C ; case 5
	b _0230714C ; case 6
	b _02307130 ; case 7
_02307114:
	mov r0, sb
	mov r1, r8
	mov r2, #1
	bl TryInflictShadowHoldStatus
	mov sl, r0
	mov r4, #1
	b _0230714C
_02307130:
	mov r0, sb
	mov r1, r8
	mov r2, #0x7e
	mov r3, #1
	bl TryInflictConstrictionStatus
	mov sl, r0
	mov r4, #1
_0230714C:
	cmp sl, #0
	beq _0230716C
	add r0, r6, #0xc4
	add r7, r7, #0xc4
	ldmia r0, {r0, r1, r2}
	orr r3, r5, #0x11
	stmia r7, {r0, r1, r2}
	and r5, r3, #0xff
_0230716C:
	cmp r4, #0
	orrne r0, r5, #1
	movne r1, #0
	andne r5, r0, #0xff
	mov r0, sb
	strneb r1, [r6, #0xc4]
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02307078

	arm_func_start ov29_02307198
ov29_02307198: ; 0x02307198
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r4, #0
	mov sb, r0
	mov r8, r1
	mov sl, r4
	mov r5, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, r4
	beq _02307374
	mov r0, r8
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, r4
	beq _02307374
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	ldrb r0, [r6, #0xd0]
	cmp r0, #0
	mov r0, r4
	beq _02307374
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xd0]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0230731C
_0230721C: ; jump table
	b _0230731C ; case 0
	b _02307300 ; case 1
	b _02307240 ; case 2
	b _0230729C ; case 3
	b _02307260 ; case 4
	b _02307280 ; case 5
	b _023072E4 ; case 6
	b _023072C4 ; case 7
	b _0230731C ; case 8
_02307240:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl TryInflictConfusedStatus
	mov sl, r0
	mov r4, #1
	b _0230731C
_02307260:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl TryInflictCoweringStatus
	mov sl, r0
	mov r4, #1
	b _0230731C
_02307280:
	mov r0, sb
	mov r1, r8
	mov r2, #1
	bl ov29_023163A8
	mov sl, r0
	mov r4, #1
	b _0230731C
_0230729C:
	mov r3, r4
	mov r0, sb
	mov r1, r8
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	bl TryInflictPausedStatus
	mov sl, r0
	mov r4, #1
	b _0230731C
_023072C4:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl TryInflictInfatuatedStatus
	mov sl, r0
	mov r4, #1
	b _0230731C
_023072E4:
	mov r0, sb
	mov r1, r8
	mov r2, #1
	bl ov29_02316720
	mov sl, r0
	mov r4, #1
	b _0230731C
_02307300:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl TryInflictCringeStatus
	mov sl, r0
	mov r4, #1
_0230731C:
	cmp sl, #0
	beq _0230733C
	ldrb r1, [r6, #0xd0]
	orr r0, r5, #0x11
	and r5, r0, #0xff
	strb r1, [r7, #0xd0]
	ldrb r0, [r6, #0xd1]
	strb r0, [r7, #0xd1]
_0230733C:
	cmp r4, #0
	movne r0, #0
	orrne r1, r5, #1
	strneb r0, [r6, #0xd0]
	mov r0, sb
	andne r5, r1, #0xff
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, sb
	bl CalcSpeedStageWrapper
	mov r0, r8
	bl CalcSpeedStageWrapper
	mov r0, r5
_02307374:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02307198

	arm_func_start ov29_0230737C
ov29_0230737C: ; 0x0230737C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r4, #0
	mov sb, r0
	mov r8, r1
	mov r5, r4
	mov r6, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, r4
	beq _023076B4
	mov r0, r8
	bl EntityIsValid__02305C04
	cmp r0, #0
	mov r0, r4
	beq _023076B4
	mov r1, sb
	mov r2, r0
	ldr r7, [sb, #0xb4]
	ldr sl, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r7, #0xd8]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0230749C
_023073F0: ; jump table
	b _0230749C ; case 0
	b _02307410 ; case 1
	b _0230741C ; case 2
	b _0230749C ; case 3
	b _02307440 ; case 4
	b _02307460 ; case 5
	b _02307480 ; case 6
	b _0230749C ; case 7
_02307410:
	mov r5, #1
	mov r4, r5
	b _0230749C
_0230741C:
	mov r2, r4
	mov r4, #1
	mov r0, sb
	mov r1, r8
	mov r3, r2
	str r4, [sp]
	bl ov29_02315E24
	mov r5, r0
	b _0230749C
_02307440:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl ov29_0231827C
	mov r5, r0
	mov r4, #1
	b _0230749C
_02307460:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl ov29_023185A8
	mov r5, r0
	mov r4, #1
	b _0230749C
_02307480:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl ov29_0231872C
	mov r5, r0
	mov r4, #1
_0230749C:
	ldrb r0, [r7, #0xd8]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _023076A0
_023074AC: ; jump table
	b _023076A0 ; case 0
	b _023074C8 ; case 1
	b _02307528 ; case 2
	b _023076A0 ; case 3
	b _02307554 ; case 4
	b _023075D4 ; case 5
	b _0230763C ; case 6
_023074C8:
	cmp r5, #0
	beq _02307500
	mov r0, sb
	mov r1, r8
	bl ov29_023066D8
	add r3, r7, #0xd8
	add r2, sl, #0xd8
	mov r1, #5
_023074E8:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _023074E8
	orr r0, r6, #0x11
	and r6, r0, #0xff
_02307500:
	cmp r4, #0
	beq _023076A0
	mov r0, r8
	mov r1, sb
	mov r2, #1
	mov r3, #0
	bl ov29_02306728
	orr r0, r6, #1
	and r6, r0, #0xff
	b _023076A0
_02307528:
	cmp r5, #0
	beq _023076A0
	mov r3, #0
	mov r0, sb
	mov r1, r8
	mov r2, #1
	str r3, [sp]
	bl ov29_02315E24
	orr r0, r6, #0x11
	and r6, r0, #0xff
	b _023076A0
_02307554:
	cmp r5, #0
	beq _023075AC
	mov r0, sb
	mov r1, r8
	bl ov29_023066D8
	add r3, r7, #0xd8
	add r2, sl, #0xd8
	mov r1, #5
_02307574:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _02307574
	ldr r1, _023076BC ; =0x02353538
	mov r0, r8
	ldr r1, [r1]
	mov r2, #1
	strb r2, [r1, #0xe]
	bl ov29_022FB984
	mov r0, r8
	bl UpdateStatusIconFlags
	orr r0, r6, #0x11
	and r6, r0, #0xff
_023075AC:
	cmp r4, #0
	beq _023076A0
	mov r0, r8
	mov r1, sb
	mov r2, #4
	mov r3, #0
	bl ov29_02306728
	orr r0, r6, #1
	and r6, r0, #0xff
	b _023076A0
_023075D4:
	cmp r5, #0
	beq _02307614
	mov r0, sb
	mov r1, r8
	bl ov29_023066D8
	add r3, r7, #0xd8
	add r2, sl, #0xd8
	mov r1, #5
_023075F4:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _023075F4
	mov r0, r8
	bl UpdateStatusIconFlags
	orr r0, r6, #0x11
	and r6, r0, #0xff
_02307614:
	cmp r4, #0
	beq _023076A0
	mov r0, r8
	mov r1, sb
	mov r2, #5
	mov r3, #0
	bl ov29_02306728
	orr r0, r6, #1
	and r6, r0, #0xff
	b _023076A0
_0230763C:
	cmp r5, #0
	beq _0230767C
	mov r0, sb
	mov r1, r8
	bl ov29_023066D8
	add r3, r7, #0xd8
	add r2, sl, #0xd8
	mov r1, #5
_0230765C:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _0230765C
	mov r0, r8
	bl UpdateStatusIconFlags
	orr r0, r6, #0x11
	and r6, r0, #0xff
_0230767C:
	cmp r4, #0
	beq _023076A0
	mov r0, r8
	mov r1, sb
	mov r2, #6
	mov r3, #0
	bl ov29_02306728
	orr r0, r6, #1
	and r6, r0, #0xff
_023076A0:
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r6
_023076B4:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_023076BC: .word 0x02353538
	arm_func_end ov29_0230737C

	arm_func_start ov29_023076C0
ov29_023076C0: ; 0x023076C0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sb, r0
	mov r8, r1
	mov sl, r4
	mov r5, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r8
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	ldrb r0, [r6, #0xe0]
	cmp r0, #0
	mov r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xe0]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0230776C
_02307740: ; jump table
	b _0230776C ; case 0
	b _02307750 ; case 1
	b _0230776C ; case 2
	b _0230776C ; case 3
_02307750:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl TryInflictLeechSeedStatus
	mov sl, r0
	mov r4, #1
_0230776C:
	cmp sl, #0
	beq _023077CC
	add r0, r6, #0xe0
	add r3, r7, #0xe0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, #0xff
	strb r0, [r7, #0xe8]
	ldr r2, _023077F8 ; =0x02353538
	mov r0, #0
_02307794:
	ldr r1, [r2]
	add r1, r1, r0, lsl #2
	add r1, r1, #0x12000
	ldr r1, [r1, #0xb78]
	cmp sb, r1
	streqb r0, [r7, #0xe8]
	ldreq r1, [sb, #0xb4]
	add r0, r0, #1
	ldreq r1, [r1, #0xb0]
	streq r1, [r7, #0xe4]
	cmp r0, #0x14
	blt _02307794
	orr r0, r5, #0x11
	and r5, r0, #0xff
_023077CC:
	cmp r4, #0
	orrne r0, r5, #1
	movne r1, #0
	andne r5, r0, #0xff
	mov r0, sb
	strneb r1, [r6, #0xe0]
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_023077F8: .word 0x02353538
	arm_func_end ov29_023076C0

	arm_func_start ov29_023077FC
ov29_023077FC: ; 0x023077FC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sb, r0
	mov r8, r1
	mov sl, r4
	mov r5, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r8
	bl EntityIsValid__02305C04
	cmp r0, #0
	mov r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, sb
	mov r2, r0
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xec]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _023078A0
_0230786C: ; jump table
	b _023078A0 ; case 0
	b _023078A0 ; case 1
	b _02307884 ; case 2
	b _023078A0 ; case 3
	b _023078A0 ; case 4
	b _023078A0 ; case 5
_02307884:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl ov29_02315C00
	mov sl, r0
	mov r4, #1
_023078A0:
	cmp sl, #0
	beq _023078C0
	ldrb r1, [r6, #0xec]
	orr r0, r5, #0x11
	and r5, r0, #0xff
	strb r1, [r7, #0xec]
	ldrb r0, [r6, #0xed]
	strb r0, [r7, #0xed]
_023078C0:
	cmp r4, #0
	orrne r0, r5, #1
	movne r1, #0
	andne r5, r0, #0xff
	mov r0, sb
	strneb r1, [r6, #0xec]
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_023077FC

	arm_func_start ov29_023078EC
ov29_023078EC: ; 0x023078EC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sb, r0
	mov r8, r1
	mov sl, r4
	mov r5, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r8
	bl EntityIsValid__02305C04
	cmp r0, #0
	mov r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, sb
	mov r2, r0
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xf1]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _023079C4
_0230795C: ; jump table
	b _023079C4 ; case 0
	b _02307974 ; case 1
	b _02307994 ; case 2
	b _023079C4 ; case 3
	b _023079B0 ; case 4
	b _023079C4 ; case 5
_02307974:
	mov r0, sb
	mov r1, r8
	mov r2, #1
	mov r3, r4
	bl ov29_023176CC
	mov sl, r0
	mov r4, #1
	b _023079C4
_02307994:
	mov r0, sb
	mov r1, r8
	mov r2, #1
	bl ov29_02317844
	mov sl, r0
	mov r4, #1
	b _023079C4
_023079B0:
	mov r0, sb
	mov r1, r8
	bl ov29_02317AF4
	mov sl, r0
	mov r4, #1
_023079C4:
	cmp sl, #0
	beq _023079E4
	ldrb r1, [r6, #0xf1]
	orr r0, r5, #0x11
	and r5, r0, #0xff
	strb r1, [r7, #0xf1]
	ldrb r0, [r6, #0xf2]
	strb r0, [r7, #0xf2]
_023079E4:
	cmp r4, #0
	orrne r0, r5, #1
	movne r1, #0
	andne r5, r0, #0xff
	mov r0, sb
	strneb r1, [r6, #0xf1]
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _02307A24
	mov r0, #0x31
	bl AdvanceFrame
	bl ov29_02336F4C
	bl ov29_02339CE8
_02307A24:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_023078EC

	arm_func_start ov29_02307A2C
ov29_02307A2C: ; 0x02307A2C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sl, r0
	mov sb, r1
	mov r5, r4
	mov r6, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, sb
	bl EntityIsValid__02305C04
	cmp r0, #0
	mov r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, sl
	mov r2, r0
	ldr r7, [sl, #0xb4]
	ldr r8, [sb, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, sb
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r7, #0xf3]
	cmp r0, #0
	beq _02307AC0
	cmp r0, #1
	beq _02307AA8
	cmp r0, #2
	b _02307AC0
_02307AA8:
	mov r0, sl
	mov r1, sb
	mov r2, #1
	bl ov29_02317124
	mov r5, r0
	mov r4, #1
_02307AC0:
	cmp r5, #0
	beq _02307AE0
	ldrb r1, [r7, #0xf3]
	orr r0, r6, #0x11
	and r6, r0, #0xff
	strb r1, [r8, #0xf3]
	ldrb r0, [r7, #0xf4]
	strb r0, [r8, #0xf4]
_02307AE0:
	cmp r4, #0
	orrne r0, r6, #1
	movne r1, #0
	andne r6, r0, #0xff
	mov r0, sl
	strneb r1, [r7, #0xf3]
	bl UpdateStatusIconFlags
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02307A2C

	arm_func_start ov29_02307B0C
ov29_02307B0C: ; 0x02307B0C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sl, r0
	mov sb, r1
	mov r5, r4
	mov r6, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, sb
	bl EntityIsValid__02305C04
	cmp r0, #0
	mov r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, sl
	mov r2, r0
	ldr r7, [sl, #0xb4]
	ldr r8, [sb, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, sb
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r7, #0xf5]
	cmp r0, #1
	bne _02307B90
	mov r0, sl
	mov r1, sb
	mov r2, #1
	bl ov29_02318850
	mov r5, r0
	mov r4, #1
_02307B90:
	cmp r5, #0
	beq _02307BB0
	ldrb r1, [r7, #0xf5]
	orr r0, r6, #0x11
	and r6, r0, #0xff
	strb r1, [r8, #0xf5]
	ldrb r0, [r7, #0xf6]
	strb r0, [r8, #0xf6]
_02307BB0:
	cmp r4, #0
	orrne r0, r6, #1
	movne r1, #0
	andne r6, r0, #0xff
	mov r0, sl
	strneb r1, [r7, #0xf5]
	bl UpdateStatusIconFlags
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02307B0C

	arm_func_start ov29_02307BDC
ov29_02307BDC: ; 0x02307BDC
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	ldr r4, [r5, #0xb4]
	mov r6, r0
	ldrb r2, [r4, #0xc4]
	mov r3, #0
	cmp r2, #6
	bne _02307C0C
	mov r2, #1
	bl EndFrozenClassStatus
	mov r3, #1
_02307C0C:
	ldrb r0, [r4, #0xbd]
	cmp r0, #1
	ldreqb r0, [r4, #0xbe]
	cmpeq r0, #0x7f
	bne _02307C3C
	mov r3, #1
	mov r0, r6
	mov r1, r5
	mov r2, #0
	str r3, [sp]
	bl ov29_02305FDC
	mov r3, #1
_02307C3C:
	mov r0, r3
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov29_02307BDC

	arm_func_start ov29_02307C48
ov29_02307C48: ; 0x02307C48
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr ip, [r4, #0xb4]
	mov r3, #0
	mov r1, #1
	strb r3, [ip, #0xbd]
	mov r2, r1
	strb r3, [ip, #0xbe]
	bl ov29_022FA1D8
	mov r0, r4
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, pc}
	arm_func_end ov29_02307C48

	arm_func_start ov29_02307C78
ov29_02307C78: ; 0x02307C78
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, [r4, #0xb4]
	ldrb r0, [r3, #0xc4]
	cmp r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #0
	strb r0, [r3, #0xc4]
	strb r0, [r3, #0xcc]
	mov r1, r4
	mov r2, r0
	strb r0, [r3, #0xcd]
	bl SubstitutePlaceholderStringTags
	ldr r2, _02307CDC ; =0x00000C9F
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r4
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02307CDC: .word 0x00000C9F
	arm_func_end ov29_02307C78

	arm_func_start ov29_02307CE0
ov29_02307CE0: ; 0x02307CE0
	stmdb sp!, {r4, lr}
	ldr r4, [r0, #0xb4]
	mov r1, #0
	bl ov29_02307D54
	mov r1, #0
	strb r1, [r4, #0xff]
	ldrsh r0, [r4, #2]
	bl GetType
	strb r0, [r4, #0x5e]
	ldrsh r0, [r4, #2]
	mov r1, #1
	bl GetType
	strb r0, [r4, #0x5f]
	ldmia sp!, {r4, pc}
	arm_func_end ov29_02307CE0

	arm_func_start ov29_02307D18
ov29_02307D18: ; 0x02307D18
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xd5]
	cmp r0, #7
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov29_023064F4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_02307D18

	arm_func_start ov29_02307D54
ov29_02307D54: ; 0x02307D54
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl EntityIsValid__02305C04
	cmp r0, #0
	ldrne r2, [r5, #0xb4]
	ldrneb r0, [r2, #0xa9]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	strb r0, [r2, #0xa9]
	ldrb r1, [r2, #0xaa]
	cmp r4, #0
	strb r1, [r2, #0x5e]
	ldrb r1, [r2, #0xab]
	strb r1, [r2, #0x5f]
	strb r0, [r2, #0xaa]
	strb r0, [r2, #0xab]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _02307DBC ; =0x00000CC8
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02307DBC: .word 0x00000CC8
	arm_func_end ov29_02307D54

	arm_func_start ov29_02307DC0
ov29_02307DC0: ; 0x02307DC0
	mov r1, #0
	strb r1, [r0, #0x104]
	strb r1, [r0, #0x105]
	bx lr
	arm_func_end ov29_02307DC0

	arm_func_start ov29_02307DD0
ov29_02307DD0: ; 0x02307DD0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, #0
_02307DD8:
	ldr r0, _02307EF4 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb38]
	mov r0, r6
	bl EntityIsValid__02307EF8
	cmp r0, #0
	beq _02307EE4
	ldr r1, [r6, #0xb4]
	ldrb r0, [r1, #0xbd]
	cmp r0, #1
	ldreqb r0, [r1, #0xbe]
	cmpeq r0, #0x7f
	bne _02307EE4
	mov r8, #0
	mov r7, r8
	mov r5, r8
	ldrb sl, [r6, #0x25]
	ldr fp, _02307EF4 ; =0x02353538
	b _02307EBC
_02307E2C:
	ldr r0, [fp]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb28]
	mov r0, sb
	bl EntityIsValid__02307EF8
	cmp r0, #0
	beq _02307EB8
	mov r0, sb
	mov r1, #0x1f
	bl ItemIsActive__02307F1C
	cmp r0, #0
	bne _02307EB8
	ldrsh r1, [sb, #4]
	ldrsh r0, [r6, #4]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	bgt _02307E94
	ldrsh r1, [sb, #6]
	ldrsh r0, [r6, #6]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	movle r8, #1
	ble _02307EC4
_02307E94:
	mov r0, sb
	mov r1, #0x24
	bl ItemIsActive__02307F1C
	cmp r0, #0
	beq _02307EB8
	ldrb r0, [sb, #0x25]
	cmp sl, r0
	moveq r7, #1
	beq _02307EC4
_02307EB8:
	add r5, r5, #1
_02307EBC:
	cmp r5, #4
	blt _02307E2C
_02307EC4:
	cmp r7, #0
	bne _02307ED4
	cmp r8, #0
	movne r7, #1
_02307ED4:
	cmp r7, #0
	beq _02307EE4
	mov r0, r6
	bl ov29_02307C48
_02307EE4:
	add r4, r4, #1
	cmp r4, #0x10
	blt _02307DD8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02307EF4: .word 0x02353538
	arm_func_end ov29_02307DD0

	arm_func_start EntityIsValid__02307EF8
EntityIsValid__02307EF8: ; 0x02307EF8
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__02307EF8

	arm_func_start ItemIsActive__02307F1C
ItemIsActive__02307F1C: ; 0x02307F1C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ItemIsActive__02307F1C

	arm_func_start ov29_02307F4C
ov29_02307F4C: ; 0x02307F4C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1a0
	mov r4, r0
	mov r5, r1
	bl EntityIsValid__02307EF8
	cmp r0, #0
	beq _02308268
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _02308268
	mov r0, r4
	bl GetTileAtEntity
	ldrh r0, [r0]
	tst r0, #0x40
	beq _02308268
	ldr r0, _02308270 ; =0x02353538
	ldr r2, [r0]
	ldrb r1, [r2, #0x793]
	cmp r1, #0
	bne _02308268
	mov r1, #1
	strb r1, [r2, #0x793]
	ldr r1, [r0]
	add r0, r1, #0x4000
	ldrb r2, [r0, #0xc9]
	cmp r2, #0xff
	beq _02308268
	add r0, r1, #0x2e8
	add r1, r0, #0xec00
	mov r0, #0x1c
	mla r1, r2, r0, r1
	cmp r5, #0
	mov r5, #0
	beq _02308064
	ldrsh r0, [r4, #6]
	add r7, sp, #0x10
	sub sb, r0, #4
	b _02308050
_02307FE8:
	ldrsh r0, [r4, #4]
	sub r8, r0, #4
	mov r0, sb, lsl #0x10
	mov r6, r0, asr #0x10
	b _0230803C
_02307FFC:
	mov r0, r8
	mov r1, sb
	bl GetTileSafe
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldreqh r0, [r0]
	andeq r0, r0, #3
	cmpeq r0, #1
	bne _02308038
	cmp r5, #0x64
	movlt r1, r5, lsl #2
	addlt r0, r7, r5, lsl #2
	strlth r8, [r7, r1]
	strlth r6, [r0, #2]
	addlt r5, r5, #1
_02308038:
	add r8, r8, #1
_0230803C:
	ldrsh r0, [r4, #4]
	add r0, r0, #4
	cmp r8, r0
	ble _02307FFC
	add sb, sb, #1
_02308050:
	ldrsh r0, [r4, #6]
	add r0, r0, #4
	cmp sb, r0
	ble _02307FE8
	b _02308124
_02308064:
	ldrsh r2, [r4, #4]
	ldrsh r0, [r1, #2]
	add fp, sp, #0x10
	sub r7, r2, #4
	cmp r7, r0
	movle r7, r0
	add r8, r2, #5
	ldrsh r2, [r4, #6]
	ldrsh r0, [r1, #6]
	sub sb, r2, #4
	cmp r8, r0
	movge r8, r0
	ldrsh r0, [r1, #4]
	add sl, r2, #5
	cmp sb, r0
	movle sb, r0
	ldrsh r0, [r1, #8]
	cmp sl, r0
	movge sl, r0
	b _0230811C
_023080B4:
	mov r0, sb, lsl #0x10
	mov r6, r7
	mov r4, r0, asr #0x10
	b _02308110
_023080C4:
	mov r0, r6
	mov r1, sb
	bl GetTileSafe
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldreqh r1, [r0]
	andeq r1, r1, #3
	cmpeq r1, #1
	bne _0230810C
	ldrh r0, [r0]
	tst r0, #0x40
	beq _0230810C
	cmp r5, #0x64
	movlt r1, r5, lsl #2
	addlt r0, fp, r5, lsl #2
	strlth r6, [fp, r1]
	strlth r4, [r0, #2]
	addlt r5, r5, #1
_0230810C:
	add r6, r6, #1
_02308110:
	cmp r6, r8
	blt _023080C4
	add sb, sb, #1
_0230811C:
	cmp sb, sl
	blt _023080B4
_02308124:
	ldr r0, _02308274 ; =0x022C4560
	ldr r1, _02308278 ; =0x022C4660
	ldrsh r0, [r0]
	ldrsh r1, [r1]
	bl DungeonRandRange
	mov r6, r0
	cmp r6, r5
	movge r6, r5
	mov r8, #0
	b _02308258
_0230814C:
	mov r0, r5
	bl DungeonRandInt
	mov r3, #0
	mov r4, r0
	add r2, sp, #0x10
	mov r0, r3
	b _02308188
_02308168:
	mov r1, r4, lsl #2
	ldrsh r1, [r2, r1]
	cmp r1, #0
	bne _02308190
	add r4, r4, #1
	cmp r4, r5
	movge r4, r0
	add r3, r3, #1
_02308188:
	cmp r3, r5
	blt _02308168
_02308190:
	add r0, sp, #0x10
	mov r1, r4, lsl #2
	ldrsh r7, [r0, r1]
	cmp r7, #0
	beq _02308260
	mov r0, #1
	bl GetMonsterIdToSpawn
	add r1, sp, #0x10
	mov r3, #0
	strh r0, [sp]
	add r0, r1, r4, lsl #2
	ldrsh r2, [r0, #2]
	mov r1, #1
	ldrsh r0, [sp]
	strh r3, [sp, #8]
	strb r3, [sp, #2]
	str r3, [sp, #4]
	strb r1, [sp, #0xe]
	strh r7, [sp, #0xa]
	strh r2, [sp, #0xc]
	bl MewSpawnCheck
	cmp r0, #0
	beq _02308254
	add r0, sp, #0
	mov r1, #0
	bl SpawnMonster
	mov r4, r0
	bl EntityIsValid__02307EF8
	cmp r0, #0
	beq _02308254
	mov r0, #0xc800
	str r0, [r4, #0x1c]
	mov sl, #0
	mov sb, #0xaa
	mov r7, #0x57
	b _02308244
_02308220:
	ldr r0, [r4, #0x1c]
	mov r1, sb
	bl MultiplyByFixedPoint
	str r0, [r4, #0x1c]
	cmp r0, #0x100
	blt _0230824C
	mov r0, r7
	bl AdvanceFrame
	add sl, sl, #1
_02308244:
	cmp sl, #0x64
	blt _02308220
_0230824C:
	mov r0, #0
	str r0, [r4, #0x1c]
_02308254:
	add r8, r8, #1
_02308258:
	cmp r8, r6
	blt _0230814C
_02308260:
	mov r0, #1
	bl ov29_022E38E0
_02308268:
	add sp, sp, #0x1a0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02308270: .word 0x02353538
_02308274: .word 0x022C4560
_02308278: .word 0x022C4660
	arm_func_end ov29_02307F4C

	arm_func_start EntityIsValid__0230827C
EntityIsValid__0230827C: ; 0x0230827C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__0230827C

	arm_func_start ov29_023082A0
ov29_023082A0: ; 0x023082A0
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0xb4]
	ldrb r0, [r1, #6]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldrb r0, [r1, #0xa8]
	bl sub_02058C3C
	ldmia sp!, {r3, pc}
	arm_func_end ov29_023082A0

	arm_func_start ov29_023082C4
ov29_023082C4: ; 0x023082C4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl GetLeader
	movs r4, r0
	beq _02308338
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r2, #0
	mov r0, r5
	mov r1, r4
	mov r3, r2
	bl ov29_0230175C
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl CanTargetEntity
	cmp r0, #0
	movne r0, r4
	ldmneia sp!, {r3, r4, r5, pc}
_02308338:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_023082C4

	arm_func_start RunMonsterAi
RunMonsterAi: ; 0x02308340
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	ldrh r1, [r4]
	tst r1, #0x8000
	beq _02308374
	ldrb r1, [r4, #0xc4]
	cmp r1, #6
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, r5
	mov r2, #1
	bl EndFrozenClassStatus
	ldmia sp!, {r3, r4, r5, pc}
_02308374:
	mov r1, #0
	strb r1, [r4, #0x10c]
	ldrb r1, [r4, #0xbc]
	cmp r1, #6
	bls _02308394
	bl ov29_022EF9EC
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_02308394:
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	ldrneb r0, [r4, #0x109]
	cmpne r0, #0
	beq _023083F0
	mov r0, r5
	bl ov29_02300B40
	cmp r0, #0
	beq _023083DC
	mov r0, #0
	mov r1, r5
	mov r2, r0
	strb r0, [r4, #0x109]
	bl SubstitutePlaceholderStringTags
	ldr r1, _023085D4 ; =0x00000DED
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r3, r4, r5, pc}
_023083DC:
	mov r0, r5
	bl ov29_0230E914
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
_023083F0:
	mov r0, r5
	bl HasStatusThatPreventsActing
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_022FB538
	add r0, r4, #0x4a
	bl ClearMonsterActionFields
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	bne _02308450
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	mov r0, #8
	bl DungeonRandInt
	strb r0, [r4, #0x4c]
	ldrsh r1, [r5, #4]
	add r0, r4, #0x100
	strh r1, [r0, #0x7e]
	ldrsh r1, [r5, #6]
	sub r1, r1, #1
	strh r1, [r0, #0x80]
	ldmia sp!, {r3, r4, r5, pc}
_02308450:
	mov r0, r5
	bl ov29_0230E914
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #0x15
	bl IqSkillIsEnabled
	cmp r0, #0
	bne _02308510
	mov r0, r5
	bl ChooseAiMove
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xd0]
	cmp r0, #2
	bne _023084A8
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	ldmia sp!, {r3, r4, r5, pc}
_023084A8:
	ldrsh r0, [r4, #2]
	bl GetCanMoveFlag
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #1
	bl AiMovement
	ldrb r0, [r4, #6]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #0x17
	bl IqSkillIsEnabled
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #0x4a]
	cmp r0, #1
	ldmhiia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _023085D8 ; =0x00000DEE
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r3, r4, r5, pc}
_02308510:
	ldrb r0, [r4, #0xd0]
	cmp r0, #2
	bne _0230852C
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	ldmia sp!, {r3, r4, r5, pc}
_0230852C:
	ldrsh r0, [r4, #2]
	bl GetCanMoveFlag
	cmp r0, #0
	beq _02308548
	mov r0, r5
	mov r1, #1
	bl AiMovement
_02308548:
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	cmpne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ChooseAiMove
	ldrsh r0, [r4, #2]
	bl GetCanMoveFlag
	cmp r0, #0
	ldrneb r0, [r4, #6]
	cmpne r0, #0
	beq _023085B4
	mov r0, r5
	mov r1, #0x17
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _023085B4
	ldrh r0, [r4, #0x4a]
	cmp r0, #1
	bhi _023085B4
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _023085D8 ; =0x00000DEE
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_023085B4:
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	cmpne r0, #1
	movne r0, #0
	strneb r0, [r4, #0x7d]
	strneb r0, [r4, #0x14e]
	strneb r0, [r4, #0x151]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_023085D4: .word 0x00000DED
_023085D8: .word 0x00000DEE
	arm_func_end RunMonsterAi

	arm_func_start ov29_023085DC
ov29_023085DC: ; 0x023085DC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	ldr r4, [r5, #0xb4]
	beq _02308618
	ldrb r1, [r4, #0xd0]
	cmp r1, #4
	bne _02308618
	ldrb r1, [r4, #0x4c]
	add r2, r1, #4
	and r1, r2, #0xff
	and r1, r1, #7
	strb r1, [r4, #0x4c]
	bl UpdateAiTargetPos
	ldmia sp!, {r3, r4, r5, pc}
_02308618:
	ldrb r0, [r4, #0xd0]
	cmp r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #8
	bl DungeonRandInt
	strb r0, [r4, #0x4c]
	mov r0, r5
	bl UpdateAiTargetPos
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_023085DC

	arm_func_start ov29_0230863C
ov29_0230863C: ; 0x0230863C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	ldr r7, [sp, #0x68]
	ldrsh r4, [sp, #0x6c]
	ldr r6, [sp, #0x74]
	str r7, [sp]
	stmib sp, {r4, r6}
	mov r8, r2
	mov sl, r0
	mov sb, r1
	bl ApplyDamage
	cmp r0, #0
	ldreqb r0, [r8, #0x10]
	cmpeq r0, #0
	bne _02308F68
	mov r0, sl
	bl EntityIsValid__02308FBC
	cmp r0, #0
	beq _02308F68
	mov r0, sb
	bl EntityIsValid__02308FBC
	cmp r0, #0
	beq _02308F68
	ldr r0, [sl]
	cmp r0, #1
	ldreq r0, [sb]
	cmpeq r0, #1
	bne _02308F68
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0xd2]
	cmp r0, #0xc
	bne _023086D4
	ldr r1, _02308F70 ; =0x02352AEC
	mov r0, sl
	ldr r2, [r1]
	mov r1, sb
	mov r3, #1
	bl BoostOffensiveStat
_023086D4:
	ldr r0, [sp, #0x70]
	cmp r0, #0
	beq _02308F68
	mov r0, sb
	bl ov29_02300D50
	cmp r0, #0
	ldreq r0, [sb, #0xb4]
	ldreqb r0, [r0, #0xd2]
	cmpeq r0, #0
	movne r0, #0
	bne _02308F64
	mov r0, sl
	mov r1, #0x29
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _02308730
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F74 ; =0x022C442C
	ldrsh r1, [r1]
	cmp r0, r1
	movlt r0, #0
	blt _02308F64
_02308730:
	ldrb r0, [r8, #0xd]
	bl ov29_0231EA30
	cmp r0, #0
	bne _02308778
	cmp sl, sb
	beq _02308778
	ldrsh r1, [sl, #4]
	ldrsh r0, [sb, #4]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	bgt _02308778
	ldrsh r1, [sl, #6]
	ldrsh r0, [sb, #6]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	ble _02308780
_02308778:
	mov r0, #0
	b _023087B4
_02308780:
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0xd5]
	cmp r0, #0xd
	bne _023087A8
	mov r0, sb
	mov r1, sl
	bl ov29_022E5E84
	mov r0, sb
	mov r1, sl
	bl ov29_0231EDFC
_023087A8:
	mov r0, sl
	mov r1, sb
	bl ov29_0230D654
_023087B4:
	cmp r0, #0
	movne r0, #1
	bne _02308F64
	ldrb r0, [r8, #0xd]
	bl ov29_0231EA30
	mov r4, r0
	cmp sl, sb
	mov r5, #0
	beq _02308808
	ldrsh r1, [sl, #4]
	ldrsh r0, [sb, #4]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	bgt _02308808
	ldrsh r1, [sl, #6]
	ldrsh r0, [sb, #6]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	ble _02308810
_02308808:
	mov r0, #0
	b _02308A28
_02308810:
	add r0, sp, #0x2c
	bl ResetDamageDesc
	ldr r0, [sb, #0xb4]
	cmp r4, #0
	ldrb r0, [r0, #0xd5]
	bne _023088E4
	cmp r0, #4
	bne _0230883C
	mov r0, sb
	bl ov29_022E3F24
	add r5, r5, #4
_0230883C:
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0xd5]
	cmp r0, #0xa
	bne _02308858
	mov r0, sb
	bl ov29_022E3F24
	add r5, r5, #1
_02308858:
	mov r0, sb
	mov r1, #0x20
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	mov r0, sb
	mov r1, #0x23
	addne r5, r5, #4
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	mov r0, sb
	mov r1, #0x31
	addne r5, r5, #1
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _023088B0
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F78 ; =0x022C44C0
	mov r0, r0, lsl #0x10
	ldrsh r1, [r1]
	cmp r1, r0, asr #16
	addgt r5, r5, #4
_023088B0:
	mov r0, sb
	mov r1, #0x27
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _023088F8
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F7C ; =0x022C4464
	mov r0, r0, lsl #0x10
	ldrsh r1, [r1]
	cmp r1, r0, asr #16
	addgt r5, r5, #1
	b _023088F8
_023088E4:
	cmp r0, #8
	bne _023088F8
	mov r0, sb
	bl ov29_022E40C0
	add r5, r5, #4
_023088F8:
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0xd5]
	cmp r0, #0xf
	bne _02308914
	mov r0, sb
	bl ov29_022E57D4
	add r5, r5, #2
_02308914:
	mov r0, sl
	mov r1, sb
	mov r2, #0x12
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	addne r5, r5, #2
	cmp r5, #0
	beq _02308A1C
	ldr r2, _02308F80 ; =0x00000C3F
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	ldr r0, [r8]
	mov r1, #6
	mul r2, r0, r5
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sp, #0x2c]
	ldrb r2, [r8, #0xc]
	mov r0, #2
	mov r3, #0
	strb r2, [sp, #0x38]
	str r1, [sp, #0x30]
	str r0, [sp, #0x34]
	ldrb r0, [r8, #0xd]
	strb r0, [sp, #0x39]
	strb r3, [sp, #0x3a]
	strb r3, [sp, #0x3b]
	strb r3, [sp, #0x3c]
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0xd5]
	cmp r0, #0xf
	bne _023089FC
	mov r2, #1
	add r1, sp, #0xc
	mov r0, sb
	strb r2, [sp, #0x39]
	bl ov29_023380FC
	mov fp, r0
	ldrsh r5, [sp, #0x6c]
	mov r4, #0
	b _023089F0
_023089C4:
	str r7, [sp]
	stmib sp, {r5, r6}
	add r0, sp, #0xc
	ldr r1, [r0, r4, lsl #2]
	mov r0, sb
	add r2, sp, #0x2c
	mov r3, #0
	bl ApplyDamage
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
_023089F0:
	cmp r4, fp
	blt _023089C4
	b _02308A1C
_023089FC:
	ldrsh r0, [sp, #0x6c]
	str r7, [sp]
	add r2, sp, #0x2c
	str r0, [sp, #4]
	mov r0, sb
	mov r1, sl
	str r6, [sp, #8]
	bl ApplyDamage
_02308A1C:
	mov r0, sl
	mov r1, sb
	bl ov29_0230D654
_02308A28:
	cmp r0, #0
	movne r0, #1
	bne _02308F64
	cmp sl, sb
	beq _02308A6C
	ldrsh r1, [sl, #4]
	ldrsh r0, [sb, #4]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	bgt _02308A6C
	ldrsh r1, [sl, #6]
	ldrsh r0, [sb, #6]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	ble _02308A74
_02308A6C:
	mov r0, #0
	b _02308ECC
_02308A74:
	ldrb r0, [r8, #0xd]
	bl ov29_0231EA30
	mov r4, r0
	mov r0, sb
	mov r1, #0xb
	ldr r6, [sl, #0xb4]
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	beq _02308B04
	cmp r4, #0
	bne _02308B04
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F84 ; =0x022C45B4
	ldrsh r1, [r1]
	cmp r0, r1
	bge _02308B04
	mov r0, #0x12c
	bl DungeonRandInt
	cmp r0, #0x64
	mov r2, #0xb
	bge _02308AE0
	mov r0, sl
	mov r1, sb
	mov r3, #0x40
	bl ov29_0230F728
	b _02308B04
_02308AE0:
	cmp r0, #0xc8
	mov r0, sl
	mov r1, sb
	bge _02308AFC
	mov r3, #0x10
	bl ov29_0230F728
	b _02308B04
_02308AFC:
	mov r3, #0x80
	bl ov29_0230F728
_02308B04:
	ldr r5, _02308F88 ; =0x023535DC
	b _02308B54
_02308B0C:
	ldrb r1, [r5]
	mov r0, sb
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	beq _02308B50
	ldr r3, [r5, #8]
	mov r0, sl
	mov r1, sb
	mov r2, r4
	blx r3
	cmp r0, #0
	beq _02308B50
	ldrb r2, [r5]
	ldr r3, [r5, #4]
	mov r0, sl
	mov r1, sb
	bl ov29_0230F728
_02308B50:
	add r5, r5, #0x10
_02308B54:
	ldrb r0, [r5]
	cmp r0, #0
	bne _02308B0C
	mov r0, sb
	mov r1, #0x1b
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	beq _02308BB0
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F8C ; =0x022C45B0
	ldrsh r1, [r1]
	cmp r0, r1
	bge _02308BB0
	mov r0, sb
	bl HasLowHealth
	cmp r0, #0
	beq _02308BB0
	mov r0, sl
	mov r1, sb
	mov r2, #0x1b
	mov r3, #0x40000
	bl ov29_0230F728
_02308BB0:
	mov r0, sl
	mov r1, sb
	mov r2, #5
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _02308C38
	ldrb r0, [r6, #0xf7]
	mov r5, #0
	cmp r0, #1
	beq _02308C00
	mov r0, sl
	mov r1, #0xa
	bl ov29_02301EAC
	cmp r0, #0
	bne _02308C00
	mov r0, sl
	bl LevitateIsActive
	cmp r0, #0
	beq _02308C0C
_02308C00:
	bl GravityIsActive
	cmp r0, #0
	moveq r5, #1
_02308C0C:
	cmp r5, #0
	bne _02308C38
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F90 ; =0x022C4564
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrlth r1, [r0, #0x92]
	orrlt r1, r1, #1
	strlth r1, [r0, #0x92]
_02308C38:
	mov r0, sl
	mov r1, sb
	mov r2, #0xa
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _02308C88
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F94 ; =0x022C468C
	ldrsh r1, [r1]
	cmp r0, r1
	bge _02308C88
	add r0, r6, #0x100
	ldrh r3, [r0, #0x92]
	ldr r1, _02308F98 ; =0x0237CA6D
	mov r2, #0
	orr r3, r3, #2
	strh r3, [r0, #0x92]
	strb r2, [r1]
_02308C88:
	mov r0, sl
	mov r1, sb
	mov r2, #0x17
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _02308CDC
	mov r0, sl
	mov r1, #0x11
	bl MonsterIsType
	cmp r0, #0
	beq _02308CDC
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F9C ; =0x022C4460
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrlth r1, [r0, #0x92]
	orrlt r1, r1, #4
	strlth r1, [r0, #0x92]
_02308CDC:
	mov r0, sl
	mov r1, sb
	mov r2, #0x20
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _02308D24
	cmp r4, #0
	bne _02308D24
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308FA0 ; =0x022C4550
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrlth r1, [r0, #0x92]
	orrlt r1, r1, #8
	strlth r1, [r0, #0x92]
_02308D24:
	mov r0, sl
	mov r1, sb
	mov r2, #0x27
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _02308D64
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308FA4 ; =0x022C45C0
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrlth r1, [r0, #0x92]
	orrlt r1, r1, #0x20
	strlth r1, [r0, #0x92]
_02308D64:
	mov r0, sl
	mov r1, sb
	mov r2, #0x3d
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _02308DE0
	cmp r4, #0
	bne _02308DE0
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308FA8 ; =0x022C45AC
	ldrsh r1, [r1]
	cmp r0, r1
	bge _02308DE0
	mov r0, #3
	bl DungeonRandInt
	cmp r0, #1
	addlt r0, r6, #0x100
	ldrlth r1, [r0, #0x92]
	orrlt r1, r1, #0x40
	strlth r1, [r0, #0x92]
	blt _02308DE0
	cmp r0, #2
	add r0, r6, #0x100
	ldrlth r1, [r0, #0x92]
	orrlt r1, r1, #0x10
	strlth r1, [r0, #0x92]
	ldrgeh r1, [r0, #0x92]
	orrge r1, r1, #0x80
	strgeh r1, [r0, #0x92]
_02308DE0:
	mov r0, sl
	mov r1, sb
	mov r2, #0x3e
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _02308E20
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308FAC ; =0x022C467C
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrlth r1, [r0, #0x92]
	orrlt r1, r1, #0x100
	strlth r1, [r0, #0x92]
_02308E20:
	mov r0, sl
	mov r1, sb
	mov r2, #0x44
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _02308E80
	ldr r1, [sb, #0xb4]
	ldrsh r0, [r6, #2]
	ldrsh r1, [r1, #2]
	bl sub_02054EC8
	cmp r0, #0
	beq _02308E80
	cmp r4, #0
	bne _02308E80
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308FB0 ; =0x022C4524
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrlth r1, [r0, #0x92]
	orrlt r1, r1, #0x200
	strlth r1, [r0, #0x92]
_02308E80:
	mov r2, #1
	mov r0, sl
	mov r1, sb
	mov r3, r2
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _02308EC0
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308FB4 ; =0x022C4638
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrlth r1, [r0, #0x92]
	orrlt r1, r1, #0x400
	strlth r1, [r0, #0x92]
_02308EC0:
	mov r0, sl
	mov r1, sb
	bl ov29_0230D654
_02308ECC:
	cmp r0, #0
	movne r0, #1
	bne _02308F64
	ldr r0, [sb, #0xb4]
	ldrb r1, [r0, #0xe0]
	cmp r1, #2
	bne _02308F4C
	ldr r1, _02308FB8 ; =0x02353538
	ldrb r2, [r0, #0xe8]
	ldr r1, [r1]
	add r1, r1, r2, lsl #2
	add r1, r1, #0x12000
	ldr r4, [r1, #0xb78]
	cmp r4, #0
	moveq r1, #0
	streqb r1, [r0, #0xe0]
	beq _02308F4C
	ldr r1, [r4, #0xb4]
	ldr r2, [r0, #0xe4]
	ldr r1, [r1, #0xb0]
	cmp r2, r1
	movne r1, #0
	strneb r1, [r0, #0xe0]
	bne _02308F4C
	mov r0, r4
	mov r1, sb
	bl ov29_022E45D0
	ldr r1, [r8]
	mov r0, r4
	mov r2, #0xc
	mov r3, #0x238
	bl ov29_0230D11C
_02308F4C:
	mov r0, sl
	mov r1, sb
	bl ov29_0230D654
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
_02308F64:
	cmp r0, #0
_02308F68:
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02308F70: .word 0x02352AEC
_02308F74: .word 0x022C442C
_02308F78: .word 0x022C44C0
_02308F7C: .word 0x022C4464
_02308F80: .word 0x00000C3F
_02308F84: .word 0x022C45B4
_02308F88: .word 0x023535DC
_02308F8C: .word 0x022C45B0
_02308F90: .word 0x022C4564
_02308F94: .word 0x022C468C
_02308F98: .word 0x0237CA6D
_02308F9C: .word 0x022C4460
_02308FA0: .word 0x022C4550
_02308FA4: .word 0x022C45C0
_02308FA8: .word 0x022C45AC
_02308FAC: .word 0x022C467C
_02308FB0: .word 0x022C4524
_02308FB4: .word 0x022C4638
_02308FB8: .word 0x02353538
	arm_func_end ov29_0230863C

	arm_func_start EntityIsValid__02308FBC
EntityIsValid__02308FBC: ; 0x02308FBC
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__02308FBC

	arm_func_start ApplyDamage
ApplyDamage: ; 0x02308FE0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x64
	ldr r5, [sp, #0x8c]
	mov sb, #0
	mov r6, r2
	mov r7, r1
	strb sb, [r6, #0x10]
	ldr r1, [r7]
	mov r8, r0
	str r3, [sp, #0x10]
	mov fp, sb
	str sb, [sp, #0x14]
	cmp r1, #1
	bne _0230902C
	ldr r0, [r7, #0xb4]
	ldrb r0, [r0, #0xbc]
	bl ov29_022EFB04
	cmp r0, #0
	beq _0230903C
_0230902C:
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_0230903C:
	ldr r4, [r7, #0xb4]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0230905C
	ldrb r0, [r4, #8]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x14]
_0230905C:
	mov r0, r8
	mov r1, r7
	bl ov29_02307BDC
	mov r0, r8
	mov r1, r7
	bl ov29_0230D440
	ldr r0, [r8]
	cmp r0, #1
	ldreq r0, [r8, #0xb4]
	ldreqb r0, [r0, #0xec]
	cmpeq r0, #3
	ldreqb r0, [r6, #0xf]
	cmpeq r0, #0
	ldreq r0, _02309F98 ; =0x022C4598
	ldreqsh r0, [r0]
	streq r0, [r6]
	ldr r0, [r8]
	cmp r0, #1
	bne _02309134
	mov r0, r8
	mov r1, r7
	mov r2, #0x73
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	ldrne r0, [r6, #4]
	cmpne r0, #4
	cmpne r0, #0xe
	cmpne r0, #0
	cmpne r0, #0x17
	beq _023091A4
	mov r1, r7
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02309F9C ; =0x00000C46
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r8
	bl ov29_022E272C
	cmp r0, #0
	beq _02309124
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _02309124
	mov r0, r8
	mov r1, r7
	bl ov29_022E576C
_02309124:
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_02309134:
	cmp r0, #6
	bne _023091A4
	mov r0, r7
	mov r1, #0x73
	bl AbilityIsActive2
	cmp r0, #0
	ldrne r0, [r6, #4]
	cmpne r0, #4
	cmpne r0, #0xe
	cmpne r0, #0x17
	beq _023091A4
	mov r1, r7
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r1, _02309F9C ; =0x00000C46
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _02309194
	mov r0, r7
	bl ov29_022E57A0
_02309194:
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_023091A4:
	ldr r0, _02309FA0 ; =0x0000024D
	cmp r5, r0
	beq _02309224
	ldr r0, [r8]
	cmp r0, #1
	bne _02309224
	mov r0, r8
	mov r1, r7
	mov r2, #0xd
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _02309224
	ldr r1, [r6]
	ldr r0, _02309FA4 ; =0x0000270F
	cmp r1, r0
	bne _02309224
	mov r1, r7
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r0, r8
	mov r1, r7
	mov r2, #0xc40
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r8
	mov r1, r7
	bl ov29_022E576C
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_02309224:
	ldrb r0, [r4, #0xc4]
	cmp r0, #1
	bne _02309274
	cmp r5, #0x250
	beq _02309264
	mov r1, r7
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02309FA8 ; =0x00000C41
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r8
	mov r1, r7
	bl ov29_022E576C
_02309264:
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_02309274:
	ldrb r0, [r4, #0xbd]
	cmp r0, #1
	cmpne r0, #5
	cmpne r0, #3
	bne _0230929C
	ldrb r0, [r4, #0xbe]
	cmp r0, #0x7f
	bne _0230929C
	mov r0, r7
	bl ov29_02307C48
_0230929C:
	ldr r0, [r8]
	cmp r0, #1
	bne _023093D8
	mov r0, r8
	mov r1, r7
	mov r2, #0x23
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _023092F8
	ldrb r0, [r6, #0xc]
	cmp r0, #5
	bne _023092F8
	mov r3, #0
	str r3, [sp]
	ldr r2, [r6]
	mov r0, r8
	mov r1, r7
	bl TryIncreaseHp
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_023092F8:
	mov r0, r8
	mov r1, r7
	mov r2, #0x24
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _02309348
	ldrb r0, [r6, #0xc]
	cmp r0, #3
	bne _02309348
	mov r3, #0
	str r3, [sp]
	ldr r2, [r6]
	mov r0, r8
	mov r1, r7
	bl TryIncreaseHp
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_02309348:
	mov r0, r8
	mov r1, r7
	mov r2, #0x55
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _02309398
	ldrb r0, [r6, #0xc]
	cmp r0, #3
	bne _02309398
	mov r3, #0
	str r3, [sp]
	ldr r2, [r6]
	mov r0, r8
	mov r1, r7
	bl TryIncreaseHp
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_02309398:
	mov r0, r8
	mov r1, r7
	mov r2, #0x66
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _023093D8
	ldrb r0, [r6, #0xc]
	cmp r0, #5
	bne _023093D8
	mov r0, r7
	bl ov29_0231B060
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_023093D8:
	ldr sl, _02309FAC ; =0x023528A4
	b _0230944C
_023093E0:
	ldrb r0, [r6, #0xc]
	cmp r1, r0
	bne _02309448
	ldr r1, [sl, #4]
	mov r0, r8
	and r2, r1, #0xff
	str r2, [sp]
	mov r2, #0
	mov r1, r7
	mov r3, r2
	bl ov29_02314D40
	cmp r0, #0
	beq _02309448
	ldr r0, [sl, #4]
	cmp r0, #0x71
	mov r0, #1
	strleb r0, [r6, #0x10]
	ble _02309440
	str r0, [sp]
	ldr r2, [r6]
	mov r0, r8
	mov r1, r7
	mov r3, #0
	bl TryIncreaseHp
_02309440:
	mov r0, #0
	b _0230945C
_02309448:
	add sl, sl, #8
_0230944C:
	ldrb r1, [sl]
	cmp r1, #0x12
	bne _023093E0
	mov r0, #1
_0230945C:
	cmp r0, #0
	bne _023094D8
	ldrb r0, [r6, #0x10]
	cmp r0, #0
	beq _023094C8
	ldr r0, [r8]
	cmp r0, #1
	bne _023094AC
	mov r0, r8
	bl ov29_022E272C
	cmp r0, #0
	beq _023094C8
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _023094C8
	mov r0, r8
	mov r1, r7
	bl ov29_022FB98C
	b _023094C8
_023094AC:
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _023094C8
	mov r0, r8
	mov r1, r7
	bl ov29_022FB98C
_023094C8:
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_023094D8:
	ldr r0, [r6]
	cmp r0, #0
	ble _02309520
	mov r0, r7
	mov r1, #0x51
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	beq _02309520
	ldr r0, _02309FB0 ; =0x022C45C4
	ldrsh r0, [r0]
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	beq _02309520
	mov r0, r7
	mov r1, r7
	mov r2, #1
	mov r3, #0
	bl ov29_02317E88
_02309520:
	ldrb r0, [r4, #0x15c]
	cmp r0, #0
	bne _023095A0
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _02309548
	ldr r2, _02309FB4 ; =0x00000C42
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02309548:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _02309568
	cmp r0, #1
	beq _0230957C
	cmp r0, #3
	beq _02309590
	b _023095A0
_02309568:
	ldr r2, _02309FB8 ; =0x00000C43
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023095A0
_0230957C:
	ldr r2, _02309FBC ; =0x00000C44
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023095A0
_02309590:
	ldr r2, _02309FC0 ; =0x00000C45
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_023095A0:
	mov r0, #0
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r7
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r1, [r6]
	cmp r1, #0
	bne _02309650
	mov r0, r8
	bl ov29_022E272C
	cmp r0, #0
	beq _02309618
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _02309618
	ldrb r0, [r4, #0x15c]
	cmp r0, #0
	bne _02309608
	ldr r2, _02309FC4 ; =0x00000C47
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02309608:
	mov r0, r8
	mov r1, r7
	bl ov29_022E576C
	b _02309640
_02309618:
	ldrb r0, [r4, #0x15c]
	cmp r0, #0
	bne _02309634
	ldr r2, _02309FC4 ; =0x00000C47
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02309634:
	mov r0, #0x1e
	mov r1, #0x18
	bl ov29_022EA370
_02309640:
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_02309650:
	ldr r0, _02309FA4 ; =0x0000270F
	cmp r1, r0
	bne _02309740
	ldr r0, [sp, #0x90]
	cmp r0, #0
	beq _02309718
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _02309718
	mov r0, r7
	bl GetTileAtEntity
	mov r2, #0
	mov r1, #1
	str r2, [sp]
	str r1, [sp, #4]
	add r1, r1, #0x2b4
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov fp, r0
	mov r0, r7
	mov r3, #3
	bl ov29_022E35E4
	mov r0, r0, lsl #0x10
	mov sl, r0, asr #0x10
	mvn r1, #0
	cmp sl, r1
	ldr r0, _02309FC8 ; =0x023535D4
	strh r1, [r0]
	beq _02309718
	b _023096D4
_023096CC:
	mov r0, #0x18
	bl AdvanceFrame
_023096D4:
	mov r0, sl
	bl ov10_022BF964
	cmp r0, #0
	bne _023096CC
	mov r0, sl
	bl ov10_022BDE50
	mov r2, #0
	str r2, [sp]
	mov r0, #1
	stmib sp, {r0, r2}
	ldr r1, _02309FCC ; =0x000002B6
	mov r0, r7
	mov r3, #3
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	ldr r1, _02309FC8 ; =0x023535D4
	strh r0, [r1]
_02309718:
	ldrb r0, [r4, #0x15c]
	cmp r0, #0
	bne _02309734
	ldr r2, _02309FD0 ; =0x00000C48
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02309734:
	ldr r0, _02309FD4 ; =0x000003E7
	str r0, [r4, #0xb8]
	b _02309808
_02309740:
	mov r0, #0
	bl ov29_0234B09C
	ldr r1, [r6, #4]
	ldr r2, [r4, #0xb8]
	cmp r1, #0x1b
	ldrlt r0, _02309FD8 ; =0x02353330
	movge sl, #0
	movlt r1, r1, lsl #1
	ldrlth sl, [r0, r1]
	ldr r1, [r6]
	ldr r0, _02309FD4 ; =0x000003E7
	add r1, r2, r1
	str r1, [r4, #0xb8]
	cmp r1, r0
	strgt r0, [r4, #0xb8]
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _023097E4
	ldr r0, [r6, #4]
	cmp r0, #0xe
	cmpne r0, #0x17
	ldrne r0, _02309FDC ; =0x0000025F
	cmpne r5, r0
	beq _023097BC
	ldr r0, [r6]
	mov r2, #1
	mov r1, r7
	rsb r0, r0, #0
	sub r3, r2, #2
	bl ov29_022EA718
_023097BC:
	ldrb r0, [r4, #0x15c]
	cmp r0, #0
	bne _02309808
	cmp sl, #0
	beq _02309808
	mov r0, r8
	mov r1, r7
	mov r2, sl
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02309808
_023097E4:
	ldrb r0, [r4, #0x15c]
	cmp r0, #0
	bne _02309808
	cmp sl, #0
	beq _02309808
	mov r0, r8
	mov r1, r7
	mov r2, sl
	bl LogMessageByIdWithPopupCheckUserTarget
_02309808:
	ldr r0, [r6, #4]
	cmp r0, #0xe
	bne _02309820
	ldrsh r0, [r4, #0x10]
	cmp r0, #1
	bgt _0230991C
_02309820:
	cmp fp, #0
	bne _0230991C
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _0230991C
	ldrsh r1, [r8, #4]
	ldrsh r0, [r7, #4]
	cmp r1, r0
	ldreqsh r1, [r8, #6]
	ldreqsh r0, [r7, #6]
	cmpeq r1, r0
	beq _023098EC
	ldr r0, [r8]
	cmp r0, #1
	bne _023098EC
	ldrb r0, [r4, #7]
	mov sl, #0
	cmp r0, #0
	beq _023098A0
	bl sub_0204AF00
	cmp r0, #0
	beq _023098A0
	mov r0, r7
	bl ov29_022F9AF4
	cmp r0, #0
	bne _023098A0
	mov r0, r7
	mov r1, r8
	bl ov29_022E274C
	cmp r0, #0
	movne sl, #1
_023098A0:
	ldrb r0, [r4, #0xf1]
	cmp r0, #2
	beq _023098C0
	mov r0, r7
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	beq _023098C4
_023098C0:
	mov sl, #0
_023098C4:
	cmp sl, #0
	beq _023098E4
	add r0, r7, #4
	add r1, r8, #4
	ldr sl, [r7, #0xb4]
	bl GetDirectionTowardsPosition
	and r0, r0, #7
	strb r0, [sl, #0x4c]
_023098E4:
	mov r0, r7
	bl UpdateAiTargetPos
_023098EC:
	ldr r0, _02309FDC ; =0x0000025F
	cmp r5, r0
	beq _0230991C
	ldr r1, [r7, #0xb4]
	mov r0, r7
	ldrb r2, [r1, #0x4c]
	mov r1, #6
	bl ov29_023049A8
	mov r0, r7
	mov r1, r6
	bl ov29_022E5478
	mov sb, #1
_0230991C:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0230995C
	ldr r0, [r6]
	cmp r0, #0
	ble _0230995C
	ldr r0, [r8]
	cmp r0, #1
	ldreq r0, [r8, #0xb4]
	ldreqb r0, [r0, #6]
	cmpeq r0, #0
	bne _0230995C
	ldrsh r0, [r4, #2]
	bl SetMonsterFlag2
	ldrsh r0, [r4, #2]
	bl SetPokemonBattled
_0230995C:
	ldrsh sl, [r4, #0x10]
	ldr r0, [r6]
	cmp sl, r0
	subgt r0, sl, r0
	movle r0, #0
	strh r0, [r4, #0x10]
	ldrb r0, [r4, #0xd5]
	cmp r0, #9
	bne _023099A8
	ldrsh r0, [r4, #0x10]
	cmp r0, #0
	bne _02309A28
	ldr r2, _02309FE0 ; =0x00000C49
	mov r3, #1
	mov r0, r8
	mov r1, r7
	strh r3, [r4, #0x10]
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02309A28
_023099A8:
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _023099DC
	ldrsh r0, [r4, #0x10]
	cmp r0, #0
	bne _02309A28
	ldr r2, _02309FE4 ; =0x00000C4A
	mov r3, #1
	mov r0, r8
	mov r1, r7
	strh r3, [r4, #0x10]
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02309A28
_023099DC:
	mov r0, r7
	mov r1, #0x22
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	beq _02309A28
	ldr r0, _02309FE8 ; =0x022C4834
	ldr r0, [r0]
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	beq _02309A28
	ldrsh r0, [r4, #0x10]
	cmp r0, #0
	bne _02309A28
	ldr r2, _02309FE0 ; =0x00000C49
	mov r3, #1
	mov r0, r8
	mov r1, r7
	strh r3, [r4, #0x10]
	bl LogMessageByIdWithPopupCheckUserTarget
_02309A28:
	bl ov29_022E81F8
	ldrsh r0, [r4, #0x10]
	subs sl, sl, r0
	movmi sl, #0
	cmp sb, #0
	cmpeq fp, #0
	beq _02309A50
	mov r0, #0xa
	mov r1, #0x18
	bl ov29_022EA370
_02309A50:
	mov r0, r7
	bl UpdateStatusIconFlags
	ldrsh r0, [r4, #0x10]
	cmp r0, #0
	beq _02309B20
	cmp sb, #0
	beq _02309A78
	mov r0, r7
	mov r1, #8
	bl ov29_02304A48
_02309A78:
	ldr r0, [r6, #4]
	cmp r0, #0xe
	beq _02309B04
	mov r0, r7
	mov r1, #0x17
	bl ItemIsActive__0230A9DC
	cmp r0, #0
	beq _02309AC4
	cmp sl, #0
	ble _02309AC4
	ldr r1, [r6]
	ldr r0, _02309FA4 ; =0x0000270F
	cmp r1, r0
	beq _02309AC4
	ldr r1, _02309FEC ; =0x022C45FC
	mov r0, r8
	ldrsh r2, [r1]
	mov r1, r7
	bl AddExpSpecial
_02309AC4:
	mov r0, r7
	mov r1, #0x50
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	beq _02309B04
	cmp sl, #0
	ble _02309B04
	ldr r1, [r6]
	ldr r0, _02309FA4 ; =0x0000270F
	cmp r1, r0
	beq _02309B04
	ldr r1, _02309FEC ; =0x022C45FC
	mov r0, r8
	ldrsh r2, [r1]
	mov r1, r7
	bl AddExpSpecial
_02309B04:
	cmp fp, #0
	beq _02309B18
	mov r0, r7
	bl ov29_0230D7D4
	bl ov29_02336F4C
_02309B18:
	mov r0, #0
	b _0230A918
_02309B20:
	ldr r0, _02309FDC ; =0x0000025F
	cmp r5, r0
	bne _02309B5C
	ldr r1, [r7, #0xb4]
	mov r0, r7
	ldrb r2, [r1, #0x4c]
	mov r1, #6
	bl ov29_023049A8
	mov r0, r7
	mov r1, r6
	bl ov29_022E5478
	mov r0, #0xa
	mov r1, #0x18
	bl ov29_022EA370
	mov sb, #1
_02309B5C:
	ldrb r0, [r4, #0xef]
	cmp r0, #2
	bne _02309B78
	mov r0, r8
	mov r1, r7
	mov r2, #0
	bl ov29_02306A00
_02309B78:
	cmp fp, #0
	beq _02309BA4
	mov r0, #0x14
	mov r1, #0x18
	bl ov29_022EA370
	mov r1, #2
	mov r0, r7
	strb r1, [r7, #0x22]
	bl ov29_0230D7D4
	bl ov29_02336F4C
	b _02309BC0
_02309BA4:
	cmp sb, #0
	beq _02309BC0
	mov r2, #1
	mov r0, #0x1e
	mov r1, #0x18
	strb r2, [r7, #0x22]
	bl ov29_022EA370
_02309BC0:
	mov r0, r8
	mov sb, #1
	bl EntityIsValid__02308FBC
	cmp r0, #0
	beq _02309BE8
	ldr r0, [r8]
	cmp r0, #1
	bne _02309BE8
	cmp r8, r7
	movne sb, #0
_02309BE8:
	mov r0, #0
	mov r1, r8
	mov r2, r0
	strb r0, [r4, #0x156]
	bl SubstitutePlaceholderStringTags
	mov r1, r7
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r0, [r6, #4]
	cmp r0, #0x13
	cmpne r0, #4
	cmpne r0, #0x14
	ldrb r0, [r4, #6]
	bne _02309C50
	cmp r0, #0
	beq _02309C40
	ldr r2, _02309FF0 ; =0x00000C4B
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02309DC8
_02309C40:
	ldr r1, _02309FF0 ; =0x00000C4B
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309C50:
	cmp r0, #0
	beq _02309C98
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	bne _02309C7C
	ldr r0, _02309FF4 ; =0x02353220
	mov r1, sb, lsl #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309C7C:
	ldr r0, _02309FF8 ; =0x0235321C
	mov r1, sb, lsl #1
	ldrh r2, [r0, r1]
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02309DC8
_02309C98:
	ldrsh r0, [r4, #0xc]
	bl GetActiveTeamMember
	ldrb r1, [r4, #7]
	mov r6, r0
	cmp r1, #0
	bne _02309CD4
	ldrb r0, [r4, #0x48]
	bl JoinedAtRangeCheck2Veneer
	cmp r0, #0
	beq _02309CEC
	ldr r0, _02309FFC ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75c]
	cmp r0, #0
	bne _02309CEC
_02309CD4:
	ldr r0, _0230A000 ; =0x02353228
	mov r1, sb, lsl #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309CEC:
	mov r0, r4
	bl IsExperienceLocked
	cmp r0, #0
	beq _02309D3C
	mov r0, r4
	bl IsSpecialStoryAlly
	cmp r0, #0
	beq _02309D24
	ldr r0, _0230A004 ; =0x02353234
	mov r1, sb, lsl #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309D24:
	ldr r0, _0230A008 ; =0x0235322C
	mov r1, sb, lsl #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309D3C:
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	bne _02309D60
	ldr r0, _02309FF4 ; =0x02353220
	mov r1, sb, lsl #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309D60:
	ldrsh r0, [r6, #8]
	bl IsMonsterIdInNormalRange__022F9C68
	cmp r0, #0
	beq _02309DB4
	ldr r0, _02309FFC ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75d]
	cmp r0, #0
	beq _02309D9C
	ldr r0, _0230A00C ; =0x02353224
	mov r1, sb, lsl #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309D9C:
	ldr r0, _0230A010 ; =0x02353230
	mov r1, sb, lsl #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309DB4:
	ldr r0, _0230A014 ; =0x02353218
	mov r1, sb, lsl #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
_02309DC8:
	ldrb r0, [r4, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02309DE4
	ldr r0, [r4, #0xb4]
	bl FreeOtherWrappedMonsters
_02309DE4:
	ldrb r0, [r4, #0x62]
	tst r0, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	beq _02309F44
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _02309F44
	ldrb r0, [r4, #0x62]
	tst r0, #2
	ldreqsh r1, [r4, #0x66]
	ldreq r0, _0230A018 ; =0x00000153
	cmpeq r1, r0
	bne _02309F44
	mov r0, r7
	bl ov29_022E550C
	mov r0, #0
	strb r0, [r7, #0x22]
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _02309FD4 ; =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r4, #0x10]
	mov r2, #0
	strb r2, [r4, #0x162]
	mov r0, #1
	strb r0, [r4, #0x156]
	add r0, r4, #0x100
	ldrh r1, [r0, #0x4a]
	strh r1, [r0, #0x46]
	ldrh r1, [r0, #0x4c]
	strh r1, [r0, #0x48]
	ldrb r0, [r4, #7]
	cmp r0, #0
	ldrne r0, _02309FFC ; =0x02353538
	ldrne r1, [r0]
	strneb r2, [r1, #0x799]
	ldrne r0, [r0]
	strneb r2, [r0, #0x78d]
	add r0, r4, #0x62
	bl ItemZInit
	ldrb r0, [r4, #0xd8]
	cmp r0, #3
	bne _02309EC0
	mov r0, r8
	mov r1, r7
	mov r2, #3
	mov r3, #1
	bl ov29_02306728
	b _02309EDC
_02309EC0:
	cmp r0, #2
	bne _02309EDC
	mov r0, r8
	mov r1, r7
	mov r2, #2
	mov r3, #1
	bl ov29_02306728
_02309EDC:
	mov r0, r7
	bl ov29_023159D4
	mov r0, r4
	mov r1, #0
	bl ov29_022FDDC0
	bl ov10_022BDC68
	mov r0, r7
	bl RestorePpAllMovesSetFlags
	mov r0, r7
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	bl ov29_02304830
	mov r0, r7
	bl UpdateStatusIconFlags
	mov r0, #1
	mov r1, r7
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r0, r8
	ldr r1, _0230A01C ; =0x00000C4C
	bl LogMessageByIdWithPopup
	mov r0, r7
	bl ov29_0230D628
	mov r0, #0
	b _0230A918
_02309F44:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0230A224
	ldrb r0, [r4, #0x62]
	tst r0, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	beq _0230A224
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	ldreqsh r1, [r4, #0x66]
	ldreq r0, _0230A020 ; =0x00000159
	cmpeq r1, r0
	bne _0230A224
	mov sl, #0
	mov sb, sl
	ldr r6, _02309FFC ; =0x02353538
	b _0230A090
	.align 2, 0
_02309F98: .word 0x022C4598
_02309F9C: .word 0x00000C46
_02309FA0: .word 0x0000024D
_02309FA4: .word 0x0000270F
_02309FA8: .word 0x00000C41
_02309FAC: .word 0x023528A4
_02309FB0: .word 0x022C45C4
_02309FB4: .word 0x00000C42
_02309FB8: .word 0x00000C43
_02309FBC: .word 0x00000C44
_02309FC0: .word 0x00000C45
_02309FC4: .word 0x00000C47
_02309FC8: .word 0x023535D4
_02309FCC: .word 0x000002B6
_02309FD0: .word 0x00000C48
_02309FD4: .word 0x000003E7
_02309FD8: .word 0x02353330
_02309FDC: .word 0x0000025F
_02309FE0: .word 0x00000C49
_02309FE4: .word 0x00000C4A
_02309FE8: .word 0x022C4834
_02309FEC: .word 0x022C45FC
_02309FF0: .word 0x00000C4B
_02309FF4: .word 0x02353220
_02309FF8: .word 0x0235321C
_02309FFC: .word 0x02353538
_0230A000: .word 0x02353228
_0230A004: .word 0x02353234
_0230A008: .word 0x0235322C
_0230A00C: .word 0x02353224
_0230A010: .word 0x02353230
_0230A014: .word 0x02353218
_0230A018: .word 0x00000153
_0230A01C: .word 0x00000C4C
_0230A020: .word 0x00000159
_0230A024:
	ldr r0, [r6]
	add r0, r0, sb, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb28]
	mov r0, sl
	bl EntityIsValid__02308FBC
	cmp r0, #0
	cmpne sl, r7
	beq _0230A08C
	mov r0, r7
	mov r1, sl
	bl ov29_022E274C
	cmp r0, #0
	beq _0230A08C
	ldrsh r1, [sl, #4]
	ldrsh r0, [r7, #4]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	bgt _0230A08C
	ldrsh r1, [sl, #6]
	ldrsh r0, [r7, #6]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	ble _0230A098
_0230A08C:
	add sb, sb, #1
_0230A090:
	cmp sb, #4
	blt _0230A024
_0230A098:
	cmp sb, #4
	beq _0230A224
	mov r0, r7
	bl ov29_022E550C
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrh r2, [sl, #4]
	ldrh r1, [sl, #6]
	mov r0, sl
	strh r2, [sp, #0x18]
	strh r1, [sp, #0x1a]
	mov r2, r7
	mov r1, #0x260
	bl HandleFaint
	ldrsh r1, [sp, #0x18]
	ldrsh r2, [sp, #0x1a]
	mov r0, r7
	mov r3, #1
	bl ov29_022F85F0
	mov r0, r7
	mov r1, #0
	bl ov29_022E1A40
	mov r0, #0
	strb r0, [r7, #0x22]
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _02309FD4 ; =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	mov r0, r7
	strh r1, [r4, #0x10]
	bl ov29_022E66D8
	mov r2, #0
	strb r2, [r4, #0x162]
	mov r0, #1
	strb r0, [r4, #0x156]
	add r0, r4, #0x100
	ldrh r1, [r0, #0x4a]
	strh r1, [r0, #0x46]
	ldrh r1, [r0, #0x4c]
	strh r1, [r0, #0x48]
	ldrb r0, [r4, #7]
	cmp r0, #0
	ldrne r0, _02309FFC ; =0x02353538
	ldrne r1, [r0]
	strneb r2, [r1, #0x799]
	ldrne r0, [r0]
	strneb r2, [r0, #0x78d]
	add r0, r4, #0x62
	bl ItemZInit
	ldrb r0, [r4, #0xd8]
	cmp r0, #3
	bne _0230A190
	mov r0, r8
	mov r1, r7
	mov r2, #3
	mov r3, #1
	bl ov29_02306728
	b _0230A1AC
_0230A190:
	cmp r0, #2
	bne _0230A1AC
	mov r0, r8
	mov r1, r7
	mov r2, #2
	mov r3, #1
	bl ov29_02306728
_0230A1AC:
	mov r0, r7
	bl ov29_023159D4
	mov r0, r4
	mov r1, #0
	bl ov29_022FDDC0
	bl ov10_022BDC68
	mov r0, r7
	bl RestorePpAllMovesSetFlags
	mov r0, r7
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	bl ov29_02304830
	mov r0, r7
	bl UpdateStatusIconFlags
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, sl
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r0, r8
	ldr r1, _0230A920 ; =0x00000C4D
	bl LogMessageByIdWithPopup
	mov r0, r7
	bl ov29_0230D628
	mov r0, #0
	b _0230A918
_0230A224:
	mov r0, r7
	mov r1, #0x16
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _0230A5E0
	ldrb r0, [r4, #0x62]
	mov r6, #0
	mov sb, r6
	tst r0, #1
	movne r0, #1
	moveq r0, r6
	tst r0, #0xff
	beq _0230A29C
	mov r0, r7
	mov r1, #0x6f
	bl AbilityIsActive2
	cmp r0, #0
	bne _0230A29C
	ldrb r0, [r4, #0x62]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _0230A29C
	ldrsh r0, [r4, #0x66]
	cmp r0, #0x49
	addeq r6, r4, #0x62
	beq _0230A29C
	cmp r0, #0x69
	addeq sb, r4, #0x62
_0230A29C:
	cmp r6, #0
	ldreqb r0, [r4, #6]
	cmpeq r0, #0
	bne _0230A330
	ldr r0, _0230A924 ; =0x020AF6B8
	mov sl, #0
	ldr ip, [r0]
	mov lr, sl
	mov r1, #1
	mov r0, #6
	b _0230A328
_0230A2C8:
	mul r2, sl, r0
	ldr r3, [ip, #0x384]
	add fp, r3, r2
	ldrb r2, [r3, r2]
	tst r2, #1
	movne r3, r1
	moveq r3, lr
	tst r3, #0xff
	beq _0230A324
	tst r2, #8
	movne r2, #1
	moveq r2, #0
	tst r2, #0xff
	ldreqb r2, [fp, #1]
	cmpeq r2, #0
	bne _0230A324
	ldrsh r2, [fp, #4]
	cmp r2, #0x49
	moveq r6, fp
	beq _0230A330
	cmp sb, #0
	cmpeq r2, #0x69
	moveq sb, fp
_0230A324:
	add sl, sl, #1
_0230A328:
	cmp sl, #0x32
	blt _0230A2C8
_0230A330:
	cmp r6, #0
	beq _0230A45C
	mov r0, r7
	bl ov29_022FBD24
	mov r0, r7
	bl ov29_022E550C
	mov r0, r6
	bl ov29_0230D688
	mov r0, #0
	strb r0, [r7, #0x22]
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _02309FD4 ; =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r4, #0x10]
	mov r2, #0
	strb r2, [r4, #0x162]
	mov r0, #1
	strb r0, [r4, #0x156]
	add r0, r4, #0x100
	ldrh r1, [r0, #0x4a]
	strh r1, [r0, #0x46]
	ldrh r1, [r0, #0x4c]
	strh r1, [r0, #0x48]
	ldrb r0, [r4, #7]
	cmp r0, #0
	ldrne r0, _02309FFC ; =0x02353538
	ldrne r1, [r0]
	strneb r2, [r1, #0x799]
	ldrne r0, [r0]
	strneb r2, [r0, #0x78d]
	ldrb r0, [r4, #0xd8]
	cmp r0, #3
	bne _0230A3D8
	mov r0, r8
	mov r1, r7
	mov r2, #3
	mov r3, #1
	bl ov29_02306728
	b _0230A3F4
_0230A3D8:
	cmp r0, #2
	bne _0230A3F4
	mov r0, r8
	mov r1, r7
	mov r2, #2
	mov r3, #1
	bl ov29_02306728
_0230A3F4:
	mov r0, r7
	bl ov29_023159D4
	mov r0, r4
	mov r1, #0
	bl ov29_022FDDC0
	bl ov10_022BDC68
	mov r0, r7
	bl RestorePpAllMovesSetFlags
	mov r0, r7
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	bl ov29_02304830
	mov r0, r7
	bl UpdateStatusIconFlags
	mov r0, #1
	mov r1, r7
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r0, r8
	ldr r1, _0230A01C ; =0x00000C4C
	bl LogMessageByIdWithPopup
	mov r0, r7
	bl ov29_0230D628
	mov r0, #0
	b _0230A918
_0230A45C:
	ldr r0, _02309FFC ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0230A5E0
	cmp sb, #0
	beq _0230A5E0
	bl ov29_022EAF20
	ldrb r1, [r4, #0xd8]
	mov r6, r0
	cmp r1, #2
	bne _0230A4A0
	ldrb r2, [r4, #0xd8]
	mov r0, r7
	mov r1, r7
	mov r3, #0
	bl ov29_02306728
_0230A4A0:
	mov r0, #0
	mov r1, #0x69
	bl ov29_02344B9C
	mov r0, #1
	mov r1, #0x49
	bl ov29_02344B9C
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, #1
	bl ov29_022EFB20
	mov r0, r7
	bl ov29_022E550C
	mov r0, sb
	bl ov29_0230D688
	mov r0, #0
	strb r0, [r7, #0x22]
	mov r0, #1
	strb r0, [r4, #0x23d]
	mov r0, r7
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	bl ov29_02304830
	mov r0, #1
	mov r1, r7
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r0, r8
	ldr r1, _0230A01C ; =0x00000C4C
	bl LogMessageByIdWithPopup
	mov r0, #0xa
	bl ov29_0234BA54
	mov r0, #0
	bl ov29_0234B1A4
	mov r0, #1
	bl ov29_022F0534
	ldr r0, _0230A928 ; =0x00000C6A
	bl ov29_022F0780
	mov r0, r7
	mov r1, #0xb
	bl ov29_02304830
	ldr r0, _0230A92C ; =0x00000C6B
	mov r1, r7
	mov r2, #0
	bl ov29_022F0604
	mov r0, #4
	bl ov29_022EAF34
	mov r0, r7
	bl ov29_022F0518
	mov r0, r7
	mov r1, #6
	bl ov29_02304830
	ldr r0, _0230A930 ; =0x00000C6C
	bl ov29_022F0780
	bl ov29_022F05E4
	mov r0, #1
	bl ov29_022EFB84
	mov r0, #1
	strb r0, [r7, #0x22]
	mov r0, #0
	strb r0, [r4, #0x23d]
	mov r0, r8
	ldr r1, _0230A934 ; =0x00000C6D
	bl LogMessageByIdWithPopup
	mov r0, #0xa
	bl ov29_0234BA54
	mov r0, #0
	bl ov29_022F0534
	ldr r0, _02309FFC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd6]
	bl ov29_022EAD00
	bl ov29_022EAE14
	mov r0, r6
	bl ov29_022EAF34
	mov r0, r7
	bl ov29_0230D628
_0230A5E0:
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0230A69C
	ldrb r0, [r4, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0230A690
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0230A67C
	mov r0, #9
	bl IsCurrentMissionType
	cmp r0, #0
	beq _0230A648
	mov r0, r4
	bl ov29_022FBDE0
	cmp r0, #0
	beq _0230A648
	ldrb r0, [r4, #0x62]
	tst r0, #0x40
	bicne r1, r0, #0x40
	andne r0, r1, #0xff
	orrne r0, r0, #0x80
	strneb r0, [r4, #0x62]
_0230A648:
	mov r0, r7
	add r1, r7, #4
	add r2, r4, #0x62
	mov r3, #1
	bl ov29_02345A3C
	cmp r0, #0
	beq _0230A684
	ldrb r0, [r4, #0x62]
	tst r0, #0x80
	beq _0230A684
	mov r0, #1
	bl ov29_0234969C
	b _0230A684
_0230A67C:
	add r0, r4, #0x62
	bl sub_0200FB54
_0230A684:
	add r0, r4, #0x62
	bl ItemZInit
	b _0230A69C
_0230A690:
	mov r0, r8
	mov r1, r7
	bl ov29_0230F9D8
_0230A69C:
	ldrb r0, [r4, #0x100]
	mov r6, #0
	cmp r0, #0
	ldrne r0, _02309FFC ; =0x02353538
	ldrne r1, _02309FD4 ; =0x000003E7
	ldrne r0, [r0]
	addne r0, r0, #0x700
	strneh r1, [r0, #0x96]
	ldr r0, [r8]
	cmp r0, #1
	bne _0230A7FC
	ldrsh r0, [r4, #2]
	ldrb r1, [r4, #0xa]
	ldr sl, [r8, #0xb4]
	bl GetExp
	mov sb, r0
	mov r0, r4
	bl ov29_02303E0C
	cmp r0, #0
	bne _0230A7FC
	ldrb r0, [r4, #0x100]
	cmp r0, #0
	beq _0230A714
	add r0, r4, #0x100
	ldrsh r2, [r0, #0x68]
	mov r0, #0xc
	ldr r1, _0230A938 ; =0x022C593C
	smulbb r0, r2, r0
	ldrsh sb, [r1, r0]
	b _0230A740
_0230A714:
	ldrb r0, [r4, #0x108]
	cmp r0, #0
	addeq r0, sb, sb, lsr #31
	moveq sb, r0, asr #1
	beq _0230A738
	cmp r0, #2
	addeq r0, sb, sb, lsl #1
	addeq r0, r0, r0, lsr #31
	moveq sb, r0, asr #1
_0230A738:
	cmp sb, #0
	moveq sb, #1
_0230A740:
	ldrb r0, [r4, #0xfd]
	cmp r0, #0
	movne r0, #1
	strneb r0, [sl, #0x155]
	ldr r0, [sp, #0x88]
	cmp r0, #1
	bne _0230A7FC
	ldrb r0, [sl, #6]
	cmp r0, #0
	bne _0230A7D4
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0230A7FC
	mov r0, r8
	mov r1, r8
	mov r2, sb
	bl AddExpSpecial
	ldr r6, _02309FFC ; =0x02353538
	mov r4, #0
_0230A78C:
	ldr r0, [r6]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb28]
	mov r0, sl
	bl EntityIsValid__02308FBC
	cmp r0, #0
	cmpne sl, r8
	beq _0230A7C0
	mov r0, r8
	mov r1, sl
	mov r2, sb
	bl AddExpSpecial
_0230A7C0:
	add r4, r4, #1
	cmp r4, #4
	blt _0230A78C
	mov r6, #1
	b _0230A7FC
_0230A7D4:
	ldr r0, _02309FFC ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl CanEnemyEvolve
	cmp r0, #0
	movne r1, #1
	ldrne r0, _02309FFC ; =0x02353538
	strneb r1, [sl, #0x153]
	ldrne r0, [r0]
	strneb r1, [r0, #0xf]
_0230A7FC:
	mov r0, r8
	bl EntityIsValid__02308FBC
	cmp r0, #0
	beq _0230A824
	ldr r0, [r8]
	cmp r0, #1
	ldreq r0, [r8, #0xb4]
	ldreqb r0, [r0, #7]
	cmpeq r0, #0
	moveq r6, #0
_0230A824:
	cmp r6, #0
	beq _0230A8CC
	add r0, sp, #0x1c
	mov r1, r7
	bl ov29_022F9058
	mov r0, r8
	mov r1, r7
	bl ov29_0230DBD0
	cmp r0, #0
	beq _0230A8A8
	add r2, sp, #0x1c
	mov r0, r8
	mov r1, r7
	bl ov29_0230E064
	cmp r0, #0
	bne _0230A898
	mov r0, r7
	bl EntityIsValid__02308FBC
	cmp r0, #0
	beq _0230A8F4
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl ov29_0230AA0C
	mov r0, r7
	mov r2, r8
	mov r1, #0x234
	bl HandleFaint
	b _0230A8F4
_0230A898:
	ldr r0, _0230A93C ; =0x0237CA6C
	mov r1, #1
	strb r1, [r0]
	b _0230A8F4
_0230A8A8:
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl ov29_0230AA0C
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl HandleFaint
	b _0230A8F4
_0230A8CC:
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl ov29_0230AA0C
	mov r0, r8
	bl ov29_022ECD84
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl HandleFaint
_0230A8F4:
	ldr r0, _0230A93C ; =0x0237CA6C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0230A914
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0230A914
	bl ov29_0233847C
_0230A914:
	mov r0, #1
_0230A918:
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230A920: .word 0x00000C4D
_0230A924: .word 0x020AF6B8
_0230A928: .word 0x00000C6A
_0230A92C: .word 0x00000C6B
_0230A930: .word 0x00000C6C
_0230A934: .word 0x00000C6D
_0230A938: .word 0x022C593C
_0230A93C: .word 0x0237CA6C
	arm_func_end ApplyDamage

	arm_func_start DefenderAbilityIsActive__0230A940
DefenderAbilityIsActive__0230A940: ; 0x0230A940
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r7, r6
	beq _0230A984
	bl IsMonster__0230A994
	cmp r0, #0
	cmpne r4, #0
	beq _0230A984
	mov r0, r7
	mov r1, #0x53
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_0230A984:
	mov r0, r6
	mov r1, r5
	bl AbilityIsActive2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DefenderAbilityIsActive__0230A940

	arm_func_start IsMonster__0230A994
IsMonster__0230A994: ; 0x0230A994
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end IsMonster__0230A994

	arm_func_start ExclusiveItemEffectIsActive__0230A9B8
ExclusiveItemEffectIsActive__0230A9B8: ; 0x0230A9B8
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #6]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r2, #0x228
	bl ExclusiveItemEffectFlagTest
	ldmia sp!, {r3, pc}
	arm_func_end ExclusiveItemEffectIsActive__0230A9B8

	arm_func_start ItemIsActive__0230A9DC
ItemIsActive__0230A9DC: ; 0x0230A9DC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ItemIsActive__0230A9DC

	arm_func_start ov29_0230AA0C
ov29_0230AA0C: ; 0x0230AA0C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, r2
	mov r2, #0x76
	mov r3, #1
	mov r6, r0
	mov r5, r1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _0230AA78
	ldr r0, _0230AA84 ; =0x022C4594
	ldrsh r0, [r0]
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	ldrne ip, _0230AA88 ; =0x0000026F
	cmpne r4, ip
	beq _0230AA78
	mov r0, #0
	str r0, [sp]
	mov r0, r6
	mov r1, r5
	add r2, r5, #4
	mov r3, #1
	str ip, [sp, #4]
	bl ov29_02320788
	mov r0, #1
	b _0230AA7C
_0230AA78:
	mov r0, #0
_0230AA7C:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0230AA84: .word 0x022C4594
_0230AA88: .word 0x0000026F
	arm_func_end ov29_0230AA0C

	arm_func_start ov29_0230AA8C
ov29_0230AA8C: ; 0x0230AA8C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r3, _0230AB4C ; =0x02352838
	mov sl, r0
	ldrh r4, [r3]
	ldrh r3, [r3, #2]
	mov sb, r1
	mov r8, r2
	strh r4, [sp]
	strh r3, [sp, #2]
	bl ov29_0230AB58
	ldr fp, _0230AB50 ; =0x02353538
	mov r7, r0
	mov r6, #0
	mov r5, #1
	add r4, sp, #0
_0230AAC8:
	cmp r7, #0
	bne _0230AB04
	mov r0, r8
	bl ov29_0230ABF0
	cmp r0, #0
	beq _0230AB04
	mov r0, sl
	mov r1, sb
	mov r2, r6
	bl ov29_0230AC04
	cmp r0, #0
	ldrne r1, [fp]
	movne r0, #0
	strneb r5, [r1, #0x1d4]
	bne _0230AB18
_0230AB04:
	mov r0, sl
	mov r1, sb
	mov r2, r6
	mov r3, r8
	bl GetTypeMatchup
_0230AB18:
	add r1, r6, #1
	mov r1, r1, lsl #0x10
	mov r2, r6, lsl #1
	mov r6, r1, asr #0x10
	strh r0, [r4, r2]
	cmp r6, #2
	blt _0230AAC8
	ldrsh r2, [sp]
	ldr r0, _0230AB54 ; =0x022C4D14
	ldrsh r1, [sp, #2]
	add r0, r0, r2, lsl #4
	ldr r0, [r0, r1, lsl #2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230AB4C: .word 0x02352838
_0230AB50: .word 0x02353538
_0230AB54: .word 0x022C4D14
	arm_func_end ov29_0230AA8C

	arm_func_start ov29_0230AB58
ov29_0230AB58: ; 0x0230AB58
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, #0
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r5, #0x57
	mov fp, r6
	mov r4, #1
	b _0230ABDC
_0230AB7C:
	mov r0, sl
	mov r1, r5
	ldr r7, [sb, #0xb4]
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230ABB4
	add r0, r7, r6
	ldrb r0, [r0, #0x5e]
	cmp r0, #0xe
	bne _0230ABB4
	cmp r8, #1
	cmpne r8, #7
	moveq r0, r4
	beq _0230ABB8
_0230ABB4:
	mov r0, fp
_0230ABB8:
	cmp r0, #0
	ldrne r1, _0230ABEC ; =0x02353538
	movne r0, #1
	ldrne r1, [r1]
	strneb r0, [r1, #0x1cc]
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
_0230ABDC:
	cmp r6, #2
	blt _0230AB7C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230ABEC: .word 0x02353538
	arm_func_end ov29_0230AB58

	arm_func_start ov29_0230ABF0
ov29_0230ABF0: ; 0x0230ABF0
	cmp r0, #1
	cmpne r0, #7
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end ov29_0230ABF0

	arm_func_start ov29_0230AC04
ov29_0230AC04: ; 0x0230AC04
	stmdb sp!, {r3, lr}
	ldr r3, [r1, #0xb4]
	add r1, r3, r2
	ldrb r1, [r1, #0x5e]
	cmp r1, #0xe
	bne _0230AC50
	ldrb r1, [r3, #0xfe]
	cmp r1, #0
	bne _0230AC38
	mov r1, #0x45
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	beq _0230AC40
_0230AC38:
	mov r0, #1
	b _0230AC44
_0230AC40:
	mov r0, #0
_0230AC44:
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
_0230AC50:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0230AC04

	arm_func_start GetTypeMatchup
GetTypeMatchup: ; 0x0230AC58
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	ldr r4, [r7, #0xb4]
	mov r6, r2
	ldrb r1, [r4, #0xf5]
	mov r5, r3
	cmp r1, #1
	beq _0230AC88
	mov r1, #0x46
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	beq _0230ACA0
_0230AC88:
	cmp r5, #0xb
	addeq r0, r4, r6
	ldreqb r0, [r0, #0x5e]
	cmpeq r0, #0x10
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_0230ACA0:
	cmp r5, #9
	bne _0230ACE0
	bl GravityIsActive
	cmp r0, #0
	beq _0230ACCC
	add r0, r4, r6
	ldrb r0, [r0, #0x5e]
	cmp r0, #0xa
	bne _0230ACE0
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0230ACCC:
	mov r0, r7
	bl HasConditionalGroundImmunity
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_0230ACE0:
	ldr r1, _0230AD00 ; =0x022C56B0
	mov r0, #0x24
	mla r0, r5, r0, r1
	add r1, r4, r6
	ldrb r1, [r1, #0x5e]
	mov r1, r1, lsl #1
	ldrsh r0, [r1, r0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0230AD00: .word 0x022C56B0
	arm_func_end GetTypeMatchup

	arm_func_start ov29_0230AD04
ov29_0230AD04: ; 0x0230AD04
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x64
	ldr r5, _0230B774 ; =0x02352838
	mov sl, r1
	ldr r4, [r5, #0x1c]
	ldr r5, [r5, #0x20]
	ldr r8, [sp, #0x88]
	ldr r1, [sp, #0x90]
	ldr r7, [sp, #0x8c]
	str r1, [sp, #0x90]
	ldr r6, [sl, #0xb4]
	mov r1, #1
	mov fp, r0
	mov sb, r2
	str r3, [sp, #4]
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	bl IntToFixedPoint64
	mov r0, #0
	str r0, [sp, #0x30]
	strb r0, [r7, #0xe]
	ldr r1, [sp, #0x30]
	mov r0, sb
	strb r1, [r7, #0xf]
	bl EntityIsValid__02308FBC
	cmp r0, #0
	moveq r0, #1
	beq _0230B76C
	mov r0, r8
	bl ov29_0230ABF0
	str r0, [sp, #0x2c]
	mov r0, sl
	mov r1, sb
	mov r2, #0x35
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	cmpne r8, #0
	movne r0, #1
	strne r0, [sp, #0x30]
	mov r3, #2
	mov r0, sl
	mov r1, sb
	mov r2, r8
	str r3, [r7, #8]
	bl ov29_0230AB58
	ldr r3, _0230B778 ; =0x022C4820
	str r0, [sp, #0x28]
	ldr r0, [r3]
	ldr r2, _0230B77C ; =0x022C4824
	str r0, [sp, #0x24]
	ldr r0, [r2]
	ldr r1, _0230B780 ; =0x022C482C
	str r0, [sp, #0x20]
	ldr r0, [r1]
	ldr r1, _0230B784 ; =0x022C4758
	str r0, [sp, #0x1c]
	ldr r0, _0230B788 ; =0x022C474C
	mov r4, #0
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [r1]
	ldr r1, _0230B78C ; =0x022C481C
	str r0, [sp, #0x14]
	ldr r0, _0230B790 ; =0x022C4810
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldr r0, [r1]
	str r0, [sp, #0xc]
	ldr r0, _0230B794 ; =0x022C4818
	ldr r0, [r0]
	str r0, [sp, #8]
	b _0230AF8C
_0230AE28:
	ldr r0, [sp, #0x90]
	cmp r0, #0
	bne _0230AE90
	mov r0, sl
	mov r1, #0x3b
	bl IqSkillIsEnabled
	cmp r0, #0
	bne _0230AE5C
	mov r0, sb
	mov r1, #0x3b
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _0230AE90
_0230AE5C:
	ldr r1, [sp, #0x24]
	add r0, sp, #0x44
	bl FixedPoint32To64
	ldr r1, [sp, #0x20]
	add r0, sp, #0x4c
	bl FixedPoint32To64
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x54
	bl FixedPoint32To64
	ldr r1, [sp, #0x18]
	add r0, sp, #0x5c
	bl FixedPoint32To64
	b _0230AEC0
_0230AE90:
	ldr r1, [sp, #0x14]
	add r0, sp, #0x44
	bl FixedPoint32To64
	ldr r1, [sp, #0x10]
	add r0, sp, #0x4c
	bl FixedPoint32To64
	ldr r1, [sp, #0xc]
	add r0, sp, #0x54
	bl FixedPoint32To64
	ldr r1, [sp, #8]
	add r0, sp, #0x5c
	bl FixedPoint32To64
_0230AEC0:
	mov r0, fp
	bl FixedPoint64IsZero
	cmp r0, #0
	bne _0230AF94
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _0230AF1C
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0230AF1C
	mov r0, sl
	mov r1, sb
	mov r2, r4, lsl #0x10
	mov r2, r2, asr #0x10
	bl ov29_0230AC04
	cmp r0, #0
	beq _0230AF1C
	ldr r0, _0230B798 ; =0x02353538
	mov r5, #0
	ldr r1, [r0]
	mov r0, #1
	strb r0, [r1, #0x1d4]
	b _0230AF38
_0230AF1C:
	mov r0, sl
	mov r1, sb
	mov r2, r4, lsl #0x10
	mov r2, r2, asr #0x10
	mov r3, r8
	bl GetTypeMatchup
	mov r5, r0
_0230AF38:
	mov r0, sl
	mov r1, #0x3b
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _0230AF64
	add r2, sp, #0x44
	mov r0, fp
	mov r1, fp
	add r2, r2, r5, lsl #3
	bl MultiplyFixedPoint64
	b _0230AF80
_0230AF64:
	cmp r5, #2
	beq _0230AF80
	add r2, sp, #0x44
	mov r0, fp
	mov r1, fp
	add r2, r2, r5, lsl #3
	bl MultiplyFixedPoint64
_0230AF80:
	add r0, sp, #0x34
	str r5, [r0, r4, lsl #2]
	add r4, r4, #1
_0230AF8C:
	cmp r4, #2
	blt _0230AE28
_0230AF94:
	ldr r0, _0230B798 ; =0x02353538
	ldr r4, [sp, #0x34]
	ldr r2, [r0]
	ldr r1, _0230B79C ; =0x022C4D14
	strb r4, [r2, #0x18c]
	ldr r3, [sp, #0x38]
	ldr r2, [r0]
	add r1, r1, r4, lsl #4
	ldr r0, [r1, r3, lsl #2]
	strb r3, [r2, #0x18d]
	cmp r0, #3
	str r0, [r7, #8]
	moveq r4, #1
	beq _0230AFEC
	ldr r0, [sp, #0x30]
	mov r4, #0
	cmp r0, #0
	ldrne r0, _0230B774 ; =0x02352838
	ldrne r1, [r0, #0x3c]
	ldrne r0, [r0, #0x40]
	strne r1, [fp]
	strne r0, [fp, #4]
_0230AFEC:
	mov r0, sl
	mov r1, #0x50
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230B02C
	ldr r0, [r7, #8]
	cmp r0, #1
	bne _0230B02C
	ldr r1, _0230B7A0 ; =0x022C47C0
	add r0, sp, #0x3c
	ldr r1, [r1]
	bl FixedPoint32To64
	add r2, sp, #0x3c
	mov r0, fp
	mov r1, fp
	bl MultiplyFixedPoint64
_0230B02C:
	mov r0, sl
	mov r1, sb
	mov r2, #0x6c
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	bne _0230B064
	mov r0, sl
	mov r1, sb
	mov r2, #0x6e
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _0230B080
_0230B064:
	ldr r0, [r7, #8]
	cmp r0, #3
	bne _0230B080
	ldr r2, _0230B7A4 ; =0x02352864
	mov r0, fp
	mov r1, fp
	bl MultiplyFixedPoint64
_0230B080:
	mov r0, sb
	mov r1, #0x5a
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	beq _0230B0A4
	ldr r2, _0230B7A8 ; =0x0235283C
	mov r0, fp
	mov r1, fp
	bl MultiplyFixedPoint64
_0230B0A4:
	ldr r0, [sp, #0x90]
	cmp r0, #0
	bne _0230B104
	mov r0, sl
	mov r1, #0x64
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230B104
	ldr r0, _0230B7AC ; =0x022C455C
	ldrsh r1, [r0]
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt _0230B104
	ldr r2, _0230B7B0 ; =0x02352844
	mov r0, fp
	mov r1, fp
	bl MultiplyFixedPoint64
	mov r1, #0x64
	ldr r2, _0230B7B4 ; =0x00000C3E
	mov r0, sl
	str r1, [sp]
	mov r1, sb
	mov r3, #2
	bl ov29_0234B250
_0230B104:
	cmp r8, #2
	cmpne r8, #6
	bne _0230B14C
	mov r0, sl
	mov r1, sb
	mov r2, #2
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _0230B14C
	ldr r0, _0230B798 ; =0x02353538
	ldr r2, _0230B7A8 ; =0x0235283C
	ldr r3, [r0]
	mov r5, #1
	mov r0, fp
	mov r1, fp
	strb r5, [r3, #0x1c5]
	bl MultiplyFixedPoint64
_0230B14C:
	cmp r8, #2
	bne _0230B198
	mov r0, sl
	mov r1, sb
	bl ov29_02313C74
	cmp r0, #0
	beq _0230B198
	ldr r1, _0230B798 ; =0x02353538
	mov r0, fp
	ldr r2, [r1]
	mov r3, #1
	mov r1, #0
	strb r3, [r2, #0x1c6]
	bl IntToFixedPoint64
	mov r4, #0
	str r4, [r7, #8]
	strb r4, [r7, #0xe]
	mov r0, #1
	strb r0, [r7, #0xf]
_0230B198:
	cmp r8, #2
	bne _0230B1DC
	mov r0, sl
	mov r1, sb
	mov r2, #0x5f
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _0230B1DC
	ldr r0, _0230B798 ; =0x02353538
	ldr r2, _0230B7A8 ; =0x0235283C
	ldr r3, [r0]
	mov r5, #1
	mov r0, fp
	mov r1, fp
	strb r5, [r3, #0x1c5]
	bl MultiplyFixedPoint64
_0230B1DC:
	cmp r8, #9
	bne _0230B248
	mov r0, sl
	mov r1, #0x53
	bl AbilityIsActive2
	cmp r0, #0
	bne _0230B208
	mov r0, sb
	bl LevitateIsActive
	cmp r0, #0
	bne _0230B218
_0230B208:
	mov r0, sb
	bl HasConditionalGroundImmunity
	cmp r0, #0
	beq _0230B248
_0230B218:
	ldr r1, _0230B798 ; =0x02353538
	mov r0, fp
	ldr r2, [r1]
	mov r3, #1
	mov r1, #0
	strb r3, [r2, #0x1c7]
	bl IntToFixedPoint64
	mov r4, #0
	str r4, [r7, #8]
	strb r4, [r7, #0xe]
	mov r0, #1
	strb r0, [r7, #0xf]
_0230B248:
	cmp r8, #3
	bne _0230B2F4
	mov r0, sl
	mov r1, #0x10
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230B2F4
	ldrsh r2, [r6, #0x12]
	ldrsh r1, [r6, #0x16]
	ldr r0, _0230B7B8 ; =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	mov r0, r2, asr #1
	ldrsh r1, [r6, #0x10]
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	movle r0, #1
	movgt r0, #0
	and r7, r0, #0xff
	mov r0, r6
	mov r2, r7
	mov r1, #0x80
	bl ov29_023023C0
	mov r5, r0
	cmp r7, #0
	beq _0230B2D4
	ldr r0, _0230B798 ; =0x02353538
	ldr r2, _0230B7BC ; =0x0235284C
	ldr r3, [r0]
	mov r7, #1
	mov r0, fp
	mov r1, fp
	strb r7, [r3, #0x1c8]
	bl MultiplyFixedPoint64
_0230B2D4:
	cmp r5, #0
	beq _0230B2F4
	mov r0, sl
	bl ov29_022E6214
	ldr r2, _0230B7C0 ; =0x00000C4F
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_0230B2F4:
	cmp r8, #4
	bne _0230B3A0
	mov r0, sl
	mov r1, #0x1a
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230B3A0
	ldrsh r2, [r6, #0x12]
	ldrsh r1, [r6, #0x16]
	ldr r0, _0230B7B8 ; =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	mov r0, r2, asr #1
	ldrsh r1, [r6, #0x10]
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	movle r0, #1
	movgt r0, #0
	and r7, r0, #0xff
	mov r0, r6
	mov r2, r7
	mov r1, #2
	bl ov29_023023C0
	mov r5, r0
	cmp r7, #0
	beq _0230B380
	ldr r0, _0230B798 ; =0x02353538
	ldr r2, _0230B7BC ; =0x0235284C
	ldr r3, [r0]
	mov r7, #1
	mov r0, fp
	mov r1, fp
	strb r7, [r3, #0x1c9]
	bl MultiplyFixedPoint64
_0230B380:
	cmp r5, #0
	beq _0230B3A0
	mov r0, sl
	bl ov29_022E61C8
	mov r0, sl
	mov r1, sb
	mov r2, #0xc50
	bl LogMessageByIdWithPopupCheckUserTarget
_0230B3A0:
	cmp r8, #0xc
	bne _0230B44C
	mov r0, sl
	mov r1, #0x43
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230B44C
	ldrsh r2, [r6, #0x12]
	ldrsh r1, [r6, #0x16]
	ldr r0, _0230B7B8 ; =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	mov r0, r2, asr #1
	ldrsh r1, [r6, #0x10]
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	movle r0, #1
	movgt r0, #0
	and r7, r0, #0xff
	mov r0, r6
	mov r2, r7
	mov r1, #0x10
	bl ov29_023023C0
	mov r5, r0
	cmp r7, #0
	beq _0230B42C
	ldr r0, _0230B798 ; =0x02353538
	ldr r2, _0230B7BC ; =0x0235284C
	ldr r3, [r0]
	mov r7, #1
	mov r0, fp
	mov r1, fp
	strb r7, [r3, #0x1ca]
	bl MultiplyFixedPoint64
_0230B42C:
	cmp r5, #0
	beq _0230B44C
	mov r0, sl
	bl ov29_022E64C4
	ldr r2, _0230B7C4 ; =0x00000C51
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_0230B44C:
	cmp r8, #2
	bne _0230B534
	mov r0, sl
	mov r1, #0x46
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230B4F8
	ldrsh r2, [r6, #0x12]
	ldrsh r1, [r6, #0x16]
	ldr r0, _0230B7B8 ; =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	mov r0, r2, asr #1
	ldrsh r1, [r6, #0x10]
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	movle r0, #1
	movgt r0, #0
	and r7, r0, #0xff
	mov r0, r6
	mov r2, r7
	mov r1, #0x20
	bl ov29_023023C0
	mov r5, r0
	cmp r7, #0
	beq _0230B4D8
	ldr r0, _0230B798 ; =0x02353538
	ldr r2, _0230B7BC ; =0x0235284C
	ldr r3, [r0]
	mov r7, #1
	mov r0, fp
	mov r1, fp
	strb r7, [r3, #0x1cb]
	bl MultiplyFixedPoint64
_0230B4D8:
	cmp r5, #0
	beq _0230B4F8
	mov r0, sl
	bl ov29_022E6510
	ldr r2, _0230B7C8 ; =0x00000C52
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_0230B4F8:
	mov r0, sl
	mov r1, sb
	mov r2, #0x55
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _0230B534
	ldr r0, _0230B798 ; =0x02353538
	ldr r2, _0230B7B0 ; =0x02352844
	ldr r3, [r0]
	mov r5, #1
	mov r0, fp
	mov r1, fp
	strb r5, [r3, #0x1cb]
	bl MultiplyFixedPoint64
_0230B534:
	ldrb r0, [r6, #0xbf]
	cmp r0, #1
	bne _0230B560
	ldr r1, _0230B7CC ; =0x022C4744
	add r0, sp, #0x3c
	ldr r1, [r1]
	bl FixedPoint32To64
	add r2, sp, #0x3c
	mov r0, fp
	mov r1, fp
	bl MultiplyFixedPoint64
_0230B560:
	mov r0, fp
	bl FixedPoint64IsZero
	cmp r0, #0
	bne _0230B5CC
	mov r0, sl
	mov r1, r8
	bl MonsterIsType
	cmp r0, #0
	beq _0230B5CC
	ldr r1, _0230B798 ; =0x02353538
	mov r0, sl
	ldr r2, [r1]
	mov r3, #1
	mov r1, #0x63
	strb r3, [r2, #0x1cf]
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230B5BC
	ldr r2, _0230B7BC ; =0x0235284C
	mov r0, fp
	mov r1, fp
	bl MultiplyFixedPoint64
	b _0230B5CC
_0230B5BC:
	ldr r2, _0230B7B0 ; =0x02352844
	mov r0, fp
	mov r1, fp
	bl MultiplyFixedPoint64
_0230B5CC:
	mov r0, sl
	bl GetApparentWeather
	mov r5, r0
	cmp r5, #1
	bne _0230B634
	cmp r8, #2
	bne _0230B60C
	ldr r0, _0230B798 ; =0x02353538
	ldr r2, _0230B7B0 ; =0x02352844
	ldr r3, [r0]
	mov r7, #1
	mov r0, fp
	mov r1, fp
	strb r7, [r3, #0x1c4]
	bl MultiplyFixedPoint64
	b _0230B634
_0230B60C:
	cmp r8, #3
	bne _0230B634
	ldr r0, _0230B798 ; =0x02353538
	ldr r2, _0230B7A8 ; =0x0235283C
	ldr r3, [r0]
	mov r7, #1
	mov r0, fp
	mov r1, fp
	strb r7, [r3, #0x1c4]
	bl MultiplyFixedPoint64
_0230B634:
	cmp r5, #4
	bne _0230B690
	cmp r8, #2
	bne _0230B668
	ldr r0, _0230B798 ; =0x02353538
	ldr r2, _0230B7A8 ; =0x0235283C
	ldr r3, [r0]
	mov r7, #1
	mov r0, fp
	mov r1, fp
	strb r7, [r3, #0x1c3]
	bl MultiplyFixedPoint64
	b _0230B690
_0230B668:
	cmp r8, #3
	bne _0230B690
	ldr r0, _0230B798 ; =0x02353538
	ldr r2, _0230B7B0 ; =0x02352844
	ldr r3, [r0]
	mov r7, #1
	mov r0, fp
	mov r1, fp
	strb r7, [r3, #0x1c3]
	bl MultiplyFixedPoint64
_0230B690:
	cmp r5, #3
	bne _0230B6C0
	cmp r8, #1
	beq _0230B6C0
	ldr r2, _0230B7D0 ; =0x0235285C
	mov r0, fp
	mov r1, fp
	bl MultiplyFixedPoint64
	ldr r0, _0230B798 ; =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x1c2]
_0230B6C0:
	ldr r0, _0230B798 ; =0x02353538
	ldr r7, [r0]
	add r0, r7, #0xc000
	ldrb r0, [r0, #0xd5b]
	cmp r0, #0
	bne _0230B6E0
	cmp r5, #6
	bne _0230B700
_0230B6E0:
	cmp r8, #5
	bne _0230B700
	ldr r2, _0230B7A8 ; =0x0235283C
	mov r3, #1
	mov r0, fp
	mov r1, fp
	strb r3, [r7, #0x1d0]
	bl MultiplyFixedPoint64
_0230B700:
	ldr r0, _0230B798 ; =0x02353538
	ldr r5, [r0]
	add r0, r5, #0xc000
	ldrb r0, [r0, #0xd5c]
	cmp r0, #0
	beq _0230B738
	cmp r8, #2
	bne _0230B738
	ldr r2, _0230B7A8 ; =0x0235283C
	mov r3, #1
	mov r0, fp
	mov r1, fp
	strb r3, [r5, #0x1d1]
	bl MultiplyFixedPoint64
_0230B738:
	cmp r8, #5
	ldreqb r0, [r6, #0xd2]
	cmpeq r0, #0xb
	bne _0230B768
	ldr r0, _0230B798 ; =0x02353538
	ldr r2, _0230B7BC ; =0x0235284C
	ldr r3, [r0]
	mov r5, #1
	mov r0, fp
	mov r1, fp
	strb r5, [r3, #0x1d2]
	bl MultiplyFixedPoint64
_0230B768:
	mov r0, r4
_0230B76C:
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230B774: .word 0x02352838
_0230B778: .word 0x022C4820
_0230B77C: .word 0x022C4824
_0230B780: .word 0x022C482C
_0230B784: .word 0x022C4758
_0230B788: .word 0x022C474C
_0230B78C: .word 0x022C481C
_0230B790: .word 0x022C4810
_0230B794: .word 0x022C4818
_0230B798: .word 0x02353538
_0230B79C: .word 0x022C4D14
_0230B7A0: .word 0x022C47C0
_0230B7A4: .word 0x02352864
_0230B7A8: .word 0x0235283C
_0230B7AC: .word 0x022C455C
_0230B7B0: .word 0x02352844
_0230B7B4: .word 0x00000C3E
_0230B7B8: .word 0x000003E7
_0230B7BC: .word 0x0235284C
_0230B7C0: .word 0x00000C4F
_0230B7C4: .word 0x00000C51
_0230B7C8: .word 0x00000C52
_0230B7CC: .word 0x022C4744
_0230B7D0: .word 0x0235285C
	arm_func_end ov29_0230AD04

	arm_func_start ov29_0230B7D4
ov29_0230B7D4: ; 0x0230B7D4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov r4, #1
	mov r8, r2
	mov fp, #0
	bl EntityIsValid__02308FBC
	cmp r0, #0
	moveq r0, r4
	beq _0230BB98
	mov r0, sl
	mov r1, #0x6b
	ldr r7, [sl, #0xb4]
	ldr r6, [sb, #0xb4]
	bl AbilityIsActive2
	cmp r0, #0
	movne r8, r4
	cmp r8, #1
	cmpne r8, #7
	moveq fp, #1
	cmp r8, #2
	bne _0230B84C
	mov r0, sl
	mov r1, sb
	bl ov29_02313C74
	cmp r0, #0
	movne r0, #0
	bne _0230BB98
_0230B84C:
	cmp r8, #5
	bne _0230B874
	mov r0, sl
	mov r1, sb
	mov r2, #0x23
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	movne r0, #0
	bne _0230BB98
_0230B874:
	cmp r8, #3
	bne _0230B89C
	mov r0, sl
	mov r1, sb
	mov r2, #0x24
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	movne r0, #0
	bne _0230BB98
_0230B89C:
	cmp r8, #9
	bne _0230B8E0
	mov r0, sl
	mov r1, #0x53
	bl AbilityIsActive2
	cmp r0, #0
	bne _0230B8C8
	mov r0, sb
	bl LevitateIsActive
	cmp r0, #0
	bne _0230B8D8
_0230B8C8:
	mov r0, sb
	bl HasConditionalGroundImmunity
	cmp r0, #0
	beq _0230B8E0
_0230B8D8:
	mov r0, #1
	b _0230BB98
_0230B8E0:
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov29_0230AB58
	ldr r1, _0230BBA0 ; =0x02352884
	str r0, [sp]
	add ip, sp, #4
	ldmia r1, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	mov r5, #0
	b _0230B9A0
_0230B90C:
	ldr r0, [sp]
	add ip, sp, #0x14
	cmp r0, #0
	add r0, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	bne _0230B960
	cmp fp, #0
	beq _0230B960
	add r0, r6, r5
	ldrb r0, [r0, #0x5e]
	cmp r0, #0xe
	ldreqb r0, [r6, #0xfe]
	cmpeq r0, #0
	bne _0230B960
	ldr r1, _0230BBA4 ; =0x02353538
	mov r0, #0
	ldr r2, [r1]
	mov r1, #1
	strb r1, [r2, #0x1d4]
	b _0230B978
_0230B960:
	mov r0, sl
	mov r1, sb
	mov r2, r5, lsl #0x10
	mov r2, r2, asr #0x10
	mov r3, r8
	bl GetTypeMatchup
_0230B978:
	cmp r4, #0
	beq _0230B9A8
	add r1, sp, #0x14
	ldr r0, [r1, r0, lsl #2]
	mul r0, r4, r0
	add r0, r0, r0, lsr #31
	movs r4, r0, asr #1
	moveq r0, #2
	beq _0230BB98
	add r5, r5, #1
_0230B9A0:
	cmp r5, #2
	blt _0230B90C
_0230B9A8:
	cmp r8, #2
	cmpne r8, #6
	bne _0230B9D4
	mov r0, sl
	mov r1, sb
	mov r2, #2
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	movne r0, #2
	bne _0230BB98
_0230B9D4:
	cmp r8, #3
	bne _0230BA1C
	mov r0, sl
	mov r1, #0x10
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230BA1C
	ldrsh r2, [r7, #0x12]
	ldrsh r1, [r7, #0x16]
	ldr r0, _0230BBA8 ; =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	mov r0, r2, asr #1
	ldrsh r1, [r7, #0x10]
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	movle r4, r4, lsl #1
_0230BA1C:
	cmp r8, #4
	bne _0230BA64
	mov r0, sl
	mov r1, #0x1a
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230BA64
	ldrsh r2, [r7, #0x12]
	ldrsh r1, [r7, #0x16]
	ldr r0, _0230BBA8 ; =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	mov r0, r2, asr #1
	ldrsh r1, [r7, #0x10]
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	movle r4, r4, lsl #1
_0230BA64:
	cmp r8, #0xc
	bne _0230BAAC
	mov r0, sl
	mov r1, #0x43
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230BAAC
	ldrsh r2, [r7, #0x12]
	ldrsh r1, [r7, #0x16]
	ldr r0, _0230BBA8 ; =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	mov r0, r2, asr #1
	ldrsh r1, [r7, #0x10]
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	movle r4, r4, lsl #1
_0230BAAC:
	cmp r8, #2
	bne _0230BAF4
	mov r0, sl
	mov r1, #0x46
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230BAF4
	ldrsh r2, [r7, #0x12]
	ldrsh r1, [r7, #0x16]
	ldr r0, _0230BBA8 ; =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	mov r0, r2, asr #1
	ldrsh r1, [r7, #0x10]
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	movle r4, r4, lsl #1
_0230BAF4:
	cmp r4, #0
	moveq r0, #2
	beq _0230BB98
	mov r0, sl
	mov r1, r8
	bl MonsterIsType
	cmp r0, #0
	mov r0, sl
	movne r4, r4, lsl #1
	bl GetApparentWeather
	cmp r0, #1
	bne _0230BB3C
	cmp r8, #2
	moveq r4, r4, lsl #1
	beq _0230BB3C
	cmp r8, #3
	moveq r0, #2
	beq _0230BB98
_0230BB3C:
	ldr r0, _0230BBA4 ; =0x02353538
	ldr r1, [r0]
	add r0, r1, #0xc000
	ldrb r0, [r0, #0xd5b]
	cmp r0, #0
	beq _0230BB60
	cmp r8, #5
	moveq r0, #2
	beq _0230BB98
_0230BB60:
	add r0, r1, #0xc000
	ldrb r0, [r0, #0xd5c]
	cmp r0, #0
	beq _0230BB7C
	cmp r8, #2
	moveq r0, #2
	beq _0230BB98
_0230BB7C:
	cmp r8, #5
	ldreqb r0, [r7, #0xd2]
	cmpeq r0, #0xb
	moveq r4, r4, lsl #1
	cmp r4, #3
	movge r4, #3
	add r0, r4, #2
_0230BB98:
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230BBA0: .word 0x02352884
_0230BBA4: .word 0x02353538
_0230BBA8: .word 0x000003E7
	arm_func_end ov29_0230B7D4

	arm_func_start CalcDamage
CalcDamage: ; 0x0230BBAC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc0
	ldr r4, _0230C450 ; =0x02353538
	mov sl, r0
	ldr r4, [r4]
	ldr r6, [sl, #0xb4]
	ldr r8, [sp, #0xec]
	str r2, [sp, #0xc]
	mov sb, r1
	ldr r1, [sp, #0xf4]
	mov r0, r8
	str r1, [sp, #0xf4]
	ldr r1, [sp, #0xf8]
	str r3, [sp, #0x10]
	str r1, [sp, #0xf8]
	ldr r1, [sp, #0xf0]
	add r5, r4, #0x184
	ldr r7, [sb, #0xb4]
	str r1, [sp, #0x1c]
	bl ResetDamageDesc
	ldrb r0, [r6, #0x221]
	cmp r0, #0
	beq _0230BC1C
	ldr r1, _0230C454 ; =0x022C4710
	ldr r0, [sp, #0x1c]
	ldr r1, [r1]
	bl MultiplyByFixedPoint
	str r0, [sp, #0x1c]
_0230BC1C:
	mov r0, sl
	mov r1, #0x5c
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230BC50
	ldr r0, [sp, #0xf4]
	bl IsRecoilMove
	cmp r0, #0
	ldrne r0, [sp, #0x1c]
	addne r0, r0, r0, lsl #1
	addne r0, r0, r0, lsr #31
	movne r0, r0, asr #1
	strne r0, [sp, #0x1c]
_0230BC50:
	mov r0, sl
	mov r1, #0x65
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230BC84
	ldr r0, [sp, #0xf4]
	bl IsPunchMove
	cmp r0, #0
	beq _0230BC84
	ldr r0, [sp, #0x1c]
	mov r1, #0x180
	bl MultiplyByFixedPoint
	str r0, [sp, #0x1c]
_0230BC84:
	mov r0, sl
	mov r1, #0x6b
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0xc]
	ldr r1, _0230C458 ; =0x000001D3
	ldr r0, [sp, #0xf4]
	cmp r0, r1
	ldreqb r0, [r6, #0x5e]
	streq r0, [sp, #0xc]
	ldr r0, [sp, #0xf4]
	bl MoveIsNotPhysical
	str r0, [sp, #0x18]
	bl ResetDamageCalcScratchSpace
	ldrb r0, [r6, #7]
	cmp r0, #0
	bne _0230BD34
	add r0, r6, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0
	bne _0230BD34
	mov r0, #1
	str r0, [r8]
	mov r0, #0
	str r0, [r8, #4]
	mov r0, #2
	str r0, [r8, #8]
	ldr r0, [sp, #0xf4]
	ldr r1, [sp, #0xc]
	strb r1, [r8, #0xc]
	bl GetMoveCategory
	strb r0, [r8, #0xd]
	mov r0, #0
	strb r0, [r8, #0xe]
	strb r0, [r8, #0xf]
	strb r0, [r8, #0x10]
	b _0230D054
_0230BD34:
	ldr r1, _0230C45C ; =0x00000163
	ldr r0, [sp, #0xf4]
	cmp r0, r1
	bne _0230BDA0
	mov r0, sl
	mov r1, sb
	mov r2, #0x35
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _0230BDA0
	mov r0, #1
	str r0, [r8]
	mov r0, #0
	str r0, [r8, #4]
	mov r0, #2
	str r0, [r8, #8]
	ldr r0, [sp, #0xf4]
	ldr r1, [sp, #0xc]
	strb r1, [r8, #0xc]
	bl GetMoveCategory
	strb r0, [r8, #0xd]
	mov r0, #0
	strb r0, [r8, #0xe]
	strb r0, [r8, #0xf]
	strb r0, [r8, #0x10]
	b _0230D054
_0230BDA0:
	ldr r0, [sp, #0xf4]
	ldr r1, [sp, #0xc]
	strb r1, [r8, #0xc]
	bl GetMoveCategory
	strb r0, [r8, #0xd]
	ldr r0, [sp, #0xc]
	mov r4, #0
	strb r0, [r5]
	ldr r0, [sp, #0x18]
	mov r1, #0x60
	str r0, [r5, #4]
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0x34]
	mov fp, r4
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x18]
	add r0, r7, r0, lsl #2
	ldr r0, [r0, #0x3c]
	str r0, [sp, #0x38]
	mov r0, sl
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230BE40
	ldrb r1, [r7, #0x1c]
	ldrb r0, [r7, #0x1d]
	cmp r1, r0
	blo _0230BE28
	ldr r0, [sp, #0x18]
	cmp r0, #1
	ldreqb r0, [r5, #0x32]
	addeq r4, r4, #1
	addeq r0, r0, #1
	streqb r0, [r5, #0x32]
	b _0230BE40
_0230BE28:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ldreqb r0, [r5, #0x32]
	addeq r4, r4, #1
	addeq r0, r0, #1
	streqb r0, [r5, #0x32]
_0230BE40:
	ldr r0, [sp, #0xf8]
	cmp r0, #0
	ldr r0, [sp, #0x18]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0x24]
	str r0, [sp, #0x44]
	beq _0230BE70
	ldr r0, [sp, #0xc]
	cmp r0, #2
	ldreqsh r0, [r6, #0x30]
	streqh r0, [r5, #0x10]
	addeq r4, r4, r0
_0230BE70:
	mov r0, sl
	mov r1, #0x22
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrneb r0, [r5, #0x34]
	mov r1, #0x23
	addne r4, r4, #1
	addne r0, r0, #1
	strneb r0, [r5, #0x34]
	mov r0, sl
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrneb r0, [r5, #0x34]
	mov r1, #0x3c
	subne r4, r4, #1
	subne r0, r0, #1
	strneb r0, [r5, #0x34]
	mov r0, sl
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrneb r0, [r6, #0x166]
	mov r1, #0x32
	cmpne r0, #0
	ldrneb r0, [r5, #0x34]
	addne r4, r4, #1
	addne r0, r0, #1
	strneb r0, [r5, #0x34]
	mov r0, sl
	bl ov29_02338288
	cmp r0, #0
	ldr r0, [sp, #0x18]
	addne r4, r4, #1
	cmp r0, #0
	mov r0, sl
	bne _0230BFA8
	mov r1, #0x68
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230BF5C
	ldrsh r0, [r6, #4]
	ldrsh r1, [r7, #4]
	bl GendersEqualNotGenderless
	cmp r0, #0
	ldrneb r0, [r5, #0x32]
	addne r4, r4, #1
	addne r0, r0, #1
	strneb r0, [r5, #0x32]
	bne _0230BF5C
	ldrsh r0, [r6, #4]
	bl GetMonsterGenderVeneer
	cmp r0, #3
	beq _0230BF5C
	ldrsh r0, [r7, #4]
	bl GetMonsterGenderVeneer
	cmp r0, #3
	ldrneb r0, [r5, #0x32]
	subne r4, r4, #1
	subne r0, r0, #1
	strneb r0, [r5, #0x32]
_0230BF5C:
	mov r0, sl
	bl GetApparentWeather
	cmp r0, #1
	bne _0230C040
	mov r0, sl
	mov r1, #0x71
	bl AbilityIsActive2
	cmp r0, #0
	bne _0230BF94
	mov r0, sl
	mov r1, #0x71
	bl ov29_02301D84
	cmp r0, #0
	beq _0230C040
_0230BF94:
	add r4, r4, #1
	ldrb r0, [r5, #0x32]
	add r0, r0, #1
	strb r0, [r5, #0x32]
	b _0230C040
_0230BFA8:
	mov r1, #0x5a
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230BFD4
	mov r0, sl
	bl GetApparentWeather
	cmp r0, #1
	ldreqb r0, [r5, #0x32]
	addeq r4, r4, #2
	addeq r0, r0, #2
	streqb r0, [r5, #0x32]
_0230BFD4:
	mov r0, sb
	bl GetApparentWeather
	cmp r0, #1
	bne _0230C01C
	mov r0, sb
	mov r1, #0x71
	bl AbilityIsActive2
	cmp r0, #0
	bne _0230C00C
	mov r0, sb
	mov r1, #0x71
	bl ov29_02301D84
	cmp r0, #0
	beq _0230C01C
_0230C00C:
	add fp, fp, #1
	ldrb r0, [r5, #0x33]
	add r0, r0, #1
	strb r0, [r5, #0x33]
_0230C01C:
	mov r0, sb
	bl GetApparentWeather
	cmp r0, #2
	bne _0230C040
	ldrb r0, [r7, #0x5e]
	cmp r0, #0xd
	ldrneb r0, [r7, #0x5f]
	cmpne r0, #0xd
	addeq fp, fp, #2
_0230C040:
	ldrsh r1, [r6, #4]
	ldr r0, _0230C460 ; =0x000001A3
	cmp r1, r0
	addeq r4, r4, #2
	cmp r1, #0x1a4
	ldr r0, _0230C464 ; =0x000001A5
	subeq r4, r4, #2
	cmp r1, r0
	ldr r0, _0230C468 ; =0x00000211
	subeq r4, r4, #2
	cmp r1, r0
	subeq r4, r4, #2
	beq _0230C07C
	cmp r1, #0x218
	addeq r4, r4, #2
_0230C07C:
	ldr r0, [sp, #0x44]
	add r0, r0, r4
	str r0, [sp, #0x44]
	ldrb r0, [r6, #0x167]
	cmp r0, #0
	beq _0230C0AC
	mov r0, sl
	mov r1, #0x4f
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0x14
	strne r0, [sp, #0x44]
_0230C0AC:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	add r0, r7, r0, lsl #1
	ldrsh r4, [r0, #0x28]
	bne _0230C0F4
	ldrb r0, [r7, #0xd2]
	mov r1, #0x31
	cmp r0, #6
	moveq r0, #1
	streqb r0, [r5, #0x51]
	mov r0, sb
	addeq fp, fp, #1
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrneb r0, [r5, #0x35]
	subne fp, fp, #1
	subne r0, r0, #1
	strneb r0, [r5, #0x35]
_0230C0F4:
	mov r0, sb
	mov r1, #0x22
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrneb r0, [r5, #0x35]
	mov r1, #0x23
	subne fp, fp, #1
	subne r0, r0, #1
	strneb r0, [r5, #0x35]
	mov r0, sb
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrneb r0, [r5, #0x35]
	addne fp, fp, #1
	addne r0, r0, #1
	strneb r0, [r5, #0x35]
	ldrsh r1, [r7, #4]
	ldr r0, _0230C460 ; =0x000001A3
	cmp r1, r0
	subeq fp, fp, #2
	cmp r1, #0x1a4
	ldr r0, _0230C464 ; =0x000001A5
	addeq fp, fp, #2
	cmp r1, r0
	ldr r0, _0230C468 ; =0x00000211
	subeq fp, fp, #2
	cmp r1, r0
	addeq fp, fp, #2
	beq _0230C170
	cmp r1, #0x218
	subeq fp, fp, #2
_0230C170:
	ldr r1, _0230C46C ; =0x000001BD
	ldr r0, [sp, #0xf4]
	add r4, r4, fp
	cmp r0, r1
	bne _0230C1F4
	ldrsh r1, [r7, #0x24]
	mov r0, #0
	cmp r1, #0xa
	subgt r1, r1, #0xa
	addgt r0, r0, r1
	movgt r0, r0, lsl #0x10
	ldrsh r1, [r7, #0x28]
	movgt r0, r0, asr #0x10
	cmp r1, #0xa
	subgt r1, r1, #0xa
	addgt r0, r0, r1
	movgt r0, r0, lsl #0x10
	ldrsh r1, [r7, #0x26]
	movgt r0, r0, asr #0x10
	cmp r1, #0xa
	subgt r1, r1, #0xa
	addgt r0, r0, r1
	movgt r0, r0, lsl #0x10
	ldrsh r1, [r7, #0x2a]
	movgt r0, r0, asr #0x10
	cmp r1, #0xa
	subgt r1, r1, #0xa
	addgt r0, r0, r1
	movgt r0, r0, lsl #0x10
	ldr r1, [sp, #0x44]
	movgt r0, r0, asr #0x10
	add r0, r1, r0
	str r0, [sp, #0x44]
_0230C1F4:
	mov r0, sl
	mov r1, #0x67
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0x100
	movne r4, #0xa
	strne r0, [sp, #0x38]
	bne _0230C23C
	mov r0, sl
	mov r1, sb
	mov r2, #0x67
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	movne r0, #0xa
	strne r0, [sp, #0x44]
	movne r0, #0x100
	strne r0, [sp, #0x3c]
_0230C23C:
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x18]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [sp, #0x44]
	ldr r0, [sp, #0x44]
	ldr r2, _0230C470 ; =0x022C4D98
	cmp r0, #0x14
	movgt r0, #0x14
	strgt r0, [sp, #0x44]
	ldr r0, [sp, #0x44]
	strb r0, [r5, #0xa]
	add r0, r6, #0x1a
	ldrb r3, [r0, r1]
	ldr r1, [sp, #0x44]
	ldr fp, [r2, r1, lsl #2]
	ldr r1, [sp, #0x18]
	strh r3, [r5, #0xc]
	ldrb r0, [r0, r1]
	mov r1, fp
	mov r0, r0, lsl #8
	bl MultiplyByFixedPoint
	ldr r1, [sp, #0x3c]
	bl MultiplyByFixedPoint
	mov r0, r0, asr #8
	cmp r4, #0
	movlt r4, #0
	str r0, [sp, #0x90]
	cmp r4, #0x14
	movgt r4, #0x14
	ldr r1, [sp, #0x18]
	strb r4, [r5, #0xb]
	add r0, r7, #0x1c
	ldrb r2, [r0, r1]
	ldr r1, _0230C474 ; =0x022C4DEC
	strh r2, [r5, #0xe]
	ldr r2, [sp, #0x18]
	ldr r1, [r1, r4, lsl #2]
	ldrb r0, [r0, r2]
	mov r0, r0, lsl #8
	bl MultiplyByFixedPoint
	ldr r1, [sp, #0x38]
	bl MultiplyByFixedPoint
	mov r0, r0, asr #8
	str r0, [sp, #0x94]
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0230C314
	ldr r1, [sp, #0x18]
	mov r0, sl
	bl ExclusiveItemOffenseBoost
	ldr r1, [sp, #0x90]
	add r0, r1, r0
	str r0, [sp, #0x90]
_0230C314:
	ldrb r0, [r7, #6]
	cmp r0, #0
	bne _0230C338
	ldr r1, [sp, #0x18]
	mov r0, sb
	bl ExclusiveItemDefenseBoost
	ldr r1, [sp, #0x94]
	add r0, r1, r0
	str r0, [sp, #0x94]
_0230C338:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0230C4D8
	mov r0, sl
	mov r1, #0x1a
	bl ItemIsActive__0230A9DC
	cmp r0, #0
	beq _0230C378
	ldr r0, _0230C478 ; =0x020A18AC
	ldr r1, [sp, #0x90]
	ldrsh r2, [r0]
	add r0, r1, r2
	str r0, [sp, #0x90]
	ldrb r0, [r5, #0x30]
	add r0, r0, r2
	strb r0, [r5, #0x30]
_0230C378:
	mov r0, sl
	mov r1, #0x32
	bl ItemIsActive__0230A9DC
	cmp r0, #0
	beq _0230C3AC
	ldr r0, _0230C47C ; =0x020A187C
	ldr r1, [sp, #0x90]
	ldrsh r2, [r0]
	add r0, r1, r2
	str r0, [sp, #0x90]
	ldrb r0, [r5, #0x30]
	add r0, r0, r2
	strb r0, [r5, #0x30]
_0230C3AC:
	mov r0, sl
	bl AuraBowIsActive
	cmp r0, #0
	beq _0230C3DC
	ldr r0, _0230C480 ; =0x020A1898
	ldr r1, [sp, #0x90]
	ldrsh r2, [r0]
	add r0, r1, r2
	str r0, [sp, #0x90]
	ldrb r0, [r5, #0x31]
	add r0, r0, r2
	strb r0, [r5, #0x31]
_0230C3DC:
	ldr r0, [sp, #0xf8]
	cmp r0, #0
	beq _0230C5E0
	mov r0, sb
	mov r1, #0x25
	bl ItemIsActive__0230A9DC
	cmp r0, #0
	beq _0230C41C
	ldr r0, _0230C484 ; =0x020A18A8
	ldr r1, [sp, #0x94]
	ldrsh r2, [r0]
	add r0, r1, r2
	str r0, [sp, #0x94]
	ldrb r0, [r5, #0x36]
	add r0, r0, r2
	strb r0, [r5, #0x36]
_0230C41C:
	mov r0, sb
	bl AuraBowIsActive
	cmp r0, #0
	beq _0230C5E0
	ldr r0, _0230C480 ; =0x020A1898
	ldr r1, [sp, #0x94]
	ldrsh r2, [r0]
	add r0, r1, r2
	str r0, [sp, #0x94]
	ldrb r0, [r5, #0x36]
	add r0, r0, r2
	strb r0, [r5, #0x36]
	b _0230C5E0
	.align 2, 0
_0230C450: .word 0x02353538
_0230C454: .word 0x022C4710
_0230C458: .word 0x000001D3
_0230C45C: .word 0x00000163
_0230C460: .word 0x000001A3
_0230C464: .word 0x000001A5
_0230C468: .word 0x00000211
_0230C46C: .word 0x000001BD
_0230C470: .word 0x022C4D98
_0230C474: .word 0x022C4DEC
_0230C478: .word 0x020A18AC
_0230C47C: .word 0x020A187C
_0230C480: .word 0x020A1898
_0230C484: .word 0x020A18A8
_0230C488: .word 0x020A18B4
_0230C48C: .word 0x020A186C
_0230C490: .word 0x00000C53
_0230C494: .word 0x00000C54
_0230C498: .word 0x00000C55
_0230C49C: .word 0x000003E7
_0230C4A0: .word 0x020A18D8
_0230C4A4: .word 0x02352984
_0230C4A8: .word 0x02352990
_0230C4AC: .word 0x0235299C
_0230C4B0: .word 0x020A18F4
_0230C4B4: .word 0x020A18F0
_0230C4B8: .word 0x020A18CC
_0230C4BC: .word 0x020A18F8
_0230C4C0: .word 0x020A18EC
_0230C4C4: .word 0x020A18D4
_0230C4C8: .word 0x020A18E8
_0230C4CC: .word 0x0235286C
_0230C4D0: .word 0x02352838
_0230C4D4: .word 0x0235287C
_0230C4D8:
	ldr r0, [sp, #0xf8]
	cmp r0, #0
	beq _0230C548
	mov r0, sb
	mov r1, #0x29
	bl ItemIsActive__0230A9DC
	cmp r0, #0
	beq _0230C518
	ldr r0, _0230C488 ; =0x020A18B4
	ldr r1, [sp, #0x94]
	ldrsh r2, [r0]
	add r0, r1, r2
	str r0, [sp, #0x94]
	ldrb r0, [r5, #0x37]
	add r0, r0, r2
	strb r0, [r5, #0x37]
_0230C518:
	mov r0, sb
	bl AuraBowIsActive
	cmp r0, #0
	beq _0230C548
	ldr r0, _0230C480 ; =0x020A1898
	ldr r1, [sp, #0x94]
	ldrsh r2, [r0]
	add r0, r1, r2
	str r0, [sp, #0x94]
	ldrb r0, [r5, #0x36]
	add r0, r0, r2
	strb r0, [r5, #0x36]
_0230C548:
	mov r0, sl
	mov r1, #0x28
	bl ItemIsActive__0230A9DC
	cmp r0, #0
	beq _0230C57C
	ldr r0, _0230C48C ; =0x020A186C
	ldr r1, [sp, #0x90]
	ldrsh r2, [r0]
	add r0, r1, r2
	str r0, [sp, #0x90]
	ldrb r0, [r5, #0x31]
	add r0, r0, r2
	strb r0, [r5, #0x31]
_0230C57C:
	mov r0, sl
	mov r1, #0x32
	bl ItemIsActive__0230A9DC
	cmp r0, #0
	beq _0230C5B0
	ldr r0, _0230C47C ; =0x020A187C
	ldr r1, [sp, #0x90]
	ldrsh r2, [r0]
	add r0, r1, r2
	str r0, [sp, #0x90]
	ldrb r0, [r5, #0x31]
	add r0, r0, r2
	strb r0, [r5, #0x31]
_0230C5B0:
	mov r0, sb
	bl AuraBowIsActive
	cmp r0, #0
	beq _0230C5E0
	ldr r0, _0230C480 ; =0x020A1898
	ldr r1, [sp, #0x90]
	ldrsh r2, [r0]
	add r0, r1, r2
	str r0, [sp, #0x90]
	ldrb r0, [r5, #0x31]
	add r0, r0, r2
	strb r0, [r5, #0x31]
_0230C5E0:
	ldr r0, [sp, #0x10]
	mov r1, fp
	mov r0, r0, lsl #8
	bl MultiplyByFixedPoint
	ldr r1, [sp, #0x3c]
	bl MultiplyByFixedPoint
	mov r1, r0
	add r0, sp, #0xa0
	bl FixedPoint32To64
	mov r0, #0x64
	bl DungeonRandInt
	mov r4, #1
	str r0, [sp, #0x40]
	add r0, r6, #0x100
	ldrh r1, [r0, #0x5a]
	mov fp, r4
	str r4, [sp, #0x28]
	bic r1, r1, #0x100
	strh r1, [r0, #0x5a]
	ldrh r1, [r0, #0x58]
	str r4, [sp, #0x2c]
	bic r1, r1, #0x100
	strh r1, [r0, #0x58]
	ldr r0, [sp, #0xf4]
	bl MoveIsNotPhysical
	str r0, [sp, #0x30]
	cmp r0, #0
	bne _0230C6B8
	mov r0, sl
	mov r1, #0x11
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230C6B8
	ldr r0, [sl, #0xb4]
	mov r1, r4
	str r0, [sp, #0x24]
	mov r0, sl
	bl ov29_02300634
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x48]
	mov r1, r4
	bl ov29_023023C0
	ldr r1, [sp, #0x48]
	cmp r1, #0
	movne r4, r4, lsl #1
	cmp r0, #0
	beq _0230C6B8
	mov r0, sl
	bl ov29_022E6130
	mov r0, sl
	mov r1, sb
	ldr r2, _0230C490 ; =0x00000C53
	bl LogMessageByIdWithPopupCheckUserTarget
_0230C6B8:
	mov r0, sl
	mov r1, #0x22
	bl AbilityIsActive2
	cmp r0, #0
	bne _0230C6E0
	mov r0, sl
	mov r1, #0x4b
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230C748
_0230C6E0:
	ldr r0, [sp, #0x40]
	cmp r0, #0x21
	ldr r0, [sl, #0xb4]
	bge _0230C700
	ldr r1, [sp, #0x30]
	cmp r1, #0
	moveq r1, #1
	beq _0230C704
_0230C700:
	mov r1, #0
_0230C704:
	and r1, r1, #0xff
	str r1, [sp, #0x34]
	ldr r2, [sp, #0x34]
	mov r1, #0x100
	bl ov29_023023C0
	ldr r1, [sp, #0x34]
	cmp r1, #0
	addne r4, r4, r4, lsl #1
	movne fp, fp, lsl #1
	cmp r0, #0
	beq _0230C748
	mov r0, sl
	bl ov29_022E617C
	mov r0, sl
	mov r1, sb
	ldr r2, _0230C494 ; =0x00000C54
	bl LogMessageByIdWithPopupCheckUserTarget
_0230C748:
	mov r0, sl
	mov r1, #0x30
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230C76C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	addeq r4, r4, r4, lsl #1
	moveq fp, fp, lsl #1
_0230C76C:
	ldr r0, [sl, #0xb4]
	mov r1, #0x38
	ldrb r0, [r0, #6]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x14]
	movne r0, #0
	strne r0, [sp, #0x14]
	mov r0, sl
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230C7D4
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _0230C7D4
	ldr r0, _0230C450 ; =0x02353538
	ldr r1, [r0]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	add r0, r0, #0x3000
	ldrb r0, [r0, #0xe36]
	cmp r0, #0
	movne r0, #0xa
	mulne r0, fp, r0
	rsbne r4, r4, r4, lsl #4
	movne fp, r0
_0230C7D4:
	mov r0, sl
	mov r1, #0x3f
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230C820
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _0230C820
	ldr r0, _0230C450 ; =0x02353538
	ldr r1, [r0]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	add r0, r0, #0x3000
	ldrb r0, [r0, #0xe34]
	cmp r0, #0
	movne r0, #0xa
	mulne r0, fp, r0
	rsbne r4, r4, r4, lsl #4
	movne fp, r0
_0230C820:
	mov r0, sl
	mov r1, sb
	mov r2, #6
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _0230C84C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	moveq r4, r4, lsl #2
	addeq fp, fp, fp, lsl #2
_0230C84C:
	mov r0, sl
	mov r1, sb
	mov r2, #0x34
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _0230C8E0
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _0230C8E0
	ldr r0, [sb, #0xb4]
	mov r1, #1
	str r0, [sp, #0x20]
	mov r0, sb
	bl ov29_02300634
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x4c]
	mov r1, #8
	bl ov29_023023C0
	ldr r1, [sp, #0x4c]
	cmp r1, #0
	beq _0230C8C0
	ldr r1, [sp, #0x28]
	add r1, r1, r1, lsl #1
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	mov r1, r1, lsl #1
	str r1, [sp, #0x2c]
_0230C8C0:
	cmp r0, #0
	beq _0230C8E0
	mov r0, sb
	bl ov29_022E63D8
	mov r0, sl
	mov r1, sb
	ldr r2, _0230C498 ; =0x00000C55
	bl LogMessageByIdWithPopupCheckUserTarget
_0230C8E0:
	add r0, sp, #0x90
	ldr r2, [r0]
	add r1, sp, #0x94
	mul r0, r2, r4
	ldr r3, [r1]
	ldr r2, [sp, #0x28]
	cmp fp, #1
	mul r2, r3, r2
	str r2, [r1]
	add r1, sp, #0x90
	str r0, [r1]
	beq _0230C920
	mov r1, fp
	bl DivideInt
	add r1, sp, #0x90
	str r0, [r1]
_0230C920:
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	beq _0230C940
	add r4, sp, #0x94
	mov r1, r0
	ldr r0, [r4]
	bl DivideInt
	str r0, [r4]
_0230C940:
	ldr r0, [sp, #0x90]
	strh r0, [r5, #0x12]
	ldr r0, [sp, #0x94]
	strh r0, [r5, #0x14]
	ldr r0, [sp, #0x90]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [sp, #0x90]
	ldr r1, [sp, #0x90]
	ldr r0, _0230C49C ; =0x000003E7
	cmp r1, r0
	strge r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	add r0, sp, #0x98
	strh r1, [r5, #0x1a]
	ldr r1, [sp, #0x94]
	bl IntToFixedPoint64
	ldr r2, [sp, #0x90]
	ldr r1, [sp, #0x94]
	add r0, sp, #0x88
	sub r1, r2, r1
	bl IntToFixedPoint64
	ldr r1, _0230C4A0 ; =0x020A18D8
	add r0, sp, #0x80
	ldr r1, [r1]
	bl FixedPoint32To64
	add r0, sp, #0x88
	add r2, sp, #0x80
	mov r1, r0
	bl DivideFixedPoint64
	ldrb r1, [r6, #0xa]
	add r0, sp, #0x80
	bl IntToFixedPoint64
	add r0, sp, #0xa8
	add r1, sp, #0x80
	add r2, sp, #0x88
	bl AddFixedPoint64
	ldr r1, [sp, #0x90]
	add r0, sp, #0x80
	bl IntToFixedPoint64
	add r0, sp, #0xa0
	add r2, sp, #0x80
	mov r1, r0
	bl AddFixedPoint64
	add r0, sp, #0xa0
	bl FixedPoint64ToInt
	strh r0, [r5, #0x18]
	ldrb r1, [r6, #0xa]
	add r0, sp, #0xa8
	strh r1, [r5, #0x16]
	bl FixedPoint64ToInt
	strh r0, [r5, #0x1c]
	add r0, sp, #0xa8
	bl FixedPoint64ToInt
	mov r1, r0
	ldr r0, _0230C4A4 ; =0x02352984
	bl DebugPrint0__0200C1FC
	add r0, sp, #0xa0
	bl FixedPoint64ToInt
	mov r1, r0
	ldr r0, _0230C4A8 ; =0x02352990
	bl DebugPrint0__0200C1FC
	add r0, sp, #0x98
	bl FixedPoint64ToInt
	mov r1, r0
	ldr r0, _0230C4AC ; =0x0235299C
	bl DebugPrint0__0200C1FC
	ldr r1, _0230C4B0 ; =0x020A18F4
	add r0, sp, #0x70
	ldr r1, [r1]
	bl FixedPoint32To64
	add r0, sp, #0x70
	add r1, sp, #0xa0
	mov r2, r0
	bl MultiplyFixedPoint64
	ldr r1, _0230C4B4 ; =0x020A18F0
	add r0, sp, #0x68
	ldr r1, [r1]
	bl FixedPoint32To64
	add r0, sp, #0x68
	add r1, sp, #0x98
	mov r2, r0
	bl MultiplyFixedPoint64
	ldr r1, _0230C4B8 ; =0x020A18CC
	add r0, sp, #0x78
	ldr r1, [r1]
	bl FixedPoint32To64
	add r0, sp, #0x60
	add r1, sp, #0xa8
	add r2, sp, #0x78
	bl AddFixedPoint64
	ldr r1, _0230C4BC ; =0x020A18F8
	add r0, sp, #0x78
	ldr r1, [r1]
	bl FixedPoint32To64
	add r0, sp, #0x60
	add r2, sp, #0x78
	mov r1, r0
	bl MultiplyFixedPoint64
	add r0, sp, #0x60
	bl FixedPoint64ToInt
	mov r1, r0
	add r0, sp, #0x60
	bl ClampedLn
	ldr r1, _0230C4C0 ; =0x020A18EC
	add r0, sp, #0x78
	ldr r1, [r1]
	bl FixedPoint32To64
	add r0, sp, #0x60
	add r2, sp, #0x78
	mov r1, r0
	bl MultiplyFixedPoint64
	add r0, sp, #0xb0
	add r1, sp, #0x68
	add r2, sp, #0x70
	bl AddFixedPoint64
	add r0, sp, #0xb0
	add r2, sp, #0x60
	mov r1, r0
	bl AddFixedPoint64
	ldr r1, _0230C4C4 ; =0x020A18D4
	add r0, sp, #0x78
	ldr r1, [r1]
	bl FixedPoint32To64
	add r0, sp, #0xb0
	add r2, sp, #0x78
	mov r1, r0
	bl AddFixedPoint64
	bl FixedRoomIsSubstituteRoom
	cmp r0, #0
	bne _0230CB78
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _0230CB78
	ldr r1, _0230C4C8 ; =0x020A18E8
	add r0, sp, #0x78
	ldr r1, [r1]
	bl FixedPoint32To64
	add r0, sp, #0xb0
	add r2, sp, #0x78
	mov r1, r0
	bl DivideFixedPoint64
_0230CB78:
	ldr r0, _0230C4CC ; =0x0235286C
	add r1, sp, #0xb0
	bl FixedPoint64CmpLt
	cmp r0, #0
	ldrne r0, _0230C4D0 ; =0x02352838
	ldrne r1, [r0, #0x38]
	ldrne r0, [r0, #0x34]
	strne r1, [sp, #0xb4]
	strne r0, [sp, #0xb0]
	ldr r1, _0230C4D4 ; =0x0235287C
	add r0, sp, #0xb0
	bl FixedPoint64CmpLt
	cmp r0, #0
	ldrne r0, _0230C4D0 ; =0x02352838
	ldrne r1, [r0, #0x48]
	ldrne r0, [r0, #0x44]
	strne r1, [sp, #0xb4]
	strne r0, [sp, #0xb0]
	ldr r0, [sp, #0xf4]
	bl IsRegularAttackOrProjectile
	cmp r0, #0
	ldr r0, [sp, #0xc]
	movne r1, #1
	str r0, [sp]
	moveq r1, #0
	and r1, r1, #0xff
	str r8, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, sp, #0xb8
	mov r1, sl
	mov r2, sb
	bl ov29_0230AD04
	mov fp, r0
	ldr r0, [sp, #0xc]
	cmp r0, #2
	bne _0230CC78
	mov r0, sl
	mov r1, sb
	bl ov29_02313C74
	movs r4, r0
	beq _0230CC78
	ldrb r0, [r7, #0x15c]
	cmp r0, #0
	bne _0230CC78
	ldr r0, [sp, #0xf8]
	cmp r0, #0
	beq _0230CC78
	mov r0, #1
	mov r1, sb
	strb r0, [r7, #0x15c]
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	cmp r4, #1
	bne _0230CC68
	ldr r2, _0230D05C ; =0x00000C58
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _0230CC78
_0230CC68:
	ldr r2, _0230D060 ; =0x00000C57
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_0230CC78:
	ldr r0, [sp, #0xf8]
	cmp r0, #0
	beq _0230CD3C
	mov r0, sl
	mov r1, #0x44
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	bne _0230CD3C
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0230CCF0
	ldr r0, [sp, #0xf4]
	cmp r0, #0x48
	beq _0230CCBC
	ldrb r0, [r7, #0xd5]
	cmp r0, #1
	beq _0230CCD0
_0230CCBC:
	mov r0, sb
	mov r1, #0x1e
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	beq _0230CCF0
_0230CCD0:
	mov r0, sb
	bl ov29_022E406C
	add r0, sp, #0xb8
	ldr r2, _0230D064 ; =0x0235283C
	mov r1, r0
	bl MultiplyFixedPoint64
	mov r0, #1
	strb r0, [r5, #0x3a]
_0230CCF0:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _0230CD3C
	ldrb r0, [r7, #0xd5]
	cmp r0, #3
	beq _0230CD1C
	mov r0, sb
	mov r1, #0x1f
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	beq _0230CD3C
_0230CD1C:
	mov r0, sb
	bl ov29_022E4018
	add r0, sp, #0xb8
	ldr r2, _0230D064 ; =0x0235283C
	mov r1, r0
	bl MultiplyFixedPoint64
	mov r0, #1
	strb r0, [r5, #0x3b]
_0230CD3C:
	ldrb r0, [r7, #0xd5]
	cmp r0, #0x11
	beq _0230CEEC
	mov r0, sl
	mov r1, sb
	mov r2, #0xc
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	bne _0230CEEC
	mov r0, sl
	mov r1, sb
	mov r2, #0x13
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	bne _0230CEEC
	mov r0, sb
	mov r1, #0x40
	bl IqSkillIsEnabled
	cmp r0, #0
	bne _0230CEEC
	ldrsh r0, [r6, #2]
	bl GetMonsterGenderVeneer
	cmp r0, #2
	ldrne r1, [sp, #0xe8]
	ldreq r4, [sp, #0xe8]
	addne r0, r1, r1, lsr #31
	addne r4, r1, r0, asr #1
	ldrb r0, [r6, #0xec]
	cmp r0, #4
	moveq r0, #1
	streqb r0, [r5, #0x3c]
	ldreq r4, _0230C49C ; =0x000003E7
	beq _0230CE74
	mov r0, sl
	mov r1, #0x13
	bl ItemIsActive__0230A9DC
	cmp r0, #0
	bne _0230CDF0
	mov r0, sl
	mov r1, #0x1d
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _0230CE04
_0230CDF0:
	ldr r0, _0230D068 ; =0x022C46F0
	mov r1, #1
	ldrsh r0, [r0]
	strb r1, [r5, #0x38]
	add r4, r4, r0
_0230CE04:
	mov r0, sl
	mov r1, #0x58
	bl AbilityIsActive2
	cmp r0, #0
	ldrne r0, _0230D06C ; =0x022C4510
	movne r1, #1
	ldrnesh r0, [r0]
	strneb r1, [r5, #0x49]
	mov r1, #0x14
	addne r4, r4, r0
	mov r0, sb
	bl ItemIsActive__0230A9DC
	cmp r0, #0
	ldrne r0, _0230D068 ; =0x022C46F0
	movne r1, #1
	ldrnesh r0, [r0]
	strneb r1, [r5, #0x39]
	addne r4, r4, r0
	cmp fp, #0
	beq _0230CE74
	mov r0, sl
	mov r1, #1
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrne r0, _0230D070 ; =0x022C45E0
	movne r1, #1
	ldrnesh r4, [r0]
	strneb r1, [r5, #0x3d]
_0230CE74:
	mov r0, #0x64
	bl DungeonRandInt
	cmp r0, r4
	bge _0230CEEC
	mov r2, #1
	mov r4, #5
	mov r0, sl
	mov r1, sb
	add r3, r2, #0xdc0
	str r4, [sp]
	bl ov29_02314D40
	cmp r0, #0
	bne _0230CEEC
	mov r2, #1
	mov r0, sl
	mov r1, #0x5d
	strb r2, [r8, #0xe]
	bl AbilityIsActive2
	cmp r0, #0
	add r0, sp, #0xb8
	beq _0230CEE0
	ldr r2, _0230D074 ; =0x0235284C
	mov r1, r0
	bl MultiplyFixedPoint64
	mov r0, #1
	strb r0, [r5, #0x4a]
	b _0230CEEC
_0230CEE0:
	ldr r2, _0230D078 ; =0x02352844
	mov r1, r0
	bl MultiplyFixedPoint64
_0230CEEC:
	add r0, sp, #0xb0
	bl FixedPoint64ToInt
	str r0, [r5, #0x24]
	add r0, sp, #0xb0
	add r2, sp, #0xb8
	mov r1, r0
	bl MultiplyFixedPoint64
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x58
	mov r2, r1
	str r2, [r5, #0x2c]
	bl FixedPoint32To64
	add r0, sp, #0xb0
	add r2, sp, #0x58
	mov r1, r0
	bl MultiplyFixedPoint64
	add r0, sp, #0xb0
	bl FixedPoint64ToInt
	str r0, [r5, #0x20]
	mov r0, #0x4000
	bl DungeonRandInt
	add r0, r0, #0xe000
	mov r1, #0
	str r0, [sp, #0xbc]
	add r0, sp, #0xb0
	str r1, [sp, #0xb8]
	add r2, sp, #0xb8
	mov r1, r0
	bl MultiplyFixedPoint64
	add r0, sp, #0x50
	mov r1, #0x64
	bl IntToFixedPoint64
	add r0, sp, #0xb8
	add r1, sp, #0x50
	mov r2, r0
	bl MultiplyFixedPoint64
	add r0, sp, #0xb8
	bl FixedPoint64ToInt
	str r0, [r5, #0x28]
	add r0, sp, #0xb0
	bl FixedPoint64ToInt
	str r0, [r8]
	ldr r1, _0230D07C ; =0x00000195
	ldr r0, [sp, #0xf4]
	cmp r0, r1
	bne _0230CFBC
	ldr r0, [r8]
	mov r1, #0x80
	mov r0, r0, lsl #8
	bl MultiplyByFixedPoint
	bl RoundUpDiv256
	str r0, [r8]
_0230CFBC:
	ldr r1, _0230D07C ; =0x00000195
	ldr r0, [sp, #0xf4]
	cmp r0, r1
	bne _0230CFFC
	mov r0, sl
	mov r1, #0x2f
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _0230CFFC
	ldr r0, _0230D080 ; =0x022C47F8
	ldr r2, [r8]
	ldr r1, [r0]
	mov r0, r2, lsl #8
	bl MultiplyByFixedPoint
	bl RoundUpDiv256
	str r0, [r8]
_0230CFFC:
	ldr r0, [r8]
	arm_func_end CalcDamage

	arm_func_start ov29_0230D000
ov29_0230D000: ; 0x0230D000
	cmp r0, #0
	ble _0230D038
	mov r0, sl
	mov r1, #0x5b
	bl ExclusiveItemEffectIsActive__0230A9B8
	cmp r0, #0
	beq _0230D038
	ldr r0, _0230D084 ; =0x022C4844
	ldr r2, [r8]
	ldr r1, [r0]
	mov r0, r2, lsl #8
	bl MultiplyByFixedPoint
	bl RoundUpDiv256
	str r0, [r8]
_0230D038:
	mov r1, #0
	str r1, [r8, #4]
	ldr r0, [r8]
	cmp r0, #0
	streqb r1, [r8, #0xe]
	ldrb r0, [r8, #0xe]
	strb r0, [r7, #0x167]
_0230D054:
	add sp, sp, #0xc0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230D05C: .word 0x00000C58
_0230D060: .word 0x00000C57
_0230D064: .word 0x0235283C
_0230D068: .word 0x022C46F0
_0230D06C: .word 0x022C4510
_0230D070: .word 0x022C45E0
_0230D074: .word 0x0235284C
_0230D078: .word 0x02352844
_0230D07C: .word 0x00000195
_0230D080: .word 0x022C47F8
_0230D084: .word 0x022C4844
	arm_func_end ov29_0230D000

	arm_func_start ov29_0230D088
ov29_0230D088: ; 0x0230D088
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	ldr r5, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov lr, r0
	strb r2, [r5, #0xc]
	cmp r4, #1
	strb r3, [r5, #0xd]
	mov ip, r1
	str r2, [sp]
	mov r2, ip
	ldr r0, _0230D118 ; =0x000003E7
	movlt r4, #1
	cmp r4, r0
	movgt r4, r0
	add r0, sp, #0x14
	mov r1, lr
	mov r3, r4
	str r5, [sp, #4]
	mov ip, #0
	str ip, [sp, #8]
	bl ov29_0230AD04
	add r0, sp, #0xc
	mov r1, r4
	bl IntToFixedPoint64
	add r0, sp, #0xc
	add r2, sp, #0x14
	mov r1, r0
	bl MultiplyFixedPoint64
	add r0, sp, #0xc
	bl FixedPoint64ToInt
	str r0, [r5]
	mov r0, #0
	str r0, [r5, #4]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0230D118: .word 0x000003E7
	arm_func_end ov29_0230D088

	arm_func_start ov29_0230D11C
ov29_0230D11C: ; 0x0230D11C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xdc
	mov r7, r0
	add r0, sp, #0x10
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ResetDamageDesc
	add r0, sp, #0x24
	bl ov29_022E2470
	mov r3, #0
	mov r0, #2
	str r0, [sp, #0x18]
	str r6, [sp, #0x10]
	str r5, [sp, #0x14]
	strb r3, [sp, #0x1c]
	strb r3, [sp, #0x1e]
	strb r3, [sp, #0x1f]
	strb r3, [sp, #0x20]
	stmia sp, {r3, r4}
	str r3, [sp, #8]
	mov r1, r7
	add r0, sp, #0x24
	add r2, sp, #0x10
	str r3, [sp, #0xc]
	bl ov29_0230863C
	add sp, sp, #0xdc
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end ov29_0230D11C

	arm_func_start CalcRecoilDamageFixed
CalcRecoilDamageFixed: ; 0x0230D18C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl EntityIsValid__02308FBC
	cmp r0, #0
	beq _0230D238
	ldr r0, [r7]
	cmp r0, #1
	bne _0230D1F0
	ldr r0, [r7, #0xb4]
	ldrsh r0, [r0, #0x10]
	cmp r0, #0
	beq _0230D238
	mov r0, r7
	mov r1, #0x5c
	bl AbilityIsActive2
	cmp r0, #0
	beq _0230D1F0
	mov r0, r6, lsl #8
	mov r1, #0x180
	bl MultiplyByFixedPoint
	mov r6, r0, asr #8
_0230D1F0:
	ldrb r1, [sp, #0x34]
	str r4, [sp]
	ldrsh r0, [sp, #0x38]
	str r1, [sp, #4]
	mov r1, #3
	str r1, [sp, #8]
	ldr r1, [sp, #0x3c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	ldr r4, [sp, #0x44]
	str r0, [sp, #0x14]
	arm_func_end CalcRecoilDamageFixed

	arm_func_start ov29_0230D220
ov29_0230D220: ; 0x0230D220
	mov r0, r7
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r4, [sp, #0x18]
	bl CalcDamageFixed
_0230D238:
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end ov29_0230D220

	arm_func_start CalcDamageFixed
CalcDamageFixed: ; 0x0230D240
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x2c
	mov sl, r0
	add r0, sp, #0x18
	mov sb, r1
	mov r8, r2
	mov r7, r3
	ldr r6, [sp, #0x54]
	bl ResetDamageDesc
	mov r5, #0
	ldrb r0, [sp, #0x58]
	ldr r1, [sp, #0x60]
	mov r2, #2
	str r2, [sp, #0x20]
	str r1, [sp, #0x1c]
	strb r6, [sp, #0x24]
	strb r5, [sp, #0x26]
	strb r5, [sp, #0x27]
	strb r0, [sp, #0x25]
	cmp r6, #0
	beq _0230D2F8
	add r4, sp, #0x10
_0230D298:
	mov r2, r5, lsl #0x10
	mov r0, sl
	mov r1, sb
	mov r3, r6
	mov r2, r2, asr #0x10
	bl GetTypeMatchup
	str r0, [r4, r5, lsl #2]
	add r5, r5, #1
	cmp r5, #2
	blt _0230D298
	mov r0, sl
	mov r1, sb
	mov r2, #0x35
	mov r3, #1
	bl DefenderAbilityIsActive__0230A940
	cmp r0, #0
	beq _0230D2F8
	ldr r2, [sp, #0x10]
	ldr r0, _0230D39C ; =0x022C4D14
	ldr r1, [sp, #0x14]
	add r0, r0, r2, lsl #4
	ldr r0, [r0, r1, lsl #2]
	cmp r0, #3
	movne r8, #0
_0230D2F8:
	ldrsh r1, [sp, #0x5c]
	ldr r0, _0230D3A0 ; =0x00000256
	mov r8, r8, lsl #8
	cmp r1, r0
	bne _0230D334
	mov r0, sl
	mov r1, #0x2f
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _0230D334
	ldr r1, _0230D3A4 ; =0x022C47F8
	mov r0, r8
	ldr r1, [r1]
	bl MultiplyByFixedPoint
	mov r8, r0
_0230D334:
	mov r0, r8
	bl RoundUpDiv256
	str r0, [sp, #0x18]
	cmp r8, #0
	moveq r0, #1
	streqb r0, [sp, #0x28]
	movne r0, #0
	strneb r0, [sp, #0x28]
	ldrsh r1, [sp, #0x5c]
	str r7, [sp]
	ldr r0, [sp, #0x64]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r4, [sp, #0x68]
	add r2, sp, #0x18
	mov r0, sl
	mov r1, sb
	mov r3, #0
	str r4, [sp, #0xc]
	bl ov29_0230863C
	ldr r1, [sp, #0x50]
	cmp r1, #0
	ldrneb r0, [sp, #0x28]
	strneb r0, [r1]
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0230D39C: .word 0x022C4D14
_0230D3A0: .word 0x00000256
_0230D3A4: .word 0x022C47F8
	arm_func_end CalcDamageFixed

	arm_func_start CalcDamageFixedNoCategory
CalcDamageFixedNoCategory: ; 0x0230D3A8
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	ldr lr, [sp, #0x20]
	ldrb ip, [sp, #0x24]
	str lr, [sp]
	ldrsh lr, [sp, #0x28]
	str ip, [sp, #4]
	mov ip, #3
	str ip, [sp, #8]
	ldr ip, [sp, #0x2c]
	str lr, [sp, #0xc]
	ldr lr, [sp, #0x30]
	str ip, [sp, #0x10]
	ldr ip, [sp, #0x34]
	str lr, [sp, #0x14]
	str ip, [sp, #0x18]
	bl CalcDamageFixed
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	arm_func_end CalcDamageFixedNoCategory

	arm_func_start CalcDamageFixedWrapper
CalcDamageFixedWrapper: ; 0x0230D3F4
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	ldr ip, [sp, #0x20]
	ldrb lr, [sp, #0x24]
	str ip, [sp]
	ldrb ip, [sp, #0x28]
	str lr, [sp, #4]
	ldrsh lr, [sp, #0x2c]
	str ip, [sp, #8]
	ldr ip, [sp, #0x30]
	str lr, [sp, #0xc]
	ldr lr, [sp, #0x34]
	str ip, [sp, #0x10]
	ldr ip, [sp, #0x38]
	str lr, [sp, #0x14]
	str ip, [sp, #0x18]
	bl CalcDamageFixed
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	arm_func_end CalcDamageFixedWrapper

	arm_func_start ov29_0230D440
ov29_0230D440: ; 0x0230D440
	ldr r2, [r1, #0xb4]
	ldrb r1, [r2, #9]
	cmp r1, #0
	bxeq lr
	ldr r1, [r0]
	cmp r1, #1
	bxne lr
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	movne r0, #2
	strneb r0, [r2, #9]
	moveq r0, #3
	streqb r0, [r2, #9]
	bx lr
	arm_func_end ov29_0230D440

	arm_func_start ov29_0230D47C
ov29_0230D47C: ; 0x0230D47C
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #9]
	cmp r0, #0
	bxeq lr
	cmp r1, #0
	movne r0, #2
	strneb r0, [r2, #9]
	moveq r0, #3
	streqb r0, [r2, #9]
	bx lr
	arm_func_end ov29_0230D47C

	arm_func_start ov29_0230D4A4
ov29_0230D4A4: ; 0x0230D4A4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r1, #0xe
	mov r5, r2
	ldr r4, [r6, #0xb4]
	bl MonsterIsType
	cmp r0, #0
	beq _0230D4E8
	cmp r5, #1
	cmpne r5, #7
	bne _0230D4E8
	ldrb r0, [r4, #0xfe]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_0230D4E8:
	mov r4, #0
	b _0230D518
_0230D4F0:
	mov r2, r4, lsl #0x10
	mov r0, r7
	mov r1, r6
	mov r3, r5
	mov r2, r2, asr #0x10
	bl GetTypeMatchup
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0230D518:
	cmp r4, #2
	blt _0230D4F0
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_0230D4A4

	arm_func_start ResetDamageCalcScratchSpace
ResetDamageCalcScratchSpace: ; 0x0230D528
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, _0230D614 ; =0x02353538
	mov r1, #0x54
	ldr r4, [r0]
	add r5, r4, #0x184
	mov r0, r5
	bl MemZero
	mov r1, #0
	strb r1, [r4, #0x184]
	str r1, [r5, #4]
	strb r1, [r5, #8]
	strb r1, [r5, #9]
	mov r0, #0xa
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xb]
	mov r0, #1
	strh r0, [r5, #0xc]
	strh r0, [r5, #0xe]
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x12]
	strh r1, [r5, #0x16]
	strh r1, [r5, #0x1c]
	str r1, [r5, #0x20]
	str r1, [r5, #0x28]
	str r1, [r5, #0x2c]
	strb r1, [r5, #0x30]
	strb r1, [r5, #0x31]
	strb r1, [r5, #0x36]
	strb r1, [r5, #0x37]
	strb r1, [r5, #0x34]
	strb r1, [r5, #0x35]
	strb r1, [r5, #0x38]
	strb r1, [r5, #0x39]
	strb r1, [r5, #0x3a]
	strb r1, [r5, #0x3b]
	strb r1, [r5, #0x3c]
	strb r1, [r5, #0x3d]
	strb r1, [r5, #0x3e]
	strb r1, [r5, #0x40]
	strb r1, [r5, #0x3f]
	strb r1, [r5, #0x41]
	strb r1, [r5, #0x42]
	strb r1, [r5, #0x43]
	strb r1, [r5, #0x44]
	strb r1, [r5, #0x45]
	strb r1, [r5, #0x46]
	strb r1, [r5, #0x47]
	strb r1, [r5, #0x48]
	strb r1, [r5, #0x4b]
	strb r1, [r5, #0x4c]
	strb r1, [r5, #0x4d]
	strb r1, [r5, #0x4e]
	strb r1, [r5, #0x4f]
	strb r1, [r5, #0x50]
	strb r1, [r5, #0x51]
	strb r1, [r5, #0x32]
	strb r1, [r5, #0x33]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230D614: .word 0x02353538
	arm_func_end ResetDamageCalcScratchSpace

	arm_func_start ov29_0230D618
ov29_0230D618: ; 0x0230D618
	ldr r1, _0230D624 ; =0x02352894
	ldr r0, [r1, r0, lsl #2]
	bx lr
	.align 2, 0
_0230D624: .word 0x02352894
	arm_func_end ov29_0230D618

	arm_func_start ov29_0230D628
ov29_0230D628: ; 0x0230D628
	stmdb sp!, {r3, lr}
	ldr r1, _0230D650 ; =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x1a000
	ldr r1, [r1, #0x22c]
	cmp r1, r0
	ldmneia sp!, {r3, pc}
	mov r1, #1
	bl ov29_022E2E54
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230D650: .word 0x02353538
	arm_func_end ov29_0230D628

	arm_func_start ov29_0230D654
ov29_0230D654: ; 0x0230D654
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl EntityIsValid__02308FBC
	cmp r0, #0
	beq _0230D678
	mov r0, r4
	bl EntityIsValid__02308FBC
	cmp r0, #0
	bne _0230D680
_0230D678:
	mov r0, #1
	ldmia sp!, {r4, pc}
_0230D680:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov29_0230D654

	arm_func_start ov29_0230D688
ov29_0230D688: ; 0x0230D688
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrh r3, [r4]
	mov r1, #0x55
	mov r2, #2
	strh r3, [sp]
	ldrh r3, [r4, #2]
	strh r3, [sp, #2]
	ldrh r3, [r4, #4]
	strh r3, [sp, #4]
	bl ov29_02344BD0
	mov r0, r4
	bl SetItemAcquired
	ldrb r0, [sp, #1]
	strb r0, [r4, #1]
	cmp r0, #0
	beq _0230D6FC
	add r0, sp, #0
	bl GetEquivItemIndex
	cmp r0, #0
	blt _0230D6FC
	bl GetItemAtIdx
	ldrh r1, [r4]
	strh r1, [r0]
	ldrh r1, [r4, #2]
	strh r1, [r0, #2]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
_0230D6FC:
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov29_0230D688

	arm_func_start ov29_0230D704
ov29_0230D704: ; 0x0230D704
	mov r0, #0
	bx lr
	arm_func_end ov29_0230D704

	arm_func_start ov29_0230D70C
ov29_0230D70C: ; 0x0230D70C
	stmdb sp!, {r3, lr}
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _0230D734 ; =0x022C45B4
	arm_func_end ov29_0230D70C

	arm_func_start ov29_0230D71C
ov29_0230D71C: ; 0x0230D71C
	ldrsh r1, [r1]
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230D734: .word 0x022C45B4
	arm_func_end ov29_0230D71C

	arm_func_start ov29_0230D738
ov29_0230D738: ; 0x0230D738
	stmdb sp!, {r3, lr}
	cmp r2, #0
	bne _0230D760
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _0230D768 ; =0x022C45B4
	ldrsh r1, [r1]
	cmp r0, r1
	movlt r0, #1
	ldmltia sp!, {r3, pc}
_0230D760:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230D768: .word 0x022C45B4
	arm_func_end ov29_0230D738

	arm_func_start ov29_0230D76C
ov29_0230D76C: ; 0x0230D76C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl IsMonster__0230A994
	cmp r0, #0
	beq _0230D798
	mov r0, r5
	bl IsMonster__0230A994
	cmp r0, #0
	bne _0230D7A0
_0230D798:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0230D7A0:
	ldr r0, [r6, #0xb4]
	ldr r1, [r5, #0xb4]
	ldrsh r0, [r0, #2]
	ldrsh r1, [r1, #2]
	bl sub_02054EC8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov29_0230D738
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov29_0230D76C

	arm_func_start ov29_0230D7D4
ov29_0230D7D4: ; 0x0230D7D4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r2, _0230D870 ; =0x023535D4
	mvn r1, #0
	ldrsh r3, [r2]
	mov r4, r0
	cmp r3, r1
	beq _0230D808
	ldrsh r0, [r2]
	bl ov10_022BDE50
	ldr r0, _0230D870 ; =0x023535D4
	mvn r1, #0
	strh r1, [r0]
_0230D808:
	mov r2, #0
	mov r1, #1
	str r2, [sp]
	stmib sp, {r1, r2}
	mov r0, r4
	rsb r1, r1, #0x2b8
	mov r3, #3
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
	mvn r0, #0
	cmp r5, r0
	beq _0230D868
	mov r4, #0x18
	b _0230D850
_0230D848:
	mov r0, r4
	bl AdvanceFrame
_0230D850:
	mov r0, r5
	bl ov10_022BF964
	cmp r0, #0
	bne _0230D848
	mov r0, r5
	bl ov10_022BDE50
_0230D868:
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230D870: .word 0x023535D4
	arm_func_end ov29_0230D7D4

	arm_func_start ov29_0230D874
ov29_0230D874: ; 0x0230D874
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr lr, [r5, #0xb4]
	ldr ip, [r4, #0xb4]
	ldrsh r3, [lr, #0x28]
	ldrsh r1, [lr, #0x2a]
	ldrsh r0, [ip, #0x28]
	cmp r2, #0
	strh r0, [lr, #0x28]
	ldrsh r0, [ip, #0x2a]
	strh r0, [lr, #0x2a]
	strh r3, [ip, #0x28]
	strh r1, [ip, #0x2a]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r4
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r2, _0230D8E4 ; =0x00000F2D
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230D8E4: .word 0x00000F2D
	arm_func_end ov29_0230D874

	arm_func_start ov29_0230D8E8
ov29_0230D8E8: ; 0x0230D8E8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr lr, [r5, #0xb4]
	ldr ip, [r4, #0xb4]
	ldr r3, [lr, #0x3c]
	ldr r1, [lr, #0x40]
	ldr r0, [ip, #0x3c]
	cmp r2, #0
	str r0, [lr, #0x3c]
	ldr r0, [ip, #0x40]
	str r0, [lr, #0x40]
	str r3, [ip, #0x3c]
	str r1, [ip, #0x40]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r5
	arm_func_end ov29_0230D8E8

	arm_func_start ov29_0230D92C
ov29_0230D92C: ; 0x0230D92C
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r4
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r2, _0230D958 ; =0x00000F2E
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230D958: .word 0x00000F2E
	arm_func_end ov29_0230D92C

	arm_func_start ov29_0230D95C
ov29_0230D95C: ; 0x0230D95C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr lr, [r5, #0xb4]
	ldr ip, [r4, #0xb4]
	ldrsh r3, [lr, #0x24]
	ldrsh r1, [lr, #0x26]
	ldrsh r0, [ip, #0x24]
	cmp r2, #0
	strh r0, [lr, #0x24]
	ldrsh r0, [ip, #0x26]
	strh r0, [lr, #0x26]
	strh r3, [ip, #0x24]
	strh r1, [ip, #0x26]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r4
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r2, _0230D9CC ; =0x00000F2B
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230D9CC: .word 0x00000F2B
	arm_func_end ov29_0230D95C

	arm_func_start ov29_0230D9D0
ov29_0230D9D0: ; 0x0230D9D0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr lr, [r5, #0xb4]
	ldr ip, [r4, #0xb4]
	ldr r3, [lr, #0x34]
	ldr r1, [lr, #0x38]
	ldr r0, [ip, #0x34]
	cmp r2, #0
	str r0, [lr, #0x34]
	ldr r0, [ip, #0x38]
	str r0, [lr, #0x38]
	str r3, [ip, #0x34]
	str r1, [ip, #0x38]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r4
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r2, _0230DA40 ; =0x00000F2C
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230DA40: .word 0x00000F2C
	arm_func_end ov29_0230D9D0

	arm_func_start ov29_0230DA44
ov29_0230DA44: ; 0x0230DA44
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr lr, [r5, #0xb4]
	ldr ip, [r4, #0xb4]
	ldrsh r3, [lr, #0x2c]
	ldrsh r1, [lr, #0x2e]
	ldrsh r0, [ip, #0x2c]
	cmp r2, #0
	strh r0, [lr, #0x2c]
	ldrsh r0, [ip, #0x2e]
	strh r0, [lr, #0x2e]
	strh r3, [ip, #0x2c]
	strh r1, [ip, #0x2e]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r4
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r2, _0230DAB4 ; =0x00000F2F
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230DAB4: .word 0x00000F2F
	arm_func_end ov29_0230DA44

	arm_func_start ov29_0230DAB8
ov29_0230DAB8: ; 0x0230DAB8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr ip, [r5, #0xb4]
	mov r4, r1
	ldrsh r1, [ip, #0x24]
	ldr r3, [ip, #0x34]
	ldr r0, [ip, #0x3c]
	cmp r2, #0
	str r0, [ip, #0x34]
	ldrsh r0, [ip, #0x28]
	strh r0, [ip, #0x24]
	str r3, [ip, #0x3c]
	strh r1, [ip, #0x28]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, r5
	mov r1, r4
	mov r2, #0xf30
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_0230DAB8

	arm_func_start ov29_0230DB14
ov29_0230DB14: ; 0x0230DB14
	stmdb sp!, {r4, lr}
	ldr r1, _0230DBC8 ; =0x02353538
	mov r4, r0
	ldr r1, [r1]
	ldrb r1, [r1, #0x759]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov29_022EFA6C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #0x97
	ldreq r0, _0230DBC8 ; =0x02353538
	ldreq r0, [r0]
	addeq r0, r0, #0x700
	ldreqsb r0, [r0, #0x98]
	cmpeq r0, #2
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _0230DBCC ; =0x000001A3
	cmp r4, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #0x1a4
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r1, #2
	cmp r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	sub r0, r1, #0xa
	cmp r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	sub r0, r1, #9
	cmp r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	sub r0, r1, #8
	cmp r4, r0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230DBC8: .word 0x02353538
_0230DBCC: .word 0x000001A3
	arm_func_end ov29_0230DB14

	arm_func_start ov29_0230DBD0
ov29_0230DBD0: ; 0x0230DBD0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r2, _0230E024 ; =0x02353538
	mov r8, r0
	ldr r0, [r2]
	mov r7, r1
	ldrb r0, [r0, #0x748]
	ldr r5, [r8, #0xb4]
	ldr r6, [r7, #0xb4]
	bl IsRecruitingAllowed
	cmp r0, #0
	beq _0230DC28
	bl ov29_023361D4
	cmp r0, #0
	bne _0230DC28
	bl IsLegendaryChallengeFloor
	cmp r0, #0
	bne _0230DC28
	mov r0, #0xa
	mov r1, #6
	bl IsCurrentMissionTypeExact
	cmp r0, #0
	beq _0230DC30
_0230DC28:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0230DC30:
	ldr r0, _0230E024 ; =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x75d]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r1, #0x748]
	cmp r0, #0x5b
	bne _0230DC70
	ldrsh r1, [r6, #2]
	ldr r0, _0230E028 ; =0x000001E6
	cmp r1, r0
	addne r0, r0, #0x258
	cmpne r1, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0230DC70:
	ldrsh r0, [r6, #2]
	cmp r0, #0x91
	cmpne r0, #0x90
	cmpne r0, #0x92
	ldrne r2, _0230E02C ; =0x0000010F
	cmpne r0, r2
	subne r1, r2, #1
	cmpne r0, r1
	cmpne r0, #0x110
	cmpne r0, #0x19c
	addne r1, r2, #0x8e
	cmpne r0, r1
	addne r1, r2, #0x92
	cmpne r0, r1
	cmpne r0, #0x1a0
	addne r1, r2, #0x93
	cmpne r0, r1
	addne r1, r2, #0x8a
	cmpne r0, r1
	addne r1, r2, #0x8b
	cmpne r0, r1
	addne r1, r2, #0x8c
	cmpne r0, r1
	beq _0230DCF0
	ldr r1, _0230E030 ; =0xFFFFFDEA
	add r1, r0, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #1
	bhi _0230DD04
_0230DCF0:
	mov r1, #1
	bl IsMonsterOnTeam
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0230DD04:
	mov r0, r6
	bl ov29_022FBDE0
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrsh r0, [r6, #2]
	bl ov29_0230DB14
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrsh r1, [r8, #4]
	ldrsh r0, [r7, #4]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	bgt _0230DD5C
	ldrsh r1, [r8, #6]
	ldrsh r0, [r7, #6]
	sub r0, r1, r0
	bl Abs
	cmp r0, #1
	ble _0230DD64
_0230DD5C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0230DD64:
	ldrb r0, [r6, #0x48]
	cmp r0, #0xfa
	ldrneb r0, [r6, #0xbc]
	cmpne r0, #7
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r7
	mov r1, r8
	bl ov29_022E274C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, #1
	bl ov29_022E1B28
	bl ov29_022E81F8
	ldrsh r0, [r6, #2]
	mov r1, #1
	bl IsMonsterOnTeam
	mov sb, r0
	mov r0, #0x3e8
	bl DungeonRandInt
	mov r4, r0
	bl HasPlayedOldGame
	cmp r0, #0
	beq _0230DDE0
	cmp sb, #0
	bne _0230DDE0
	ldrsh r0, [r6, #2]
	bl GetRecruitRate2
	mov r6, r0
	b _0230DDEC
_0230DDE0:
	ldrsh r0, [r6, #2]
	bl GetRecruitRate1
	mov r6, r0
_0230DDEC:
	cmp r6, #0
	ble _0230DDFC
	cmp sb, #0
	movne r6, r6, asr #1
_0230DDFC:
	ldr r0, _0230E034 ; =0xFFFFFC19
	cmp r6, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r8
	mov r1, #0x35
	bl ItemIsActive__0230E578
	cmp r0, #0
	ldrne r0, _0230E038 ; =0x022C44FC
	ldrnesh r0, [r0]
	addne r6, r6, r0
	bne _0230DFD4
	mov r0, r8
	mov r1, #0x39
	bl ItemIsActive__0230E578
	cmp r0, #0
	ldrne r0, _0230E03C ; =0x022C443C
	ldrnesh r0, [r0]
	addne r6, r6, r0
	bne _0230DFD4
	mov r0, r8
	mov r1, #0x3a
	bl ItemIsActive__0230E578
	cmp r0, #0
	ldrne r0, _0230E040 ; =0x022C447C
	ldrnesh r0, [r0]
	addne r6, r6, r0
	bne _0230DFD4
	mov r0, r8
	mov r1, #0x3b
	bl ItemIsActive__0230E578
	cmp r0, #0
	beq _0230DEA0
	mov r0, r7
	mov r1, #6
	bl MonsterIsType
	cmp r0, #0
	ldrne r0, _0230E044 ; =0x022C441C
	ldrnesh r0, [r0]
	addne r6, r6, r0
	b _0230DFD4
_0230DEA0:
	mov r0, r8
	mov r1, #0x3c
	bl ItemIsActive__0230E578
	cmp r0, #0
	beq _0230DED4
	mov r0, r7
	mov r1, #2
	bl MonsterIsType
	cmp r0, #0
	ldrne r0, _0230E048 ; =0x022C4410
	ldrnesh r0, [r0]
	addne r6, r6, r0
	b _0230DFD4
_0230DED4:
	mov r0, r8
	mov r1, #0x3d
	bl ItemIsActive__0230E578
	cmp r0, #0
	beq _0230DF08
	mov r0, r7
	mov r1, #9
	bl MonsterIsType
	cmp r0, #0
	ldrne r0, _0230E04C ; =0x022C470C
	ldrnesh r0, [r0]
	addne r6, r6, r0
	b _0230DFD4
_0230DF08:
	mov r0, r8
	mov r1, #0x3e
	bl ItemIsActive__0230E578
	cmp r0, #0
	beq _0230DF3C
	mov r0, r7
	mov r1, #3
	bl MonsterIsType
	cmp r0, #0
	ldrne r0, _0230E050 ; =0x022C4708
	ldrnesh r0, [r0]
	addne r6, r6, r0
	b _0230DFD4
_0230DF3C:
	mov r0, r8
	mov r1, #0x3f
	bl ItemIsActive__0230E578
	cmp r0, #0
	beq _0230DF70
	mov r0, r7
	mov r1, #0xd
	bl MonsterIsType
	cmp r0, #0
	ldrne r0, _0230E054 ; =0x022C4704
	ldrnesh r0, [r0]
	addne r6, r6, r0
	b _0230DFD4
_0230DF70:
	mov r0, r8
	mov r1, #0x40
	bl ItemIsActive__0230E578
	cmp r0, #0
	beq _0230DFA4
	mov r0, r7
	mov r1, #4
	bl MonsterIsType
	cmp r0, #0
	ldrne r0, _0230E058 ; =0x022C4700
	ldrnesh r0, [r0]
	addne r6, r6, r0
	b _0230DFD4
_0230DFA4:
	mov r0, r8
	mov r1, #0x41
	bl ItemIsActive__0230E578
	cmp r0, #0
	beq _0230DFD4
	mov r0, r7
	mov r1, #0xa
	bl MonsterIsType
	cmp r0, #0
	ldrne r0, _0230E05C ; =0x022C46FC
	ldrnesh r0, [r0]
	addne r6, r6, r0
_0230DFD4:
	mov r0, r8
	mov r1, #0x1e
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrne r0, _0230E038 ; =0x022C44FC
	ldrb r1, [r5, #0xa]
	ldrnesh r0, [r0]
	mov r1, r1, lsl #1
	addne r6, r6, r0
	ldr r0, _0230E060 ; =0x022C5064
	ldrsh r0, [r0, r1]
	add r0, r6, r0
	cmp r4, r0
	mov r0, #0
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bl GetFirstEmptyMemberIdx
	cmp r0, #0
	movlt r0, #0
	movge r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0230E024: .word 0x02353538
_0230E028: .word 0x000001E6
_0230E02C: .word 0x0000010F
_0230E030: .word 0xFFFFFDEA
_0230E034: .word 0xFFFFFC19
_0230E038: .word 0x022C44FC
_0230E03C: .word 0x022C443C
_0230E040: .word 0x022C447C
_0230E044: .word 0x022C441C
_0230E048: .word 0x022C4410
_0230E04C: .word 0x022C470C
_0230E050: .word 0x022C4708
_0230E054: .word 0x022C4704
_0230E058: .word 0x022C4700
_0230E05C: .word 0x022C46FC
_0230E060: .word 0x022C5064
	arm_func_end ov29_0230DBD0

	arm_func_start ov29_0230E064
ov29_0230E064: ; 0x0230E064
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x114
	mov sl, r0
	mov r0, #0xa
	mov r5, #0
	mov sb, r1
	mov r8, r2
	bl ov29_0234BA54
	mov r0, r5
	bl ov29_0234B1A4
	bl ov29_0234D630
	add r0, sb, #4
	add r1, sl, #4
	mvn r7, #0
	bl GetDirectionTowardsPosition
	mov r6, r0
	ldr r4, [sb, #0xb4]
	mov r0, r5
	strb r0, [sb, #0x22]
	mov r0, sl
	mov r1, sb
	bl ov29_02305F60
	mov r1, r6
	mov r0, sb
	bl ov29_02304A48
	ldrsh r0, [r4, #2]
	mov r1, #1
	bl IsMonsterOnTeam
	cmp r0, #0
	beq _0230E0FC
	bl ov29_0234B034
	mov r1, #1
	str r1, [sp]
	mov r1, r5
	ldr r2, [sb, #0xb4]
	mov r3, r1
	bl ov29_0230040C
	b _0230E114
_0230E0FC:
	bl ov29_0234B034
	mov r1, r5
	str r1, [sp]
	ldr r2, [sb, #0xb4]
	mov r3, r1
	bl ov29_0230040C
_0230E114:
	bl ov29_0234B034
	mov r1, r0
	mov r3, #1
	mov r2, #0
	str r3, [sp]
	ldr r0, _0230E55C ; =0x00000C77
	mov r3, r2
	bl ov29_0234D7C0
	cmp r0, #2
	moveq r4, #0
	beq _0230E524
	mov r4, #1
	mov r0, #0
	orr r1, r4, #2
	strb r1, [sp, #0xac]
	strb r0, [sp, #0xad]
	ldrsh r2, [r8, #0xc]
	ldr r1, _0230E560 ; =0x02353538
	sub r3, r0, #1
	strb r2, [sp, #0xae]
	strh r4, [sp, #0xb2]
	ldr r2, [r1]
	ldrh r4, [r8, #0x44]
	add r1, sp, #0x14
	strh r4, [r1, #0xf2]
	ldrh r4, [r8, #0x46]
	strh r4, [r1, #0xf4]
	strb r0, [sp, #0x104]
	strh r3, [sp, #0xb4]
	strh r3, [sp, #0xb6]
	ldrsh r1, [r8]
	strh r1, [sp, #0xb8]
	ldrb r1, [r2, #0x748]
	strb r1, [sp, #0xaf]
	ldrb r1, [r2, #0x749]
	add r2, sp, #0xac
	strb r1, [sp, #0xb0]
	ldrsh r1, [r8, #6]
	strh r1, [sp, #0xba]
	ldrsh r1, [r8, #6]
	strh r1, [sp, #0xbc]
	ldrh r1, [r8, #0x14]
	strh r1, [sp, #0xf0]
	ldrh r1, [r8, #0x16]
	strh r1, [sp, #0xf2]
	ldrh r1, [r8, #0x18]
	strh r1, [sp, #0xf4]
	ldrh r1, [r8, #0x1a]
	strh r1, [sp, #0xf6]
_0230E1D8:
	add r4, r8, r0
	ldrb r1, [r4, #8]
	add r3, r2, r0
	add r0, r0, #1
	strb r1, [r3, #0x12]
	ldrb r1, [r4, #0xa]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	strb r1, [r3, #0x14]
	cmp r0, #2
	blt _0230E1D8
	ldr r0, [r8, #0x10]
	add r2, sp, #0xc8
	str r0, [sp, #0xc4]
	add r3, r8, #0x22
	mov r1, #0x11
_0230E218:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _0230E218
	ldrh r0, [r8, #0x1c]
	strh r0, [sp, #0xea]
	ldrh r0, [r8, #0x1e]
	strh r0, [sp, #0xec]
	ldrh r0, [r8, #0x20]
	strh r0, [sp, #0xee]
	ldrsh r0, [r8]
	bl GetNameString
	mov r1, r0
	add r0, sp, #0x100
	add r0, r0, #0xa
	mov r2, #0xa
	bl sub_02025314
	ldrsh r1, [sp, #0xb8]
	ldrsh r2, [sp, #0xb2]
	add r0, sp, #0xf8
	bl sub_02058EB0
	add r1, sp, #0x100
	add r0, sp, #0x98
	add r1, r1, #0xa
	mov r2, #0xa
	add r4, sp, #0x18
	bl StrncpySimpleNoPad
	bl ov29_022EACAC
	bl ov29_0234B034
	mov r1, r0
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	ldr r0, _0230E564 ; =0x00000C7B
	mov r3, r2
	bl ov29_0234D7C0
	cmp r0, #1
	bne _0230E2D4
	bl ov29_0234D838
	add r6, sp, #0x100
	add r6, r6, #0xa
_0230E2BC:
	mov r0, r6
	add r1, sp, #0x98
	mov r2, #0
	bl ov29_0234F008
	cmp r0, #0
	beq _0230E2BC
_0230E2D4:
	add r1, sp, #0xac
	mov r0, r4
	bl sub_020585B4
	mov r1, r4
	mov r0, #0
	bl ov29_0234B0B4
	mov r0, #1
	mov r1, #0
	bl ov29_0234B084
	ldr r0, _0230E568 ; =0x00000C7E
	bl ov29_0230E658
	ldrsh r1, [r8, #2]
	ldrsh r2, [r8, #4]
	mov r0, sb
	bl ov29_02337EC0
	ldrsh r2, [r8, #2]
	ldrsh r3, [r8, #4]
	mov r0, sl
	mov r1, sb
	bl ov29_0230E5A8
	cmp r0, #0
	bne _0230E42C
	add r0, sp, #0xac
	mvn r1, #0
	bl ov29_0230E5FC
	mov r7, r0
	b _0230E410
_0230E340:
	ldr r0, _0230E56C ; =0x00000C7F
	bl ov29_0230E658
	mvn r4, #0
_0230E34C:
	bl ov29_0234D838
	add r1, sp, #0x100
	mov r0, sb
	add r1, r1, #0xa
	bl ov29_0234EE10
	movs r6, r0
	beq _0230E3D4
	cmp r6, sb
	add r0, sp, #0x58
	bne _0230E380
	add r1, sp, #0xac
	bl sub_020585B4
	b _0230E38C
_0230E380:
	ldr r1, [r6, #0xb4]
	ldrsh r1, [r1, #0xc]
	bl sub_020584FC
_0230E38C:
	mov r0, #0
	add r1, sp, #0x58
	bl ov29_0234B0B4
	mov r0, #1
	mov r1, sl
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	bl ov29_0234B034
	mov r1, #1
	mov r2, #0
	str r1, [sp]
	mov r1, r0
	mov r0, #0xc80
	mov r3, r2
	bl ov29_0234D7C0
	mov fp, r0
	cmp fp, r4
	beq _0230E34C
_0230E3D4:
	cmp fp, #2
	cmpne r6, #0
	beq _0230E410
	ldr r0, _0230E56C ; =0x00000C7F
	add r0, r0, #2
	bl ov29_0230E658
	mov r0, r6
	bl ov29_022E68BC
	ldr r1, _0230E570 ; =0x00000233
	mov r0, r6
	mov r2, sl
	bl HandleFaint
	cmp r6, sb
	moveq r4, #1
	beq _0230E524
_0230E410:
	mov r0, sl
	mov r1, sb
	ldrsh r2, [r8, #2]
	ldrsh r3, [r8, #4]
	bl ov29_0230E5A8
	cmp r0, #0
	beq _0230E340
_0230E42C:
	mov r6, #0
	mov r4, r6
	mov r5, #1
	b _0230E468
_0230E43C:
	mov r0, r6
	bl GetActiveTeamMember
	ldrb r0, [r0]
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _0230E470
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
_0230E468:
	cmp r6, #4
	blt _0230E43C
_0230E470:
	add r0, sp, #0xac
	mov r1, r7
	strh r6, [sp, #0xb6]
	bl ov29_0230E5FC
	strh r0, [sp, #0xb4]
	ldrsh r1, [sp, #0xb4]
	mov r0, r6
	bl sub_02056698
	ldr r1, _0230E570 ; =0x00000233
	mov r0, sb
	mov r2, sl
	bl HandleFaint
	mov r0, r6
	bl GetActiveTeamMember
	mov r4, r0
	add r7, sp, #0xac
	mov r6, r4
	mov r5, #6
_0230E4B8:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0230E4B8
	ldmia r7, {r0, r1}
	stmia r6, {r0, r1}
	bl ov29_022E8104
	bl ov29_022E81F8
	add r1, sp, #0x14
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrsh r0, [r8]
	ldrsh r1, [r8, #2]
	ldrsh r2, [r8, #4]
	mov r3, r4
	bl InitTeamMember
	ldrsh r0, [r4, #0xc]
	bl SetPokemonJoined
	bl ov29_022E8104
	bl ov29_022E81F8
	ldr r5, [sp, #0x14]
	mov r4, #1
_0230E524:
	mov r0, #1
	bl ov29_0234D8A0
	cmp r4, #0
	bne _0230E540
	ldr r1, _0230E574 ; =0x00000C78
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
_0230E540:
	cmp r5, #0
	beq _0230E550
	mov r0, r5
	bl ov29_02321104
_0230E550:
	mov r0, r4
	add sp, sp, #0x114
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230E55C: .word 0x00000C77
_0230E560: .word 0x02353538
_0230E564: .word 0x00000C7B
_0230E568: .word 0x00000C7E
_0230E56C: .word 0x00000C7F
_0230E570: .word 0x00000233
_0230E574: .word 0x00000C78
	arm_func_end ov29_0230E064

	arm_func_start ItemIsActive__0230E578
ItemIsActive__0230E578: ; 0x0230E578
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ItemIsActive__0230E578

	arm_func_start ov29_0230E5A8
ov29_0230E5A8: ; 0x0230E5A8
	stmdb sp!, {r4, lr}
	ldr r4, [r1, #0xb4]
	mov r1, r2
	ldrsh r0, [r4, #2]
	mov r2, r3
	mov r3, #1
	bl ov29_022FD318
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrsh r0, [r4, #2]
	bl ov29_022FBC94
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_02056830
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end ov29_0230E5A8

	arm_func_start ov29_0230E5FC
ov29_0230E5FC: ; 0x0230E5FC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x44
	mov r5, r0
	mov r4, r1
	add r0, sp, #0
	mov r1, r5
	bl sub_020534BC
	mov r1, #0
	sub r0, r1, #1
	strb r1, [sp, #6]
	strb r1, [sp, #7]
	cmp r4, r0
	bne _0230E640
	add r0, sp, #0
	bl sub_02055CCC
	mov r4, r0
	b _0230E64C
_0230E640:
	ldrsh r0, [r5, #8]
	add r1, sp, #0
	bl sub_02055D7C
_0230E64C:
	mov r0, r4
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov29_0230E5FC

	arm_func_start ov29_0230E658
ov29_0230E658: ; 0x0230E658
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl sub_02025888
	mov r5, r0
	mov r0, r4
	bl StringFromMessageId
	mov r4, r0
	bl ov29_0234B034
	mov r2, r4
	str r0, [sp]
	mov r0, r5
	mov r1, #0x400
	mov r3, r1
	bl PreprocessString
	mov r0, r5
	bl ov29_0234BB50
	bl ov29_0234B034
	mov r1, r0
	mov r0, r5
	mov r2, #1
	str r2, [sp]
	mov r2, #0
	mov r3, r2
	bl ov29_0234D6C8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_0230E658

	arm_func_start TrySpawnMonsterAndTickSpawnCounter
TrySpawnMonsterAndTickSpawnCounter: ; 0x0230E6BC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r0, _0230E8D8 ; =0x02353538
	mov r6, #0
	ldr r7, [r0]
	add r0, r7, #0x700
	ldrsh r1, [r0, #0x86]
	cmp r1, #0
	beq _0230E8D0
	ldrsh r1, [r0, #0x82]
	add r1, r1, #1
	strh r1, [r0, #0x82]
	ldrb r1, [r7, #0x790]
	cmp r1, #0
	bne _0230E710
	ldr r1, _0230E8DC ; =0x022C44DC
	ldrsh r2, [r0, #0x82]
	ldrsh r0, [r1]
	cmp r2, r0
	bge _0230E724
	b _0230E8D0
_0230E710:
	ldr r1, _0230E8E0 ; =0x022C4640
	ldrsh r2, [r0, #0x82]
	ldrsh r0, [r1]
	cmp r2, r0
	blt _0230E8D0
_0230E724:
	cmp r2, #0x384
	ble _0230E76C
	add r0, r7, #0x19000
	ldr r4, [r0, #0x908]
	mov r0, r4
	bl EntityIsValid__0230E8F0
	cmp r0, #0
	beq _0230E76C
	add r0, r7, #0x19000
	ldrh r1, [r4, #0x26]
	ldr r0, [r0, #0x910]
	cmp r1, r0
	bne _0230E76C
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r6, r4
_0230E76C:
	mov r5, #0
	add r0, r7, #0x700
	strh r5, [r0, #0x82]
	add r0, r7, #0x19000
	mov r4, r5
	str r5, [r0, #0x908]
_0230E784:
	add r0, r7, r4, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb38]
	mov r0, r8
	bl EntityIsValid__0230E8F0
	cmp r0, #0
	beq _0230E7B8
	ldrsh r0, [r8, #4]
	ldrsh r1, [r8, #6]
	bl GetTile
	ldrh r0, [r0]
	tst r0, #0x100
	addeq r5, r5, #1
_0230E7B8:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0230E784
	ldrb r0, [r7, #0x790]
	cmp r0, #0
	bne _0230E80C
	ldr r0, _0230E8D8 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xc9]
	cmp r0, #0xff
	bne _0230E7FC
	ldr r0, _0230E8E4 ; =0x022C4430
	ldrsh r0, [r0]
	cmp r5, r0
	blt _0230E80C
	b _0230E8D0
_0230E7FC:
	ldr r0, _0230E8E8 ; =0x022C46A4
	ldrsh r0, [r0]
	cmp r5, r0
	bge _0230E8D0
_0230E80C:
	cmp r6, #0
	beq _0230E828
	ldr r1, _0230E8EC ; =0x00000C5D
	mov r0, #0
	bl LogMessageByIdWithPopup
	mov r0, r6
	bl ov29_022E62F0
_0230E828:
	ldrb r0, [r7, #0x790]
	cmp r0, #0
	beq _0230E83C
	bl GetKecleonIdToSpawnByFloor
	b _0230E844
_0230E83C:
	mov r0, #0
	bl GetMonsterIdToSpawn
_0230E844:
	mov r5, r0
	mov r0, r5
	bl GetMonsterLevelToSpawn
	movs r4, r0
	mov r0, r5
	mov r1, #0
	moveq r4, #1
	bl MewSpawnCheck
	cmp r0, #0
	beq _0230E8D0
	add r0, sp, #0xa
	mov r1, #0
	bl ov29_022E9628
	cmp r0, #0
	beq _0230E8D0
	mov r1, #0
	mov r0, #0x64
	strh r5, [sp]
	strh r4, [sp, #8]
	strb r1, [sp, #2]
	bl DungeonRandInt
	ldr r1, _0230E8D8 ; =0x02353538
	mov r4, r0
	ldr r0, [r1]
	ldrb r0, [r0, #0x748]
	bl GetRandomMovementChance
	cmp r4, r0
	movlt r0, #1
	strlt r0, [sp, #4]
	movge r0, #0
	strge r0, [sp, #4]
	mov r1, #0
	add r0, sp, #0
	strb r1, [sp, #0xe]
	bl SpawnMonster
_0230E8D0:
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0230E8D8: .word 0x02353538
_0230E8DC: .word 0x022C44DC
_0230E8E0: .word 0x022C4640
_0230E8E4: .word 0x022C4430
_0230E8E8: .word 0x022C46A4
_0230E8EC: .word 0x00000C5D
	arm_func_end TrySpawnMonsterAndTickSpawnCounter

	arm_func_start EntityIsValid__0230E8F0
EntityIsValid__0230E8F0: ; 0x0230E8F0
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__0230E8F0

	arm_func_start ov29_0230E914
ov29_0230E914: ; 0x0230E914
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x50
	mov sl, r0
	ldr r7, [sl, #0xb4]
	bl ov29_02300B40
	cmp r0, #0
	movne r0, #0
	strneb r0, [r7, #0x109]
	bne _0230ED98
	ldrb r0, [r7, #0x109]
	cmp r0, #0
	beq _0230EAF0
	ldrb r0, [r7, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0230ED98
	ldrsh r0, [r7, #0x66]
	bl GetItemCategoryVeneer
	cmp r0, #0
	bne _0230EA08
	mov r0, sl
	add r2, r7, #0x62
	mov r1, #2
	mov r3, #1
	bl ov29_0230EDB0
	mov r4, #0
	ldr r6, _0230EDA0 ; =0x0237C9D8
	ldr r5, _0230EDA4 ; =0x023536FC
	b _0230E9DC
_0230E990:
	ldr r0, [r6, r4, lsl #2]
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	beq _0230E9D8
	add r0, r7, #0x4a
	mov r1, #0x24
	bl SetMonsterActionFields
	mov r0, #0x81
	strb r0, [r7, #0x4e]
	ldrsh r1, [sl, #4]
	ldr r0, _0230EDA8 ; =0x0237C9F8
	strh r1, [r7, #0x50]
	ldrsh r1, [sl, #6]
	strh r1, [r7, #0x52]
	ldr r0, [r0, r4, lsl #2]
	and r0, r0, #7
	strb r0, [r7, #0x4c]
	b _0230E9E8
_0230E9D8:
	add r4, r4, #1
_0230E9DC:
	ldr r0, [r5]
	cmp r4, r0
	blt _0230E990
_0230E9E8:
	ldr r0, _0230EDA4 ; =0x023536FC
	ldr r0, [r0]
	cmp r4, r0
	bne _0230ED98
	add r0, r7, #0x4a
	mov r1, #0x39
	bl SetMonsterActionFields
	b _0230ED98
_0230EA08:
	cmp r0, #1
	bne _0230EAAC
	add r2, sp, #0
	mov r0, sl
	add r1, r7, #0x62
	mov r3, #1
	bl ov29_0230F02C
	ldr r0, _0230EDA4 ; =0x023536FC
	ldr r1, [r0]
	cmp r1, #0
	beq _0230EA9C
	ldr r0, [r0]
	bl DungeonRandInt
	mov r4, r0
	add r0, r7, #0x4a
	mov r1, #0x24
	bl SetMonsterActionFields
	mov r0, #0x81
	strb r0, [r7, #0x4e]
	ldrsh r2, [sl, #4]
	add r1, sp, #0
	add r0, sl, #4
	strh r2, [r7, #0x50]
	ldrsh r2, [sl, #6]
	add r1, r1, r4, lsl #2
	strh r2, [r7, #0x52]
	bl GetDirectionTowardsPosition
	and r0, r0, #7
	strb r0, [r7, #0x4c]
	add r1, sp, #0
	mov r0, r4, lsl #2
	ldrh r0, [r1, r0]
	add r1, r1, r4, lsl #2
	strh r0, [r7, #0x5a]
	ldrh r0, [r1, #2]
	strh r0, [r7, #0x5c]
	b _0230ED98
_0230EA9C:
	add r0, r7, #0x4a
	mov r1, #0x39
	bl SetMonsterActionFields
	b _0230ED98
_0230EAAC:
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	add r0, r7, #0x4a
	bhi _0230EAE4
	mov r1, #0x23
	bl SetMonsterActionFields
	mov r0, #0x81
	strb r0, [r7, #0x4e]
	ldrsh r0, [sl, #4]
	strh r0, [r7, #0x50]
	ldrsh r0, [sl, #6]
	strh r0, [r7, #0x52]
	b _0230ED98
_0230EAE4:
	mov r1, #0x39
	bl SetMonsterActionFields
	b _0230ED98
_0230EAF0:
	mov r0, sl
	mov r1, #0x16
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _0230ED98
	mov r5, #1
	b _0230ED90
_0230EB0C:
	cmp r5, #1
	addeq r8, r7, #0x62
	moveq r6, #0x81
	beq _0230EB84
	cmp r5, #0
	bne _0230EB58
	ldrsh r0, [sl, #4]
	ldrsh r1, [sl, #6]
	bl GetTile
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0230ED8C
	ldr r1, [r0]
	cmp r1, #3
	bne _0230ED8C
	bl ov29_022E1610
	mov r8, r0
	mov r6, #0x80
	b _0230EB84
_0230EB58:
	ldrb r0, [r7, #7]
	cmp r0, #0
	beq _0230ED98
	ldr r0, _0230EDAC ; =0x020AF6B8
	sub r1, r5, #1
	ldr r0, [r0]
	sub r2, r5, #2
	ldr r3, [r0, #0x384]
	mov r0, #6
	mla r8, r2, r0, r3
	and r6, r1, #0xff
_0230EB84:
	ldrb r1, [r8]
	tst r1, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0230ED8C
	ldrb r0, [r8]
	tst r0, #2
	bne _0230ED8C
	tst r1, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _0230ED8C
	ldrsh r0, [r8, #4]
	mov r1, #0
	bl TestItemAiFlag
	cmp r0, #0
	beq _0230EC4C
	mov r0, sl
	mov r1, r8
	mov r2, #2
	bl ov29_0231E05C
	movs r4, r0
	beq _0230EC4C
	ldrsh r0, [r8, #4]
	bl GetItemCategoryVeneer
	mov sb, r0
	cmp sb, #9
	ldreqb r0, [r7, #6]
	cmpeq r0, #0
	beq _0230EC4C
	mov r0, r4
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	beq _0230EC4C
	cmp sb, #9
	add r0, r7, #0x4a
	bne _0230EC2C
	mov r1, #0x31
	bl SetMonsterActionFields
	b _0230EC34
_0230EC2C:
	mov r1, #0x23
	bl SetMonsterActionFields
_0230EC34:
	strb r6, [r7, #0x4e]
	ldrsh r0, [sl, #4]
	strh r0, [r7, #0x50]
	ldrsh r0, [sl, #6]
	strh r0, [r7, #0x52]
	b _0230ED98
_0230EC4C:
	mov r0, r7
	bl ov29_02302368
	cmp r0, #0
	beq _0230ED8C
	mov r4, #1
	ldr fp, _0230EDA4 ; =0x023536FC
	b _0230ED84
_0230EC68:
	ldrsh r0, [r8, #4]
	mov r1, r4
	bl TestItemAiFlag
	cmp r0, #0
	beq _0230ED80
	ldrsh r0, [r8, #4]
	bl GetItemCategoryVeneer
	cmp r0, #1
	mov r0, sl
	mov r3, #0
	bne _0230ED14
	mov r1, r8
	add r2, sp, #0
	bl ov29_0230F02C
	ldr r0, [fp]
	cmp r0, #0
	beq _0230ED80
	ldr r0, _0230EDA4 ; =0x023536FC
	ldr r0, [r0]
	bl DungeonRandInt
	mov r4, r0
	add r0, r7, #0x4a
	mov r1, #0x24
	bl SetMonsterActionFields
	strb r6, [r7, #0x4e]
	ldrsh r2, [sl, #4]
	add r1, sp, #0
	add r0, sl, #4
	strh r2, [r7, #0x50]
	ldrsh r2, [sl, #6]
	add r1, r1, r4, lsl #2
	strh r2, [r7, #0x52]
	bl GetDirectionTowardsPosition
	and r0, r0, #7
	strb r0, [r7, #0x4c]
	add r1, sp, #0
	mov r0, r4, lsl #2
	ldrh r0, [r1, r0]
	add r1, r1, r4, lsl #2
	strh r0, [r7, #0x5a]
	ldrh r0, [r1, #2]
	strh r0, [r7, #0x5c]
	b _0230ED98
_0230ED14:
	mov r1, r4
	mov r2, r8
	bl ov29_0230EDB0
	mov sb, #0
	b _0230ED74
_0230ED28:
	ldr r0, _0230EDA0 ; =0x0237C9D8
	ldr r0, [r0, sb, lsl #2]
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	beq _0230ED70
	add r0, r7, #0x4a
	mov r1, #0x24
	bl SetMonsterActionFields
	strb r6, [r7, #0x4e]
	ldrsh r1, [sl, #4]
	ldr r0, _0230EDA8 ; =0x0237C9F8
	strh r1, [r7, #0x50]
	ldrsh r1, [sl, #6]
	strh r1, [r7, #0x52]
	ldr r0, [r0, sb, lsl #2]
	and r0, r0, #7
	strb r0, [r7, #0x4c]
	b _0230ED98
_0230ED70:
	add sb, sb, #1
_0230ED74:
	ldr r0, [fp]
	cmp sb, r0
	blt _0230ED28
_0230ED80:
	add r4, r4, #1
_0230ED84:
	cmp r4, #3
	blt _0230EC68
_0230ED8C:
	add r5, r5, #1
_0230ED90:
	cmp r5, #0x34
	blt _0230EB0C
_0230ED98:
	add sp, sp, #0x50
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230EDA0: .word 0x0237C9D8
_0230EDA4: .word 0x023536FC
_0230EDA8: .word 0x0237C9F8
_0230EDAC: .word 0x020AF6B8
	arm_func_end ov29_0230E914

	arm_func_start ov29_0230EDB0
ov29_0230EDB0: ; 0x0230EDB0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r4, _0230EFF4 ; =0x023536FC
	mov r5, #0
	mov sl, r0
	str r3, [sp, #8]
	ldr r0, _0230EFF8 ; =0x0237C9D0
	str r1, [sp]
	str r2, [sp, #4]
	str r5, [r4]
	mov fp, r5
_0230EDDC:
	strb fp, [r0, r5]
	add r5, r5, #1
	cmp r5, #8
	blt _0230EDDC
	mvn r0, #0
	str r0, [sp, #0x10]
_0230EDF4:
	ldr r0, _0230EFFC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, fp, lsl #2
	add r0, r0, #0x12000
	ldr r4, [r0, #0xb78]
	mov r0, r4
	bl EntityIsValid__0230F008
	cmp r0, #0
	cmpne sl, r4
	beq _0230EFE0
	ldr r0, [sp]
	mov r2, #0
	cmp r0, #1
	mov r0, sl
	mov r1, r4
	bne _0230EE50
	mov r3, r2
	bl ov29_0230175C
	cmp r0, #0
	bne _0230EFE0
	mov r0, #3
	str r0, [sp, #0xc]
	b _0230EE68
_0230EE50:
	mov r3, #1
	bl ov29_0230175C
	cmp r0, #1
	bne _0230EFE0
	mov r0, #1
	str r0, [sp, #0xc]
_0230EE68:
	mov r0, sl
	mov r1, r4
	bl ov29_022E274C
	cmp r0, #0
	beq _0230EFE0
	ldrsh r6, [r4, #4]
	ldrsh r7, [sl, #4]
	sub r0, r7, r6
	bl Abs
	mov r5, r0
	ldrsh r8, [r4, #6]
	ldrsh sb, [sl, #6]
	sub r0, sb, r8
	bl Abs
	ldr r1, [sl, #0xb4]
	ldrb r1, [r1, #0xee]
	cmp r1, #0
	bne _0230EEC4
	cmp r5, r0
	movgt r1, r5
	movle r1, r0
	cmp r1, #0xa
	bgt _0230EFE0
_0230EEC4:
	cmp r5, r0
	ldr r5, [sp, #0x10]
	bne _0230EF08
	cmp r7, r6
	cmplt sb, r8
	movlt r5, #1
	blt _0230EF54
	cmp r7, r6
	bge _0230EEF4
	cmp sb, r8
	movgt r5, #3
	bgt _0230EF54
_0230EEF4:
	cmp r7, r6
	cmpgt sb, r8
	movgt r5, #5
	movle r5, #7
	b _0230EF54
_0230EF08:
	cmp r7, r6
	bne _0230EF1C
	cmp sb, r8
	movlt r5, #0
	blt _0230EF54
_0230EF1C:
	cmp r7, r6
	bge _0230EF30
	cmp sb, r8
	moveq r5, #2
	beq _0230EF54
_0230EF30:
	cmp r7, r6
	bne _0230EF44
	cmp sb, r8
	movgt r5, #4
	bgt _0230EF54
_0230EF44:
	cmp r7, r6
	ble _0230EF54
	cmp sb, r8
	moveq r5, #6
_0230EF54:
	cmp r5, #0
	blt _0230EFE0
	ldr r0, _0230EFF8 ; =0x0237C9D0
	ldrb r0, [r0, r5]
	cmp r0, #0
	bne _0230EFE0
	mov r0, sl
	mov r1, r4
	mov r2, r5
	mov r3, #0xa
	bl IsTargetInRange
	cmp r0, #0
	beq _0230EFE0
	ldr r0, _0230EFF8 ; =0x0237C9D0
	mov r1, #1
	strb r1, [r0, r5]
	ldr r0, [sp, #8]
	cmp r0, #0
	ldr r0, _0230EFF4 ; =0x023536FC
	ldr r1, [r0]
	ldr r0, _0230F000 ; =0x0237C9F8
	str r5, [r0, r1, lsl #2]
	movne r0, #0x64
	bne _0230EFC4
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #4]
	mov r0, r4
	bl ov29_0231E05C
_0230EFC4:
	ldr r1, _0230EFF4 ; =0x023536FC
	ldr r2, [r1]
	ldr r1, _0230F004 ; =0x0237C9D8
	str r0, [r1, r2, lsl #2]
	ldr r0, _0230EFF4 ; =0x023536FC
	add r1, r2, #1
	str r1, [r0]
_0230EFE0:
	add fp, fp, #1
	cmp fp, #0x14
	blt _0230EDF4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230EFF4: .word 0x023536FC
_0230EFF8: .word 0x0237C9D0
_0230EFFC: .word 0x02353538
_0230F000: .word 0x0237C9F8
_0230F004: .word 0x0237C9D8
	arm_func_end ov29_0230EDB0

	arm_func_start EntityIsValid__0230F008
EntityIsValid__0230F008: ; 0x0230F008
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__0230F008

	arm_func_start ov29_0230F02C
ov29_0230F02C: ; 0x0230F02C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _0230F138 ; =0x023536FC
	mov r6, #0
	mov sl, r0
	mov fp, r1
	mov sb, r2
	mov r8, r3
	str r6, [r4]
_0230F04C:
	ldr r0, _0230F13C ; =0x02353538
	ldr r0, [r0]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid__0230F008
	cmp r0, #0
	cmpne sl, r7
	beq _0230F128
	mov r0, sl
	mov r1, r7
	bl ov29_022E274C
	cmp r0, #0
	beq _0230F128
	mov r0, sl
	mov r1, r7
	mov r2, #0
	mov r3, #1
	bl ov29_0230175C
	cmp r0, #1
	bne _0230F128
	ldrsh r1, [r7, #6]
	ldrsh r0, [sl, #6]
	sub r0, r1, r0
	bl Abs
	ldrsh r2, [r7, #4]
	ldrsh r1, [sl, #4]
	mov r5, r0
	sub r0, r2, r1
	bl Abs
	cmp r0, r5
	movle r0, r5
	cmp r0, #0xa
	bgt _0230F128
	cmp r8, #0
	bne _0230F0FC
	mov r0, r7
	mov r1, fp
	mov r2, #1
	bl ov29_0231E05C
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	beq _0230F128
_0230F0FC:
	ldr r0, [r4]
	ldrsh r1, [r7, #4]
	mov r0, r0, lsl #2
	strh r1, [sb, r0]
	ldr r0, [r4]
	ldrsh r1, [r7, #6]
	add r0, sb, r0, lsl #2
	strh r1, [r0, #2]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_0230F128:
	add r6, r6, #1
	cmp r6, #0x14
	blt _0230F04C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230F138: .word 0x023536FC
_0230F13C: .word 0x02353538
	arm_func_end ov29_0230F02C

	arm_func_start ov29_0230F140
ov29_0230F140: ; 0x0230F140
	ldr ip, _0230F148 ; =ov29_022F52BC
	bx ip
	.align 2, 0
_0230F148: .word ov29_022F52BC
	arm_func_end ov29_0230F140

	arm_func_start ov29_0230F14C
ov29_0230F14C: ; 0x0230F14C
	ldr ip, _0230F154 ; =ov29_022F54BC
	bx ip
	.align 2, 0
_0230F154: .word ov29_022F54BC
	arm_func_end ov29_0230F14C

	arm_func_start ov29_0230F158
ov29_0230F158: ; 0x0230F158
	ldr ip, _0230F160 ; =ov29_0230F164
	bx ip
	.align 2, 0
_0230F160: .word ov29_0230F164
	arm_func_end ov29_0230F158

	arm_func_start ov29_0230F164
ov29_0230F164: ; 0x0230F164
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x198
	mov r8, r0
	ldr r6, [r8, #0xb4]
	bl GetTileAtEntity
	mov r5, r0
	ldr r4, [r5, #0x10]
	cmp r4, #0
	beq _0230F624
	bl IsFloorOver
	cmp r0, #0
	bne _0230F624
	mov r0, #0
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #7]
	cmp r0, #0
	bne _0230F624
	ldrb r0, [r6, #9]
	cmp r0, #1
	beq _0230F624
	mov r0, r6
	bl IsExperienceLocked
	cmp r0, #0
	bne _0230F624
	ldrb r0, [r6, #0xbc]
	cmp r0, #7
	beq _0230F624
	ldr r6, [r8, #0xb4]
	mov r0, r4
	mov r7, #1
	bl ov29_022E1610
	ldrb r1, [r6, #6]
	mov r4, r0
	cmp r1, #0
	beq _0230F204
	bl ov29_02348D00
	cmp r0, #0
	bne _0230F624
_0230F204:
	ldrb r0, [r4]
	tst r0, #2
	bne _0230F228
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0230F22C
	ldrh r0, [r5]
	tst r0, #0x20
	beq _0230F22C
_0230F228:
	mov r7, #0
_0230F22C:
	cmp r7, #0
	beq _0230F624
	mov r0, r8
	mov r1, #1
	bl ShouldMonsterRunAwayVariation
	cmp r0, #0
	beq _0230F274
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	mov r0, #0
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _0230F62C ; =0x00000C5E
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _0230F624
_0230F274:
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0230F300
	ldrsh r0, [r4, #4]
	bl GetItemCategoryVeneer
	cmp r0, #6
	bne _0230F300
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _0230F2A8
	ldr r0, _0230F630 ; =0x00001305
	bl ov29_022EACCC
	b _0230F2B0
_0230F2A8:
	ldr r0, _0230F634 ; =0x00001308
	bl ov29_022EACCC
_0230F2B0:
	mov r0, r8
	mov r1, #0x1b
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrneb r0, [r4]
	orrne r0, r0, #0x20
	strneb r0, [r4]
	mov r0, r4
	bl sub_0200D8AC
	bl AddMoneyCarried
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	add r0, r8, #4
	mov r1, #1
	bl ov29_023456BC
	ldr r1, _0230F638 ; =0x00000C5F
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _0230F624
_0230F300:
	ldr r0, _0230F63C ; =0x02353538
	ldr r0, [r0]
	ldrb sb, [r0, #0x75b]
	cmp sb, #0
	beq _0230F36C
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0230F36C
	ldr r0, _0230F640 ; =0x020AF6B8
	mov r5, #0
	ldr r0, [r0]
	add r2, sp, #0
	ldr r7, [r0, #0x384]
	add r1, sp, #0xcc
	mov r0, #6
_0230F33C:
	mla r3, r5, r0, r7
	str r3, [r2, r5, lsl #2]
	str r5, [r1, r5, lsl #2]
	add r5, r5, #1
	cmp r5, #0x32
	blt _0230F33C
	add r1, r6, #0x62
	mvn r0, #0
	str r1, [sp, #0xc8]
	str r0, [sp, #0x194]
	mov r5, #0x33
	b _0230F380
_0230F36C:
	add r1, r6, #0x62
	mvn r0, #0
	str r1, [sp]
	str r0, [sp, #0xcc]
	mov r5, #1
_0230F380:
	ldrsh lr, [r4, #4]
	cmp lr, #0xb
	bge _0230F4B0
	ldrb r0, [r4]
	tst r0, #2
	bne _0230F4B0
	mvn r7, #0
	mov ip, r7
	mov sl, #0
	and r0, r0, #8
	add fp, sp, #0
	b _0230F408
_0230F3B0:
	ldr r1, [fp, sl, lsl #2]
	ldrb r1, [r1]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	beq _0230F404
	ldr r3, [fp, sl, lsl #2]
	ldrb r2, [r3]
	tst r2, #2
	ldreqsh r1, [r3, #4]
	cmpeq lr, r1
	andeq r1, r2, #8
	cmpeq r0, r1
	bne _0230F404
	ldrh r1, [r3, #2]
	cmp r1, #0x63
	beq _0230F404
	cmp ip, r1
	movlt ip, r1
	movlt r7, sl
_0230F404:
	add sl, sl, #1
_0230F408:
	cmp sl, r5
	blt _0230F3B0
	mvn r0, #0
	cmp r7, r0
	beq _0230F4B0
	add r1, sp, #0
	ldr r2, [r1, r7, lsl #2]
	ldrh r0, [r4, #2]
	ldrh r1, [r2, #2]
	add r0, r1, r0
	cmp r0, #0x63
	movge r0, #0x63
	strh r0, [r2, #2]
	ldrb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	ldrneb r0, [r2]
	orrne r0, r0, #8
	strneb r0, [r2]
	bl ov29_02347040
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	add r0, r8, #4
	mov r1, #1
	bl ov29_023456BC
	ldr r0, _0230F644 ; =0x00001304
	bl ov29_022EACCC
	add r0, sp, #0xcc
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	bge _0230F4A0
	mov r0, r8
	mov r1, #0xc60
	bl LogMessageByIdWithPopup
	b _0230F624
_0230F4A0:
	ldr r1, _0230F648 ; =0x00000C61
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _0230F624
_0230F4B0:
	cmp sb, #0
	beq _0230F4CC
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0230F4CC
	bl GetCurrentBagCapacity
	mov r5, r0
_0230F4CC:
	mov r7, #0
	add r3, sp, #0
	mov r0, r7
	mov r1, #1
	b _0230F500
_0230F4E0:
	ldr r2, [r3, r7, lsl #2]
	ldrb r2, [r2]
	tst r2, #1
	movne r2, r1
	moveq r2, r0
	tst r2, #0xff
	beq _0230F508
	add r7, r7, #1
_0230F500:
	cmp r7, r5
	blt _0230F4E0
_0230F508:
	mov r0, r8
	mov r1, r4
	mov r2, #1
	bl ov29_02348DD8
	cmp r0, #0
	bne _0230F624
	cmp r7, r5
	bne _0230F544
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _0230F64C ; =0x00000C62
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _0230F624
_0230F544:
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _0230F55C
	ldr r0, _0230F630 ; =0x00001305
	bl ov29_022EACCC
	b _0230F564
_0230F55C:
	ldr r0, _0230F644 ; =0x00001304
	bl ov29_022EACCC
_0230F564:
	add r0, sp, #0xcc
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	bge _0230F5BC
	ldrh r1, [r4]
	mov r0, r8
	strh r1, [r6, #0x62]
	ldrh r1, [r4, #2]
	strh r1, [r6, #0x64]
	ldrh r1, [r4, #4]
	strh r1, [r6, #0x66]
	bl ov29_022F9EA0
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	add r0, r8, #4
	mov r1, #1
	bl ov29_023456BC
	mov r0, r8
	mov r1, #0xc60
	bl LogMessageByIdWithPopup
	b _0230F624
_0230F5BC:
	mov r0, r4
	bl ov29_02348D3C
	mov r5, r0
	mov r0, r4
	bl ov29_02345004
	cmp r0, #0
	mov r0, #0
	beq _0230F5F8
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _0230F650 ; =0x00000C63
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _0230F624
_0230F5F8:
	mov r1, r4
	bl ov29_02344B44
	add r0, r8, #4
	mov r1, #1
	bl ov29_023456BC
	ldr r1, _0230F648 ; =0x00000C61
	mov r0, r8
	bl LogMessageByIdWithPopup
	mov r0, r4
	mov r1, r5
	bl ov29_02348ECC
_0230F624:
	add sp, sp, #0x198
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230F62C: .word 0x00000C5E
_0230F630: .word 0x00001305
_0230F634: .word 0x00001308
_0230F638: .word 0x00000C5F
_0230F63C: .word 0x02353538
_0230F640: .word 0x020AF6B8
_0230F644: .word 0x00001304
_0230F648: .word 0x00000C61
_0230F64C: .word 0x00000C62
_0230F650: .word 0x00000C63
	arm_func_end ov29_0230F164

	arm_func_start ov29_0230F654
ov29_0230F654: ; 0x0230F654
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl EntityIsValid__0230F008
	cmp r0, #0
	moveq r0, #0
	beq _0230F6C0
	ldr r3, [r6, #0xb4]
	add r0, sp, #4
	ldrb r2, [r3, #0x5f]
	mov r1, r5
	str r2, [sp]
	ldrsh r2, [r3, #4]
	ldrb r3, [r3, #0x5e]
	bl sub_0201116C
	cmp r0, #0
	moveq r0, #0
	beq _0230F6C0
	ldrh r1, [sp, #4]
	mov r0, #1
	strh r1, [r4]
	ldrh r1, [sp, #6]
	strh r1, [r4, #2]
	ldrh r1, [sp, #8]
	strh r1, [r4, #4]
_0230F6C0:
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov29_0230F654

	arm_func_start AuraBowIsActive
AuraBowIsActive: ; 0x0230F6C8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	mov r1, #0x6f
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0230F710
	ldrsh r0, [r4, #0x66]
	bl IsAuraBow
	cmp r0, #0
	bne _0230F718
_0230F710:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0230F718:
	ldrsh r1, [r4, #0x66]
	mov r0, r5
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end AuraBowIsActive

	arm_func_start ov29_0230F728
ov29_0230F728: ; 0x0230F728
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr ip, [r1, #0xb4]
	ldr r4, [r0, #0xb4]
	ldrb r0, [ip, #0x5f]
	mov r5, r3
	mov r1, r2
	str r0, [sp]
	ldrsh r2, [ip, #4]
	ldrb r3, [ip, #0x5e]
	add r0, sp, #4
	bl sub_0201116C
	ldr r1, [r4, #0x18c]
	add r0, r4, #0x100
	orr r1, r1, r5
	str r1, [r4, #0x18c]
	ldrsh r1, [sp, #8]
	strh r1, [r0, #0x90]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov29_0230F728

	arm_func_start ExclusiveItemOffenseBoost
ExclusiveItemOffenseBoost: ; 0x0230F778
	ldr r0, [r0, #0xb4]
	add r0, r0, r1
	ldrb r0, [r0, #0x224]
	bx lr
	arm_func_end ExclusiveItemOffenseBoost

	arm_func_start ExclusiveItemDefenseBoost
ExclusiveItemDefenseBoost: ; 0x0230F788
	ldr r0, [r0, #0xb4]
	add r0, r0, r1
	ldrb r0, [r0, #0x226]
	bx lr
	arm_func_end ExclusiveItemDefenseBoost

	arm_func_start ov29_0230F798
ov29_0230F798: ; 0x0230F798
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, #0
	ldr r4, _0230F80C ; =0x02353538
	mov sb, r0
	mov r8, r1
	mov r5, r6
_0230F7B0:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl EntityIsValid__0230F008
	cmp r0, #0
	beq _0230F7F0
	mov r0, r7
	mov r1, r8
	bl ItemIsActive__0230F810
	cmp r0, #0
	addne r0, r6, #1
	movne r0, r0, lsl #0x10
	strne r7, [sb, r6, lsl #2]
	movne r6, r0, asr #0x10
_0230F7F0:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
	cmp r5, #4
	blt _0230F7B0
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0230F80C: .word 0x02353538
	arm_func_end ov29_0230F798

	arm_func_start ItemIsActive__0230F810
ItemIsActive__0230F810: ; 0x0230F810
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ItemIsActive__0230F810

	arm_func_start ov29_0230F840
ov29_0230F840: ; 0x0230F840
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r6, #0
	ldr r5, _0230F8A8 ; =0x02353538
	b _0230F898
_0230F854:
	ldr r0, [r5]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl EntityIsValid__0230F008
	cmp r0, #0
	beq _0230F88C
	mov r0, r7
	mov r1, r4
	bl ExclusiveItemEffectIsActive__0230F8AC
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_0230F88C:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
_0230F898:
	cmp r6, #4
	blt _0230F854
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0230F8A8: .word 0x02353538
	arm_func_end ov29_0230F840

	arm_func_start ExclusiveItemEffectIsActive__0230F8AC
ExclusiveItemEffectIsActive__0230F8AC: ; 0x0230F8AC
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #6]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r2, #0x228
	bl ExclusiveItemEffectFlagTest
	ldmia sp!, {r3, pc}
	arm_func_end ExclusiveItemEffectIsActive__0230F8AC

	arm_func_start ov29_0230F8D0
ov29_0230F8D0: ; 0x0230F8D0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	bl EntityIsValid__0230F008
	cmp r0, #0
	moveq r0, #0xff
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r8, #0xb4]
	mov r5, #0
	ldrb r6, [r0, #0x4c]
	ldr r4, _0230F97C ; =0x0235171C
	b _0230F96C
_0230F900:
	mov r1, r6, lsl #2
	add r0, r4, r6, lsl #2
	ldrsh ip, [r8, #4]
	ldrsh r3, [r4, r1]
	ldrsh r2, [r8, #6]
	ldrsh r1, [r0, #2]
	add r0, ip, r3
	add r1, r2, r1
	bl GetTile
	ldr sb, [r0, #0xc]
	cmp sb, #0
	beq _0230F958
	mov r0, sb
	bl IsMonster__0230F980
	cmp r0, #0
	beq _0230F958
	mov r0, sb
	mov r1, r7
	bl ItemIsActive__0230F810
	cmp r0, #0
	movne r0, r6
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0230F958:
	add r0, r6, #1
	and r0, r0, #0xff
	add r1, r5, #1
	and r6, r0, #7
	and r5, r1, #0xff
_0230F96C:
	cmp r5, #8
	blo _0230F900
	mov r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0230F97C: .word 0x0235171C
	arm_func_end ov29_0230F8D0

	arm_func_start IsMonster__0230F980
IsMonster__0230F980: ; 0x0230F980
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end IsMonster__0230F980

	arm_func_start ov29_0230F9A4
ov29_0230F9A4: ; 0x0230F9A4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl IsMonster__0230F980
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl ov29_0234908C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_0230F9A4

	arm_func_start ov29_0230F9D8
ov29_0230F9D8: ; 0x0230F9D8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r2, _0230FB28 ; =0x02353538
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	ldrb r0, [r0, #0x748]
	bl TreasureBoxDropsEnabled
	cmp r0, #0
	ldrne r4, [r5, #0xb4]
	ldrneb r0, [r4, #6]
	cmpne r0, #0
	beq _0230FB20
	ldr r0, [r6]
	mov r7, #0
	cmp r0, #1
	bne _0230FA54
	mov r0, r6
	mov r1, #0x43
	bl IqSkillIsEnabled
	cmp r0, #0
	addne r0, r7, #1
	movne r0, r0, lsl #0x10
	movne r7, r0, asr #0x10
	mov r0, r6
	mov r1, #0x56
	bl ExclusiveItemEffectIsActive__0230F8AC
	cmp r0, #0
	addne r0, r7, #1
	movne r0, r0, lsl #0x10
	movne r7, r0, asr #0x10
_0230FA54:
	ldrsh r1, [r4, #2]
	add r0, sp, #0
	mov r2, r7
	bl ov29_02346060
	cmp r0, #0
	beq _0230FA84
	add r2, sp, #0
	mov r0, r5
	add r1, r5, #4
	mov r3, #1
	bl ov29_02345A3C
	b _0230FB20
_0230FA84:
	mov r0, r6
	mov r1, #0x75
	bl AbilityIsActive2
	mov r2, r0
	add r0, sp, #0
	mov r1, r5
	mov r3, r7
	bl ov29_023460DC
	cmp r0, #0
	beq _0230FAC4
	add r2, sp, #0
	mov r0, r5
	add r1, r5, #4
	mov r3, #1
	bl ov29_02345A3C
	b _0230FB20
_0230FAC4:
	mov r0, r6
	bl IsMonster__0230F980
	cmp r0, #0
	beq _0230FB20
	mov r0, r6
	mov r1, #0x62
	bl ExclusiveItemEffectIsActive__0230F8AC
	cmp r0, #0
	beq _0230FB20
	ldr r0, _0230FB2C ; =0x022C4650
	ldrsh r0, [r0]
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	beq _0230FB20
	add r0, sp, #0
	mov r1, #0xb7
	mov r2, #2
	bl ov29_02344BD0
	add r2, sp, #0
	mov r0, r5
	add r1, r5, #4
	mov r3, #1
	bl ov29_02345A3C
_0230FB20:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0230FB28: .word 0x02353538
_0230FB2C: .word 0x022C4650
	arm_func_end ov29_0230F9D8

	arm_func_start ov29_0230FB30
ov29_0230FB30: ; 0x0230FB30
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0230FB88 ; =0x023529A8
	mov r5, r0
	ldrh r2, [r1]
	add r0, sp, #0
	strh r2, [sp]
	ldrh r1, [r1, #2]
	strh r1, [sp, #2]
	bl ov29_02347184
	movs r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r4
	mov r0, #0
	bl ov29_02344B9C
	ldr r1, _0230FB8C ; =0x00000F62
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230FB88: .word 0x023529A8
_0230FB8C: .word 0x00000F62
	arm_func_end ov29_0230FB30

	arm_func_start TickNoSlipCap
TickNoSlipCap: ; 0x0230FB90
	stmdb sp!, {r3, r4, r5, lr}
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	bne _0230FBB8
	mov r0, r5
	mov r1, #0xd
	bl HasHeldItem
_0230FBB8:
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r4, [r5, #0xb4]
	ldrb r0, [r4, #6]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x107]
	add r1, r0, #1
	and r0, r1, #0xff
	cmp r0, #0x14
	strb r1, [r4, #0x107]
	movhs r0, #0x13
	strhsb r0, [r4, #0x107]
	mov r0, #0x64
	bl DungeonRandInt
	ldrb r2, [r4, #0x107]
	ldr r1, _0230FC20 ; =0x022C4BE4
	mov r2, r2, lsl #1
	ldrsh r1, [r1, r2]
	cmp r0, r1
	ldmgeia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_0230FB30
	mov r0, #0
	strb r0, [r4, #0x107]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230FC20: .word 0x022C4BE4
	arm_func_end TickNoSlipCap

	arm_func_start ov29_0230FC24
ov29_0230FC24: ; 0x0230FC24
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x34
	movs r5, r0
	beq _02310FF4
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	ldr r4, [r5, #0xb4]
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0x150]
	bl ov29_022FB718
	bl ov29_0234B294
	mov r0, r5
	bl TryWeatherFormChange
	mov r0, r5
	mov r1, #0x1d
	bl ItemIsActive__02311034
	cmp r0, #0
	beq _0230FD0C
	ldrb r0, [r4, #0x17c]
	add r1, r0, #1
	and r0, r1, #0xff
	cmp r0, #0x14
	strb r1, [r4, #0x17c]
	movhs r0, #0x13
	strhsb r0, [r4, #0x17c]
	mov r0, #0x64
	bl DungeonRandInt
	ldrb r2, [r4, #0x17c]
	ldr r1, _02310A6C ; =0x022C4BBC
	mov r2, r2, lsl #1
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bge _0230FD0C
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0x17c]
	bl ov29_022EC62C
	mov r0, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	mov r2, #0
	mov r0, r5
	mov r1, r5
	mov r3, r2
	bl TryWarp
	mov r0, r5
	bl ov29_022F42F8
_0230FD0C:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0231013C
	mov r0, r5
	mov r1, #0x1e
	mov r7, #0xa
	bl ItemIsActive__02311034
	cmp r0, #0
	movne r2, r7
	moveq r2, #0
	mov r0, r5
	mov r1, #0x26
	sub r7, r7, r2
	bl ItemIsActive__02311034
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	mov r0, r5
	mov r1, #0x10
	sub r7, r7, r2
	bl IqSkillIsEnabled
	cmp r0, #0
	mov r0, r5
	mov r1, #0x22
	subne r7, r7, #1
	bl ItemIsActive__02311034
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	mov r0, r5
	mov r1, #0x11
	add r7, r7, r2
	bl ItemIsActive__02311034
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	mov r0, r5
	mov r1, #0x32
	add r7, r7, r2
	bl ItemIsActive__02311034
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	mov r0, r5
	mov r1, #0x59
	add r7, r7, r2
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	adds r7, r7, r0
	movmi r7, #0
	ldr r3, _02310A70 ; =0x0000199A
	cmp r7, #0x13
	mov r6, #0
	ldr r2, _02310A74 ; =0x022C4FC4
	movgt r7, #0x13
	add r0, sp, #0x2c
	add r1, sp, #0x24
	str r6, [sp, #0x24]
	str r3, [sp, #0x28]
	add r2, r2, r7, lsl #3
	bl MultiplyFixedPoint64
	ldrb r2, [r4, #0x15d]
	cmp r2, #1
	ldrhi r0, _02310A78 ; =0x022C4A5C
	ldrhi r1, [sp, #0x30]
	ldrhi r0, [r0, r2, lsl #2]
	addhi r0, r1, r0, lsl #16
	strhi r0, [sp, #0x30]
	mov r0, #0
	strb r0, [r4, #0x15d]
	add r0, r4, #0x100
	ldrh r2, [r0, #0x46]
	ldrh r1, [r0, #0x48]
	add r0, sp, #0x2c
	strh r2, [sp, #0x20]
	strh r1, [sp, #0x22]
	bl BinToDecFixedPoint
	strh r0, [sp, #0x14]
	mov r0, r0, lsr #0x10
	add r1, r4, #0x100
	strh r0, [sp, #0x16]
	ldrh r0, [r1, #0x46]
	sub r3, sp, #4
	ldrh r2, [sp, #0x14]
	strh r0, [r3]
	ldrh r0, [r1, #0x48]
	ldrh r1, [sp, #0x16]
	strh r0, [r3, #2]
	ldr r0, [r3]
	strh r2, [r3]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl SubFixedPoint
	strh r0, [sp, #0x10]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #0x12]
	ldrh r1, [sp, #0x10]
	add r0, r4, #0x100
	ldrh r3, [sp, #0x12]
	strh r1, [r0, #0x46]
	ldrh r2, [sp, #0x20]
	strh r3, [r0, #0x48]
	sub r0, sp, #4
	ldrh r1, [sp, #0x22]
	strh r2, [r0]
	mov r6, #0
	strh r1, [r0, #2]
	ldr r0, [r0]
	mov r7, #1
	bl CeilFixedPoint
	cmp r0, #0x14
	blt _0230FEFC
	add r0, r4, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0x14
	ldrlt r6, _02310A7C ; =0x00000DE6
_0230FEFC:
	ldrh r1, [sp, #0x20]
	ldrh r0, [sp, #0x22]
	sub r2, sp, #4
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0xa
	blt _0230FF48
	add r0, r4, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0xa
	ldrlt r6, _02310A80 ; =0x00000DE7
_0230FF48:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0
	bne _0230FF98
	mov r0, #0
	bl sub_02050FF8
	strh r0, [sp, #0xc]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #0xe]
	ldrh r2, [sp, #0xc]
	add r0, r4, #0x100
	ldrh r1, [sp, #0xe]
	strh r2, [r0, #0x46]
	strh r1, [r0, #0x48]
_0230FF98:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0
	bge _0230FFE8
	mov r0, #0
	bl sub_02050FF8
	strh r0, [sp, #8]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #0xa]
	ldrh r2, [sp, #8]
	add r0, r4, #0x100
	ldrh r1, [sp, #0xa]
	strh r2, [r0, #0x46]
	strh r1, [r0, #0x48]
_0230FFE8:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0
	bne _023100D8
	bl ov29_022F2FE4
	mov r0, r5
	bl ov29_022EC62C
	mov r0, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	ldr r0, _02310A84 ; =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x799]
	cmp r0, #0xa
	addlo r0, r0, #1
	strlob r0, [r1, #0x799]
	ldr r0, _02310A84 ; =0x02353538
	mov r1, r5
	ldr r0, [r0]
	ldrb r0, [r0, #0x799]
	cmp r0, #1
	ldreq r6, _02310A88 ; =0x00000DE8
	cmp r0, #2
	ldreq r6, _02310A8C ; =0x00000DE9
	moveq r7, #0
	cmp r0, #3
	mov r0, r5
	ldreq r6, _02310A90 ; =0x00000DEA
	moveq r7, #0
	bl ov29_02307BDC
	mov r0, r5
	mov r1, #1
	mov r2, #0xe
	mov r3, #0x250
	bl ov29_0230D11C
	mov r0, #1
	strb r0, [r4, #0x150]
	add r0, r4, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r0, #0
	movne r6, #0
	b _023100E8
_023100D8:
	ldr r0, _02310A84 ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x799]
_023100E8:
	cmp r6, #0
	beq _0231013C
	cmp r7, #0
	beq _02310124
	ldr r0, _02310A84 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _02310124
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310124
	ldr r0, _02310A94 ; =0x00001303
	bl ov29_022EACCC
_02310124:
	mov r0, r5
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #0x1e
	mov r1, #0x32
	bl ov29_022EA370
_0231013C:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	ldr r0, _02310A84 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0xc000
	ldrb r0, [r0, #0xd5a]
	cmp r0, #0
	bne _0231037C
	mov r0, r5
	bl GetApparentWeather
	cmp r0, #5
	mov r0, r5
	bne _023101FC
	mov r1, #0x77
	bl AbilityIsActive2
	cmp r0, #0
	bne _02310360
	mov r0, r5
	mov r1, #0x4d
	bl AbilityIsActive2
	cmp r0, #0
	bne _02310360
	mov r0, r5
	mov r1, #6
	bl MonsterIsType
	cmp r0, #0
	bne _02310360
	ldr r3, _02310A98 ; =0x00000DBD
	mov r6, #9
	mov r0, r5
	mov r1, r5
	mov r2, #1
	str r6, [sp]
	bl ov29_02314D40
	cmp r0, #0
	bne _02310360
	ldr r0, _02310A9C ; =0x022C46EC
	ldr r3, _02310AA0 ; =0x0000025F
	ldrsh r1, [r0]
	mov r0, r5
	mov r2, #0x12
	bl ov29_0230D11C
	b _02310360
_023101FC:
	bl GetApparentWeather
	cmp r0, #2
	mov r0, r5
	bne _02310298
	mov r1, #0x1d
	bl AbilityIsActive2
	cmp r0, #0
	bne _02310360
	mov r0, r5
	mov r1, #9
	bl MonsterIsType
	cmp r0, #0
	bne _02310360
	mov r0, r5
	mov r1, #0xd
	bl MonsterIsType
	cmp r0, #0
	bne _02310360
	mov r0, r5
	mov r1, #0x11
	bl MonsterIsType
	cmp r0, #0
	bne _02310360
	ldr r3, _02310A98 ; =0x00000DBD
	mov r6, #9
	mov r0, r5
	mov r1, r5
	mov r2, #1
	str r6, [sp]
	bl ov29_02314D40
	cmp r0, #0
	bne _02310360
	ldr r0, _02310A9C ; =0x022C46EC
	ldr r3, _02310AA0 ; =0x0000025F
	ldrsh r1, [r0]
	mov r0, r5
	mov r2, #0x12
	bl ov29_0230D11C
	b _02310360
_02310298:
	bl GetApparentWeather
	cmp r0, #1
	bne _02310360
	mov r0, r5
	mov r1, #0x5a
	bl AbilityIsActive2
	cmp r0, #0
	beq _02310304
	ldr r3, _02310A98 ; =0x00000DBD
	mov r6, #9
	mov r0, r5
	mov r1, r5
	mov r2, #1
	str r6, [sp]
	bl ov29_02314D40
	cmp r0, #0
	bne _02310360
	mov r0, #2
	mov r1, #0x5a
	bl ov29_0234B084
	ldr r0, _02310A9C ; =0x022C46EC
	mov r2, #0x19
	ldrsh r1, [r0]
	mov r0, r5
	rsb r3, r2, #0x278
	bl ov29_0230D11C
	b _02310360
_02310304:
	mov r0, r5
	mov r1, #0x55
	bl AbilityIsActive2
	cmp r0, #0
	beq _02310360
	ldr r3, _02310A98 ; =0x00000DBD
	mov r6, #9
	mov r0, r5
	mov r1, r5
	mov r2, #1
	str r6, [sp]
	bl ov29_02314D40
	cmp r0, #0
	bne _02310360
	mov r0, #2
	mov r1, #0x55
	bl ov29_0234B084
	ldr r0, _02310A9C ; =0x022C46EC
	ldr r3, _02310AA0 ; =0x0000025F
	ldrsh r1, [r0]
	mov r0, r5
	mov r2, #0x1a
	bl ov29_0230D11C
_02310360:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
_0231037C:
	mov r0, #0x64
	bl DungeonRandInt
	mov r6, r0
	mov r0, r5
	mov r1, #0x21
	bl AbilityIsActive2
	cmp r0, #0
	beq _023103F8
	ldr r0, _02310AA4 ; =0x022C46A0
	ldrsh r0, [r0]
	cmp r6, r0
	bge _023103F8
	mov r0, r5
	mov r1, #0
	bl ov29_02300634
	cmp r0, #0
	beq _023103F8
	mov r0, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	mov r0, r5
	mov r1, r5
	mov r2, #1
	mov r3, #0
	bl ov29_02305C28
_023103F8:
	mov r0, r5
	mov r1, #0x51
	bl AbilityIsActive2
	cmp r0, #0
	beq _02310474
	mov r0, r5
	bl GetApparentWeather
	cmp r0, #4
	bne _02310474
	mov r0, r5
	mov r1, #0
	bl ov29_02300634
	cmp r0, #0
	ldrneb r0, [r4, #0xc4]
	cmpne r0, #3
	beq _02310474
	mov r0, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	mov r3, #0
	mov r0, r5
	mov r1, r5
	mov r2, #1
	str r3, [sp]
	bl ov29_023058C4
_02310474:
	mov r0, r5
	mov r1, #0xb
	bl AbilityIsActive2
	cmp r0, #0
	beq _023104C0
	ldrb r1, [r4, #0x11f]
	ldr r0, _02310AA8 ; =0x022C466C
	add r2, r1, #1
	ldrsh r0, [r0]
	and r1, r2, #0xff
	strb r2, [r4, #0x11f]
	cmp r1, r0
	blt _023104C0
	mov r3, #0
	mov r0, r5
	mov r1, r5
	mov r2, #0x7f
	strb r3, [r4, #0x11f]
	bl BoostSpeedOneStage
_023104C0:
	ldrb r0, [r4, #0xbd]
	cmp r0, #4
	bne _023104F8
	mov r0, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	mov r0, r5
	bl ov29_022E53F0
_023104F8:
	ldrb r0, [r4, #0xbf]
	cmp r0, #1
	bne _02310590
	ldrb r0, [r4, #0xc1]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r4, #0xc1]
	ldrb r0, [r4, #0xc1]
	cmp r0, #0
	bne _02310574
	mov r0, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	ldr r1, _02310AAC ; =0x022C4610
	mov r0, r5
	ldrsh r2, [r1]
	mov r1, r5
	strb r2, [r4, #0xc1]
	bl ov29_02307BDC
	ldr r0, _02310AB0 ; =0x022C44D4
	mov r2, #1
	ldrsh r1, [r0]
	mov r0, r5
	rsb r3, r2, #0x248
	bl ov29_0230D11C
_02310574:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
_02310590:
	bl GravityIsActive
	cmp r0, #0
	beq _023105DC
	mov r0, r5
	bl HasConditionalGroundImmunity
	cmp r0, #0
	beq _023105C0
	mov r0, r5
	mov r1, r5
	bl ov29_02306CD0
	mov r0, r5
	bl ov29_02321104
_023105C0:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
_023105DC:
	mov r0, r5
	mov r1, #0x69
	bl AbilityIsActive2
	cmp r0, #0
	beq _02310614
	mov r0, r5
	bl ov29_0231B1B8
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
_02310614:
	mov r0, r5
	bl GetTileAtEntity
	bl ov29_02337E2C
	cmp r0, #0
	bne _023106A4
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _02310AB4 ; =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	ldrsh r0, [r4, #0x10]
	cmp r0, r1
	bge _0231067C
	mov r0, r5
	mov r1, #0x64
	bl ExclusiveItemEffectIsActive__02311064
	cmp r0, #0
	beq _0231067C
	ldr r0, _02310AB8 ; =0x022C4664
	mov r3, #0
	ldrsh r2, [r0]
	mov r0, r5
	mov r1, r5
	str r3, [sp]
	bl TryIncreaseHp
_0231067C:
	mov r0, r5
	mov r1, #0x65
	bl ExclusiveItemEffectIsActive__02311064
	cmp r0, #0
	beq _023106A4
	mov r2, #1
	mov r0, r5
	mov r1, r5
	mov r3, r2
	bl ov29_02305C28
_023106A4:
	mov r0, r5
	mov r1, #0x5c
	bl ExclusiveItemEffectIsActive__02311064
	cmp r0, #0
	beq _02310754
	mov sl, #0
	ldr r6, _02310A84 ; =0x02353538
	mov sb, sl
	mov r7, #1
_023106C8:
	ldr r0, [r6]
	add r0, r0, sb, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb28]
	mov r0, r8
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310718
	ldr r0, [r8, #0xb4]
	ldrb r0, [r0, #0xbf]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02310718
	mov r0, r8
	bl ov29_022E543C
	mov r0, r8
	mov r1, r8
	bl ov29_023061A8
	mov sl, r7
_02310718:
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, asr #0x10
	cmp sb, #4
	blt _023106C8
	cmp sl, #0
	beq _02310754
	ldr r0, _02310ABC ; =0x022C464C
	mov r6, #1
	ldrsh r2, [r0]
	mov r0, r5
	mov r1, r5
	mov r3, #0
	str r6, [sp]
	bl TryIncreaseHp
_02310754:
	ldrb r0, [r4, #0xbf]
	cmp r0, #2
	bne _02310830
	ldrb r0, [r4, #0xc1]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r4, #0xc1]
	ldrb r0, [r4, #0xc1]
	cmp r0, #0
	bne _02310810
	mov r0, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	ldreqb r0, [r4, #0xbf]
	cmpeq r0, #2
	bne _02310FF4
	ldr r1, _02310AC0 ; =0x022C46A8
	mov r0, r5
	ldrsh r2, [r1]
	mov r1, r5
	strb r2, [r4, #0xc1]
	bl ov29_02307BDC
	mov r0, r5
	mov r1, #0x72
	bl AbilityIsActive2
	cmp r0, #0
	beq _023107F8
	ldr r0, _02310AC4 ; =0x022C44D8
	mov r6, #1
	ldrsh r2, [r0]
	mov r0, r5
	mov r1, r5
	mov r3, #0
	str r6, [sp]
	bl TryIncreaseHp
	b _02310810
_023107F8:
	ldr r0, _02310AC4 ; =0x022C44D8
	mov r2, #3
	ldrsh r1, [r0]
	mov r0, r5
	rsb r3, r2, #0x24c
	bl ov29_0230D11C
_02310810:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	beq _0231092C
	b _02310FF4
_02310830:
	cmp r0, #3
	bne _0231092C
	ldrb r0, [r4, #0xc1]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r4, #0xc1]
	ldrb r0, [r4, #0xc1]
	cmp r0, #0
	bne _02310910
	ldrb r6, [r4, #0xc2]
	cmp r6, #0x1d
	addlo r0, r6, #1
	strlob r0, [r4, #0xc2]
	ldr r0, _02310AC8 ; =0x022C4414
	cmp r6, #0x1d
	ldrsh r0, [r0]
	movge r6, #0x1d
	cmp r6, #0
	strb r0, [r4, #0xc1]
	mov r0, #0
	movlt r6, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	ldreqb r0, [r4, #0xbf]
	cmpeq r0, #3
	bne _02310FF4
	mov r0, r5
	mov r1, r5
	bl ov29_02307BDC
	mov r0, r5
	mov r1, #0x72
	bl AbilityIsActive2
	cmp r0, #0
	beq _023108F4
	ldr r0, _02310ACC ; =0x022C4C9C
	mov r1, r6, lsl #1
	ldrsh r2, [r0, r1]
	mov r6, #1
	mov r0, r5
	mov r1, r5
	mov r3, #0
	str r6, [sp]
	bl TryIncreaseHp
	b _02310910
_023108F4:
	ldr r0, _02310ACC ; =0x022C4C9C
	mov r1, r6, lsl #1
	ldrsh r1, [r0, r1]
	mov r2, #3
	mov r0, r5
	rsb r3, r2, #0x24c
	bl ov29_0230D11C
_02310910:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
_0231092C:
	ldrb r0, [r4, #0xc4]
	cmp r0, #7
	bne _023109D4
	ldrb r0, [r4, #0xcd]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r4, #0xcd]
	ldrb r0, [r4, #0xcd]
	cmp r0, #0
	bne _023109B4
	mov r0, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	ldr r1, _02310AD0 ; =0x022C4454
	mov r0, r5
	ldrsh r2, [r1]
	mov r1, r5
	strb r2, [r4, #0xcd]
	bl ov29_02307BDC
	ldr r1, [r4, #0xc8]
	mov r0, r5
	bl ov29_022E42E8
	ldr r1, _02310AD4 ; =0x022C446C
	mov r0, r5
	ldrsh r1, [r1]
	mov r2, #2
	mov r3, #0x248
	bl ov29_0230D11C
_023109B4:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	beq _02310B6C
	b _02310FF4
_023109D4:
	cmp r0, #4
	bne _02310AF8
	ldrb r0, [r4, #0xcd]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r4, #0xcd]
	ldrb r0, [r4, #0xcd]
	cmp r0, #0
	bne _02310A4C
	mov r0, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	ldr r1, _02310AD8 ; =0x022C45F0
	mov r0, r5
	ldrsh r2, [r1]
	mov r1, r5
	strb r2, [r4, #0xcd]
	bl ov29_02307BDC
	ldr r0, _02310ADC ; =0x022C45D0
	ldr r3, _02310AE0 ; =0x0000024A
	ldrsh r1, [r0]
	mov r0, r5
	mov r2, #5
	bl ov29_0230D11C
_02310A4C:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	beq _02310B6C
	b _02310FF4
	.align 2, 0
_02310A6C: .word 0x022C4BBC
_02310A70: .word 0x0000199A
_02310A74: .word 0x022C4FC4
_02310A78: .word 0x022C4A5C
_02310A7C: .word 0x00000DE6
_02310A80: .word 0x00000DE7
_02310A84: .word 0x02353538
_02310A88: .word 0x00000DE8
_02310A8C: .word 0x00000DE9
_02310A90: .word 0x00000DEA
_02310A94: .word 0x00001303
_02310A98: .word 0x00000DBD
_02310A9C: .word 0x022C46EC
_02310AA0: .word 0x0000025F
_02310AA4: .word 0x022C46A0
_02310AA8: .word 0x022C466C
_02310AAC: .word 0x022C4610
_02310AB0: .word 0x022C44D4
_02310AB4: .word 0x000003E7
_02310AB8: .word 0x022C4664
_02310ABC: .word 0x022C464C
_02310AC0: .word 0x022C46A8
_02310AC4: .word 0x022C44D8
_02310AC8: .word 0x022C4414
_02310ACC: .word 0x022C4C9C
_02310AD0: .word 0x022C4454
_02310AD4: .word 0x022C446C
_02310AD8: .word 0x022C45F0
_02310ADC: .word 0x022C45D0
_02310AE0: .word 0x0000024A
_02310AE4: .word 0x022C45E8
_02310AE8: .word 0x022C4590
_02310AEC: .word 0x022C44BC
_02310AF0: .word 0x022C46AC
_02310AF4: .word 0x022C4588
_02310AF8:
	cmp r0, #5
	bne _02310B6C
	ldrb r0, [r4, #0xcd]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r4, #0xcd]
	ldrb r0, [r4, #0xcd]
	cmp r0, #0
	bne _02310B6C
	mov r0, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	ldr r1, _02310AE4 ; =0x022C45E8
	ldr r0, _02310AE8 ; =0x022C4590
	ldrsh r3, [r1]
	ldrsh r2, [r0]
	mov r0, r5
	mov r1, r5
	strb r3, [r4, #0xcd]
	mov r6, #1
	mov r3, #0
	str r6, [sp]
	bl TryIncreaseHp
_02310B6C:
	ldrb r0, [r4, #0xd8]
	cmp r0, #1
	bne _02310C28
	ldrb r0, [r4, #0xdc]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r4, #0xdc]
	ldrb r0, [r4, #0xdc]
	cmp r0, #0
	bne _02310C0C
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _02310AB4 ; =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	ldr r1, _02310AEC ; =0x022C44BC
	movs r6, r0, asr #2
	ldrsh r1, [r1]
	mov r0, #0
	addeq r6, r6, #1
	strb r1, [r4, #0xdc]
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	arm_func_end ov29_0230FC24

	arm_func_start ov29_02310BDC
ov29_02310BDC: ; 0x02310BDC
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	mov r0, r5
	mov r1, r5
	bl ov29_02307BDC
	mov r2, #7
	mov r0, r5
	mov r1, r6
	add r3, r2, #0x244
	bl ov29_0230D11C
_02310C0C:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	arm_func_end ov29_02310BDC

	arm_func_start ov29_02310C18
ov29_02310C18: ; 0x02310C18
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
_02310C28:
	ldrb r0, [r4, #0xe0]
	cmp r0, #1
	bne _02310DE0
	ldrb r0, [r4, #0xea]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r4, #0xea]
	ldrb r0, [r4, #0xea]
	cmp r0, #0
	bne _02310DC4
	ldr r0, _02310A84 ; =0x02353538
	ldrb r2, [r4, #0xe8]
	ldr r0, [r0]
	ldr r1, _02310AF0 ; =0x022C46AC
	add r0, r0, r2, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	ldrsh r1, [r1]
	ldr r0, _02310AF4 ; =0x022C4588
	cmp r7, #0
	ldrsh r6, [r0]
	strb r1, [r4, #0xea]
	moveq r0, #0
	streqb r0, [r4, #0xe0]
	beq _02310DC4
	ldr r0, [r7, #0xb4]
	ldr r1, [r4, #0xe4]
	ldr r0, [r0, #0xb0]
	cmp r1, r0
	movne r0, #0
	strneb r0, [r4, #0xe0]
	bne _02310DC4
	cmp r7, r5
	beq _02310CF0
	cmp r7, #0
	moveq r0, #0
	beq _02310CD0
	ldr r0, [r7]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
_02310CD0:
	cmp r0, #0
	beq _02310CF0
	mov r0, r7
	mov r1, #0x53
	bl AbilityIsActive2
	cmp r0, #0
	movne r8, #0
	bne _02310D00
_02310CF0:
	mov r0, r5
	mov r1, #0x3a
	bl AbilityIsActive2
	mov r8, r0
_02310D00:
	mov r0, r5
	bl ov29_022EC62C
	mov r0, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	mov r0, r7
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	ldrb r0, [r4, #0xc4]
	cmp r0, #1
	beq _02310DC4
	mov r0, r5
	mov r1, r5
	bl ov29_02307BDC
	mov r0, r5
	mov r1, r6
	mov r2, #9
	mov r3, #0x24c
	bl ov29_0230D11C
	cmp r8, #0
	beq _02310D94
	mov r0, r7
	mov r1, r7
	bl ov29_02307BDC
	mov r2, #0xd
	mov r0, r7
	mov r1, r6
	add r3, r2, #0x22c
	bl ov29_0230D11C
	b _02310DC4
_02310D94:
	mov r0, r5
	mov r1, #0x73
	bl AbilityIsActive2
	cmp r0, #0
	bne _02310DC4
	mov r8, #1
	mov r0, r7
	mov r1, r7
	mov r2, r6
	mov r3, #0
	str r8, [sp]
	bl TryIncreaseHp
_02310DC4:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
_02310DE0:
	ldrb r0, [r4, #0x106]
	cmp r0, #0
	beq _02310E9C
	add r0, r4, #6
	add r0, r0, #0x100
	bl TickStatusTurnCounter
	ldrb r0, [r4, #0x106]
	cmp r0, #0
	bne _02310E9C
	mov r0, #0
	bl DisplayActions
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	mov r1, r5
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r1, _02310FFC ; =0x00000DEB
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, r5
	mov r1, r5
	bl ov29_02307BDC
	ldrb r0, [r4, #0xd5]
	cmp r0, #7
	bne _02310E6C
	ldr r1, _02311000 ; =0x00000DEC
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02310E80
_02310E6C:
	mov r2, #0xb
	ldr r1, _02311004 ; =0x0000270F
	mov r0, r5
	rsb r3, r2, #0x258
	bl ov29_0230D11C
_02310E80:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
_02310E9C:
	ldrb r0, [r4, #0xd2]
	cmp r0, #1
	bne _02310F70
	add r0, r4, #0xd3
	bl TickStatusTurnCounter
	ldrb r0, [r4, #0xd3]
	cmp r0, #0
	bne _02310F70
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xd2]
	bl ov29_02300818
	cmp r0, #0
	bne _02310F70
	mov r0, r5
	mov r1, #0
	bl ov29_02300DCC
	cmp r0, #0
	bne _02310F70
	mov r0, r5
	bl ov29_02300CB0
	cmp r0, #0
	bne _02310F70
	mov r0, #0
	bl DisplayActions
	ldrh r0, [r4, #0xac]
	cmp r0, #0
	ldreq r0, _02311008 ; =0x00000165
	streqh r0, [r4, #0xac]
	ldrh r1, [r4, #0xac]
	add r0, sp, #0x18
	bl InitMove
	mov r1, #0
	ldrb r0, [sp, #0x18]
	add r6, sp, #0x18
	mov r2, r1
	orr r0, r0, #0x10
	strb r0, [sp, #0x18]
	mov r0, r5
	mov r3, r1
	stmia sp, {r1, r6}
	bl ov29_02322374
	mov r1, #0
	mov r0, r5
	strh r1, [r4, #0xac]
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	mov r0, #0
	str r0, [r4, #0xb8]
_02310F70:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	ldrb r0, [r4, #0xd2]
	cmp r0, #0xc
	bne _02310FD0
	add r0, r4, #0xd3
	bl TickStatusTurnCounter
	ldrb r0, [r4, #0xd3]
	cmp r0, #0
	bne _02310FD0
	mov r0, #0
	strb r0, [r4, #0xd2]
	mov r1, r5
	mov r2, r0
	strb r0, [r4, #0x154]
	bl SubstitutePlaceholderStringTags
	ldr r1, _0231100C ; =0x00000CBA
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_02310FD0:
	mov r0, r5
	bl EntityIsValid__02311010
	cmp r0, #0
	beq _02310FF4
	bl IsFloorOver
	cmp r0, #0
	bne _02310FF4
	mov r0, r5
	bl TickNoSlipCap
_02310FF4:
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02310FFC: .word 0x00000DEB
_02311000: .word 0x00000DEC
_02311004: .word 0x0000270F
_02311008: .word 0x00000165
_0231100C: .word 0x00000CBA
	arm_func_end ov29_02310C18

	arm_func_start EntityIsValid__02311010
EntityIsValid__02311010: ; 0x02311010
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__02311010

	arm_func_start ItemIsActive__02311034
ItemIsActive__02311034: ; 0x02311034
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ItemIsActive__02311034

	arm_func_start ExclusiveItemEffectIsActive__02311064
ExclusiveItemEffectIsActive__02311064: ; 0x02311064
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #6]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r2, #0x228
	bl ExclusiveItemEffectFlagTest
	ldmia sp!, {r3, pc}
	arm_func_end ExclusiveItemEffectIsActive__02311064

	arm_func_start TickStatusAndHealthRegen
TickStatusAndHealthRegen: ; 0x02311088
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs sl, r0
	mov r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov29_0234B294
	ldr r7, [sl, #0xb4]
	ldrb r0, [r7, #0xbf]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _023110E0
	mov r0, sl
	mov r1, #0x72
	bl AbilityIsActive2
	cmp r0, #0
	moveq r4, #1
_023110E0:
	ldrb r0, [r7, #0x150]
	cmp r0, #0
	cmpeq r4, #0
	bne _023112A8
	ldrb r0, [r7, #0xd8]
	cmp r0, #5
	ldrneb r0, [r7, #0xbd]
	cmpne r0, #3
	beq _023112A8
	ldrb r0, [r7, #6]
	mov r4, #0
	cmp r0, #0
	bne _02311120
	ldrsh r0, [r7, #2]
	bl GetRegenSpeed
	mov r4, r0
_02311120:
	cmp r4, #0
	beq _023112A8
	mov r0, sl
	mov r1, #0x11
	bl ItemIsActive__02311034
	cmp r0, #0
	bne _02311150
	mov r0, sl
	mov r1, #0x35
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _0231115C
_02311150:
	ldr r0, _02311800 ; =0x022C46F8
	ldrsh r0, [r0]
	add r4, r4, r0
_0231115C:
	ldrb r0, [r7, #0xd5]
	mov r1, #3
	cmp r0, #6
	ldreq r0, _02311804 ; =0x022C46D0
	ldreqsh r0, [r0]
	addeq r4, r4, r0
	mov r0, sl
	bl AbilityIsActive2
	cmp r0, #0
	beq _0231119C
	mov r0, sl
	bl GetApparentWeather
	cmp r0, #4
	ldreq r0, _02311808 ; =0x022C4578
	ldreqsh r0, [r0]
	addeq r4, r4, r0
_0231119C:
	mov r0, sl
	mov r1, #0x55
	bl AbilityIsActive2
	cmp r0, #0
	beq _023111C8
	mov r0, sl
	bl GetApparentWeather
	cmp r0, #4
	ldreq r0, _02311808 ; =0x022C4578
	ldreqsh r0, [r0]
	addeq r4, r4, r0
_023111C8:
	mov r0, sl
	mov r1, #0x4d
	bl AbilityIsActive2
	cmp r0, #0
	beq _023111F4
	mov r0, sl
	bl GetApparentWeather
	cmp r0, #5
	ldreq r0, _0231180C ; =0x022C4630
	ldreqsh r0, [r0]
	addeq r4, r4, r0
_023111F4:
	mov r0, sl
	mov r1, #0x49
	bl ExclusiveItemEffectIsActive__02311064
	cmp r0, #0
	ldrne r0, _02311810 ; =0x022C4674
	ldrsh r2, [r7, #0x12]
	ldrnesh r0, [r0]
	ldrsh r1, [r7, #0x16]
	addne r4, r4, r0
	cmp r4, #0x1f4
	movgt r4, #0x1f4
	add r3, r2, r1
	cmp r4, #0x1e
	ldr r0, _02311814 ; =0x000003E7
	movlt r4, #0x1e
	cmp r3, r0
	movgt r3, r0
	add r0, r7, #0x200
	ldrsh r1, [r0, #0x10]
	add r2, r7, #0x210
	add r1, r1, r3
	strh r1, [r0, #0x10]
	b _02311268
_02311250:
	ldrsh r1, [r7, #0x10]
	add r1, r1, #1
	strh r1, [r7, #0x10]
	ldrsh r1, [r2]
	sub r1, r1, r4
	strh r1, [r2]
_02311268:
	ldrsh r1, [r0, #0x10]
	cmp r1, r4
	bge _02311250
	ldrsh r1, [r7, #0x12]
	ldrsh r0, [r7, #0x16]
	ldr r2, _02311814 ; =0x000003E7
	add r1, r1, r0
	cmp r1, r2
	ldrsh r0, [r7, #0x10]
	movle r2, r1
	cmp r0, r2
	blt _023112A8
	ldr r0, _02311814 ; =0x000003E7
	cmp r1, r0
	movgt r1, r0
	strh r1, [r7, #0x10]
_023112A8:
	ldrb r0, [r7, #0xbd]
	cmp r0, #0
	beq _0231131C
	add r0, r7, #0xbe
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xbe]
	cmp r0, #0
	bne _0231131C
	ldr r0, [r7, #0x110]
	cmp r0, #1
	ble _02311304
	ldrb r0, [r7, #0xbd]
	cmp r0, #4
	bne _02311304
	mov r0, #0
	bl DisplayActions
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02311304:
	mov r2, #1
	mov r0, sl
	mov r1, sl
	mov r3, r2
	str r2, [sp]
	bl ov29_02305FDC
_0231131C:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xbf]
	cmp r0, #0
	beq _02311364
	add r0, r7, #0xc0
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xc0]
	cmp r0, #0
	bne _02311364
	mov r0, sl
	mov r1, sl
	bl ov29_023061A8
_02311364:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xc4]
	cmp r0, #0
	beq _023113B0
	add r0, r7, #0xcc
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xcc]
	cmp r0, #0
	bne _023113B0
	mov r0, sl
	mov r1, sl
	mov r2, #1
	bl EndFrozenClassStatus
_023113B0:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xd0]
	cmp r0, #0
	beq _023113F8
	add r0, r7, #0xd1
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xd1]
	cmp r0, #0
	bne _023113F8
	mov r0, sl
	mov r1, sl
	bl EndCringeClassStatus
_023113F8:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xd5]
	cmp r0, #0
	beq _02311468
	add r0, r7, #0xd6
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xd5]
	cmp r0, #0x10
	bne _02311450
	add r0, r7, #0xd7
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xd7]
	cmp r0, #0
	bne _02311450
	mov r0, sl
	bl ov29_023183E8
_02311450:
	ldrb r0, [r7, #0xd6]
	cmp r0, #0
	bne _02311468
	mov r0, sl
	mov r1, sl
	bl ov29_023064F4
_02311468:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xd8]
	cmp r0, #0
	beq _023114B8
	add r0, r7, #0xdb
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xdb]
	cmp r0, #0
	bne _023114B8
	mov r0, sl
	mov r1, sl
	mov r2, #0
	mov r3, #1
	bl ov29_02306728
_023114B8:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xe0]
	cmp r0, #0
	beq _02311500
	add r0, r7, #0xe9
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xe9]
	cmp r0, #0
	bne _02311500
	mov r0, sl
	mov r1, sl
	bl ov29_023068C4
_02311500:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xec]
	cmp r0, #0
	beq _02311548
	add r0, r7, #0xed
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xed]
	cmp r0, #0
	bne _02311548
	mov r0, sl
	mov r1, sl
	bl ov29_02306950
_02311548:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xef]
	cmp r0, #0
	beq _02311594
	add r0, r7, #0xf0
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xf0]
	cmp r0, #0
	bne _02311594
	mov r0, sl
	mov r1, sl
	mov r2, #0
	bl ov29_02306A00
_02311594:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xf1]
	cmp r0, #0
	beq _023115DC
	add r0, r7, #0xf2
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xf2]
	cmp r0, #0
	bne _023115DC
	mov r0, sl
	mov r1, sl
	bl ov29_02306B28
_023115DC:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xf3]
	cmp r0, #0
	beq _02311624
	add r0, r7, #0xf4
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xf4]
	cmp r0, #0
	bne _02311624
	mov r0, sl
	mov r1, sl
	bl ov29_02306BF8
_02311624:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xf5]
	cmp r0, #0
	beq _0231166C
	add r0, r7, #0xf6
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xf6]
	cmp r0, #0
	bne _0231166C
	mov r0, sl
	mov r1, sl
	bl ov29_02306C64
_0231166C:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xf7]
	cmp r0, #0
	beq _023116B4
	add r0, r7, #0xf8
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0xf8]
	cmp r0, #0
	bne _023116B4
	mov r0, sl
	mov r1, sl
	bl ov29_02306CD0
_023116B4:
	mov r0, sl
	bl EntityIsValid__02311010
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl IsFloorOver
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0x105]
	cmp r0, #0
	beq _0231174C
	add r0, r7, #5
	add r0, r0, #0x100
	bl TickStatusTurnCounter
	ldrb r0, [r7, #0x105]
	cmp r0, #0
	bne _0231174C
	ldrb r0, [r7, #0x104]
	cmp r0, #2
	bne _02311720
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _02311818 ; =0x00000CC6
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _02311744
_02311720:
	cmp r0, #1
	bne _02311744
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _0231181C ; =0x00000CC7
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
_02311744:
	mov r0, #0
	strb r0, [r7, #0x104]
_0231174C:
	mov r6, #0
	add r0, r7, #0x19
	mov sb, r6
	add r5, r0, #0x100
	add r4, r7, #0x114
	mov fp, #1
_02311764:
	add r8, r7, sb
	ldrb r0, [r8, #0x119]
	cmp r0, #0
	beq _02311788
	add r0, r5, sb
	bl TickStatusTurnCounter
	ldrb r0, [r8, #0x119]
	cmp r0, #0
	moveq r6, fp
_02311788:
	ldrb r0, [r8, #0x114]
	cmp r0, #0
	beq _023117A8
	add r0, r4, sb
	bl TickStatusTurnCounter
	ldrb r0, [r8, #0x114]
	cmp r0, #0
	moveq r6, #1
_023117A8:
	add sb, sb, #1
	cmp sb, #5
	blt _02311764
	cmp r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sl, #0xb4]
	mov r0, sl
	ldr r5, [r1, #0x110]
	bl CalcSpeedStageWrapper
	mov r4, r0
	cmp r5, r4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r0, _02311820 ; =0x02353318
	mov r1, r4, lsl #1
	ldrh r1, [r0, r1]
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02311800: .word 0x022C46F8
_02311804: .word 0x022C46D0
_02311808: .word 0x022C4578
_0231180C: .word 0x022C4630
_02311810: .word 0x022C4674
_02311814: .word 0x000003E7
_02311818: .word 0x00000CC6
_0231181C: .word 0x00000CC7
_02311820: .word 0x02353318
	arm_func_end TickStatusAndHealthRegen

	arm_func_start InflictSleepStatusSingle
InflictSleepStatusSingle: ; 0x02311824
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r4, #0
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, [r7, #0xb4]
	ldrb r0, [r5, #0xbd]
	cmp r0, #3
	beq _023118A0
	cmp r0, #1
	beq _02311898
	mov r0, #1
	strb r0, [r5, #0xbd]
	cmp r6, #0x7f
	beq _02311890
	mov r0, r7
	mov r1, #0x2f
	bl AbilityIsActive2
	cmp r0, #0
	beq _02311890
	add r0, r6, r6, lsr #31
	mov r6, r0, asr #1
	cmp r6, #1
	movlt r6, #1
_02311890:
	strb r6, [r5, #0xbe]
	b _023118A4
_02311898:
	mov r4, #1
	b _023118A4
_023118A0:
	mov r4, #2
_023118A4:
	mov r0, r7
	bl UpdateStatusIconFlags
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end InflictSleepStatusSingle

	arm_func_start EntityIsValid__023118B4
EntityIsValid__023118B4: ; 0x023118B4
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__023118B4

	arm_func_start TryInflictSleepStatus
TryInflictSleepStatus: ; 0x023118D8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r4, r3
	mov r2, #1
	mov r3, r2
	mov r7, r0
	mov r6, r1
	str r4, [sp]
	bl ov29_023119E4
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xb4]
	ldrb r0, [r0, #0xbd]
	cmp r0, #2
	bne _02311930
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _023119D0 ; =0x00000D09
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02311930:
	cmp r0, #5
	bne _02311954
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _023119D4 ; =0x00000D0A
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02311954:
	mov r0, r6
	bl ov29_022E3E74
	mov r0, r6
	mov r1, r5
	bl InflictSleepStatusSingle
	mov r4, r0
	mov r0, r6
	mov r1, #8
	bl ov29_02304A48
	cmp r4, #1
	bne _02311994
	ldr r2, _023119D8 ; =0x00000D06
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02311994:
	cmp r4, #2
	bne _023119B0
	ldr r2, _023119DC ; =0x00000D07
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_023119B0:
	ldr r2, _023119E0 ; =0x00000D04
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r7
	mov r1, r6
	bl TryActivateQuickFeet
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_023119D0: .word 0x00000D09
_023119D4: .word 0x00000D0A
_023119D8: .word 0x00000D06
_023119DC: .word 0x00000D07
_023119E0: .word 0x00000D04
	arm_func_end TryInflictSleepStatus

	arm_func_start ov29_023119E4
ov29_023119E4: ; 0x023119E4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	ldr r4, [sp, #0x20]
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, #1
	beq _02311B78
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r5, #0
	beq _02311A48
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl ov29_02301940
	cmp r0, #0
	movne r0, #1
	bne _02311B78
_02311A48:
	cmp r6, #0
	beq _02311A6C
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl ov29_02302430
	cmp r0, #0
	movne r0, #1
	bne _02311B78
_02311A6C:
	mov r0, r7
	mov r1, #0x11
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _02311AA0
	cmp r4, #0
	beq _02311A98
	ldr r2, _02311B80 ; =0x00000DA4
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02311A98:
	mov r0, #1
	b _02311B78
_02311AA0:
	mov r0, r8
	mov r1, r7
	mov r2, #0x36
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _02311ADC
	cmp r4, #0
	beq _02311AD4
	ldr r2, _02311B84 ; =0x00000DA5
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02311AD4:
	mov r0, #1
	b _02311B78
_02311ADC:
	mov r0, r8
	mov r1, r7
	mov r2, #0x49
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _02311B18
	cmp r4, #0
	beq _02311B10
	ldr r2, _02311B88 ; =0x00000DA6
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02311B10:
	mov r0, #1
	b _02311B78
_02311B18:
	mov r0, r7
	mov r1, #0x1c
	bl ItemIsActive__02311BF8
	cmp r0, #0
	beq _02311B4C
	cmp r4, #0
	beq _02311B44
	ldr r2, _02311B8C ; =0x00000DB1
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02311B44:
	mov r0, #1
	b _02311B78
_02311B4C:
	ldr r3, _02311B90 ; =0x00000DC2
	mov ip, #0xa
	mov r0, r8
	mov r1, r7
	mov r2, r4
	str ip, [sp]
	bl ov29_02314D40
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_02311B78:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02311B80: .word 0x00000DA4
_02311B84: .word 0x00000DA5
_02311B88: .word 0x00000DA6
_02311B8C: .word 0x00000DB1
_02311B90: .word 0x00000DC2
	arm_func_end ov29_023119E4

	arm_func_start DefenderAbilityIsActive__02311B94
DefenderAbilityIsActive__02311B94: ; 0x02311B94
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	cmp r0, r5
	beq _02311BE8
	cmp r0, #0
	moveq r1, #0
	beq _02311BC8
	ldr r1, [r0]
	cmp r1, #1
	moveq r1, #1
	movne r1, #0
	and r1, r1, #0xff
_02311BC8:
	cmp r1, #0
	cmpne r3, #0
	beq _02311BE8
	mov r1, #0x53
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
_02311BE8:
	mov r0, r5
	mov r1, r4
	bl AbilityIsActive2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DefenderAbilityIsActive__02311B94

	arm_func_start ItemIsActive__02311BF8
ItemIsActive__02311BF8: ; 0x02311BF8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ItemIsActive__02311BF8

	arm_func_start ov29_02311C28
ov29_02311C28: ; 0x02311C28
	stmdb sp!, {r3, lr}
	ldrb ip, [sp, #8]
	str ip, [sp]
	bl ov29_023119E4
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02311C28

	arm_func_start TryInflictNightmareStatus
TryInflictNightmareStatus: ; 0x02311C4C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r2
	mov r2, #1
	mov r3, r2
	mov r7, r0
	mov r6, r1
	str r2, [sp]
	mov r4, #0
	bl ov29_023119E4
	cmp r0, #0
	bne _02311D4C
	ldr r5, [r6, #0xb4]
	ldrb r0, [r5, #0xbd]
	cmp r0, #2
	beq _02311D34
	mov r0, r6
	bl ov29_022E4B8C
	ldrb r0, [r5, #0xbd]
	cmp r0, #3
	beq _02311CE0
	mov r0, r7
	mov r1, r6
	mov r2, #0x2f
	mov r3, #1
	strb r8, [r5, #0xbe]
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _02311CE4
	ldrb r0, [r5, #0xbe]
	mov r1, r0, asr #1
	and r0, r1, #0xff
	cmp r0, #1
	strb r1, [r5, #0xbe]
	movlo r0, #1
	strlob r0, [r5, #0xbe]
	b _02311CE4
_02311CE0:
	mov r4, #1
_02311CE4:
	mov r2, #3
	mov r0, r6
	mov r1, #8
	strb r2, [r5, #0xbd]
	bl ov29_02304A48
	cmp r4, #0
	beq _02311D14
	ldr r2, _02311D54 ; =0x00000D0D
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02311D44
_02311D14:
	ldr r2, _02311D58 ; =0x00000D0C
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r7
	mov r1, r6
	bl TryActivateQuickFeet
	b _02311D44
_02311D34:
	ldr r2, _02311D5C ; =0x00000D0E
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02311D44:
	mov r0, r6
	bl UpdateStatusIconFlags
_02311D4C:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02311D54: .word 0x00000D0D
_02311D58: .word 0x00000D0C
_02311D5C: .word 0x00000D0E
	arm_func_end TryInflictNightmareStatus

	arm_func_start TryInflictNappingStatus
TryInflictNappingStatus: ; 0x02311D60
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r6, r2
	mov r5, #1
	mov r2, r4
	mov r3, r4
	mov r8, r0
	mov r7, r1
	str r5, [sp]
	bl ov29_023119E4
	cmp r0, #0
	bne _02311E5C
	ldr r5, [r7, #0xb4]
	ldrb r0, [r5, #0xbd]
	cmp r0, #2
	beq _02311E44
	mov r0, r7
	bl ov29_022E4BA0
	ldrb r0, [r5, #0xbd]
	cmp r0, #0
	cmpne r0, #4
	bne _02311DFC
	mov r0, r8
	mov r1, r7
	mov r2, #0x2f
	mov r3, #1
	strb r6, [r5, #0xbe]
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _02311E00
	ldrb r0, [r5, #0xbe]
	mov r1, r0, asr #1
	and r0, r1, #0xff
	cmp r0, #1
	strb r1, [r5, #0xbe]
	movlo r0, #1
	strlob r0, [r5, #0xbe]
	b _02311E00
_02311DFC:
	mov r4, #1
_02311E00:
	mov r2, #5
	mov r0, r7
	mov r1, #8
	strb r2, [r5, #0xbd]
	bl ov29_02304A48
	cmp r4, #0
	beq _02311E30
	ldr r2, _02311E64 ; =0x00000D08
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02311E54
_02311E30:
	ldr r2, _02311E68 ; =0x00000D05
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02311E54
_02311E44:
	ldr r2, _02311E6C ; =0x00000D0B
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02311E54:
	mov r0, r7
	bl UpdateStatusIconFlags
_02311E5C:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02311E64: .word 0x00000D08
_02311E68: .word 0x00000D05
_02311E6C: .word 0x00000D0B
	arm_func_end TryInflictNappingStatus

	arm_func_start TryInflictYawningStatus
TryInflictYawningStatus: ; 0x02311E70
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	mov r2, #1
	mov r3, r2
	mov r6, r0
	mov r5, r1
	str r2, [sp]
	bl ov29_023119E4
	cmp r0, #0
	bne _02311F6C
	ldr r1, [r5, #0xb4]
	ldrb r0, [r1, #0xbd]
	cmp r0, #0
	bne _02311EEC
	mov r0, #4
	strb r0, [r1, #0xbd]
	mov r0, r5
	strb r4, [r1, #0xbe]
	bl ov29_022E53EC
	mov r0, r5
	mov r1, #8
	bl ov29_02304A48
	ldr r2, _02311F74 ; =0x00000D0F
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r6
	mov r1, r5
	bl TryActivateQuickFeet
	b _02311F64
_02311EEC:
	cmp r0, #1
	cmpne r0, #3
	cmpne r0, #5
	bne _02311F10
	ldr r2, _02311F78 ; =0x00000D12
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02311F64
_02311F10:
	cmp r0, #2
	bne _02311F2C
	mov r0, r6
	mov r1, r5
	mov r2, #0xd10
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02311F64
_02311F2C:
	cmp r0, #4
	bne _02311F48
	ldr r2, _02311F7C ; =0x00000D11
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02311F64
_02311F48:
	ldr r2, _02311F74 ; =0x00000D0F
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r6
	mov r1, r5
	bl TryActivateQuickFeet
_02311F64:
	mov r0, r5
	bl UpdateStatusIconFlags
_02311F6C:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02311F74: .word 0x00000D0F
_02311F78: .word 0x00000D12
_02311F7C: .word 0x00000D11
	arm_func_end TryInflictYawningStatus

	arm_func_start TryInflictSleeplessStatus
TryInflictSleeplessStatus: ; 0x02311F80
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r4, #0
	bl EntityIsValid__023118B4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, [r6, #0xb4]
	mov r1, r6
	ldrb r0, [r5, #0xbd]
	cmp r0, #1
	cmpne r0, #5
	cmpne r0, #3
	mov r0, #0
	mov r2, r0
	moveq r4, #1
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r5, #0xbd]
	cmp r0, #2
	beq _02312040
	ldr r1, _0231205C ; =0x022C4728
	mov r3, #2
	mov r0, r6
	mov r2, #0
	strb r3, [r5, #0xbd]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r5, #0xbe]
	mov r1, #0xff
	strb r1, [r5, #0x178]
	mov r0, r6
	strb r1, [r5, #0x177]
	bl ov29_022E4BB4
	mov r0, r6
	mov r1, #8
	bl ov29_02304A48
	cmp r4, #0
	beq _0231202C
	ldr r2, _02312060 ; =0x00000D13
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_0231202C:
	ldr r2, _02312064 ; =0x00000D15
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02312050
_02312040:
	ldr r2, _02312068 ; =0x00000D14
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02312050:
	mov r0, r6
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0231205C: .word 0x022C4728
_02312060: .word 0x00000D13
_02312064: .word 0x00000D15
_02312068: .word 0x00000D14
	arm_func_end TryInflictSleeplessStatus

	arm_func_start TryInflictPausedStatus
TryInflictPausedStatus: ; 0x0231206C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r4, r2
	mov r5, r3
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	ldr r4, [r6, #0xb4]
	beq _023120BC
	ldrb r2, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_023120BC:
	ldrb r2, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov29_0234B034
	mov r1, #0
	mov r2, r4
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	ldrb r0, [r4, #0xd0]
	cmp r0, #3
	beq _02312160
	mov r1, #3
	mov r0, r6
	strb r1, [r4, #0xd0]
	add r1, r5, #1
	strb r1, [r4, #0xd1]
	bl ov29_022E4428
	cmp r5, #1
	bne _02312140
	ldr r2, _0231219C ; =0x00000D16
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02312150
_02312140:
	ldr r2, _023121A0 ; =0x00000D18
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02312150:
	mov r0, r7
	mov r1, r6
	bl TryActivateQuickFeet
	b _0231218C
_02312160:
	cmp r5, #1
	bne _0231217C
	ldr r2, _023121A4 ; =0x00000D17
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _0231218C
_0231217C:
	ldr r2, _023121A8 ; =0x00000D19
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_0231218C:
	mov r0, r6
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0231219C: .word 0x00000D16
_023121A0: .word 0x00000D18
_023121A4: .word 0x00000D17
_023121A8: .word 0x00000D19
	arm_func_end TryInflictPausedStatus

	arm_func_start TryInflictInfatuatedStatus
TryInflictInfatuatedStatus: ; 0x023121AC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r8, r2
	mov r7, r3
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, #0
	beq _0231231C
	mov r0, r5
	mov r1, r4
	mov r2, r8
	ldr r6, [r4, #0xb4]
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	bne _0231231C
	mov r0, r5
	mov r1, r4
	mov r2, r8
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	bne _0231231C
	mov r0, r5
	mov r1, r4
	mov r2, #0x29
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _02312260
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r8, #0
	beq _02312258
	ldr r2, _02312324 ; =0x00000DA3
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02312258:
	mov r0, #0
	b _0231231C
_02312260:
	ldr r3, _02312328 ; =0x00000DBB
	mov ip, #3
	mov r0, r5
	mov r1, r4
	mov r2, r8
	str ip, [sp]
	bl ov29_02314D40
	cmp r0, #0
	movne r0, #0
	bne _0231231C
	cmp r7, #0
	movne r0, #1
	bne _0231231C
	bl ov29_0234B034
	mov r1, #0
	mov r2, r6
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	ldrb r0, [r6, #0xd0]
	cmp r0, #7
	beq _02312300
	ldr r1, _0231232C ; =0x022C4804
	mov r3, #7
	mov r0, r4
	mov r2, #1
	strb r3, [r6, #0xd0]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r4
	strb r1, [r6, #0xd1]
	bl ov29_022E4C00
	ldr r2, _02312330 ; =0x00000D1A
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r5
	mov r1, r4
	bl TryActivateQuickFeet
	b _02312310
_02312300:
	ldr r2, _02312334 ; =0x00000D1B
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02312310:
	mov r0, r4
	bl UpdateStatusIconFlags
	mov r0, #1
_0231231C:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02312324: .word 0x00000DA3
_02312328: .word 0x00000DBB
_0231232C: .word 0x022C4804
_02312330: .word 0x00000D1A
_02312334: .word 0x00000D1B
	arm_func_end TryInflictInfatuatedStatus

	arm_func_start TryInflictBurnStatus
TryInflictBurnStatus: ; 0x02312338
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov r4, r2
	mov r8, r3
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r7, [sb, #0xb4]
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r0, sl
	mov r1, sb
	mov r2, #0x42
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _023123F0
	cmp r8, #0
	beq _023123E8
	ldr r2, _023125F0 ; =0x00000DAB
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_023123E8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_023123F0:
	mov r0, sb
	mov r1, #2
	bl MonsterIsType
	cmp r0, #0
	beq _02312424
	cmp r8, #0
	beq _0231241C
	ldr r2, _023125F4 ; =0x00000DAC
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_0231241C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02312424:
	mov r0, sb
	bl GetTileAtEntity
	ldrh r0, [r0]
	and r0, r0, #3
	cmp r0, #2
	bne _0231247C
	ldr r0, _023125F8 ; =0x02353538
	ldr r1, _023125FC ; =0x020A1AE8
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	ldrb r0, [r1, r0]
	cmp r0, #1
	beq _0231247C
	cmp r8, #0
	beq _02312474
	ldr r2, _02312600 ; =0x00000DB9
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02312474:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0231247C:
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xbf]
	mov r5, #1
	cmp r0, #1
	beq _023124F4
	ldr r1, _02312604 ; =0x022C4874
	mov r0, sb
	mov r2, r5
	strb r5, [r7, #0xbf]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r7, #0xc0]
	mov r5, #0
	strb r5, [r7, #0xc1]
	strb r5, [r7, #0xc2]
	cmp r4, #0
	beq _023124D4
	mov r0, sb
	bl ov29_022E4294
_023124D4:
	ldr r2, _02312608 ; =0x00000D1C
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, sl
	mov r1, sb
	bl TryActivateQuickFeet
	b _02312504
_023124F4:
	ldr r2, _0231260C ; =0x00000D1D
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02312504:
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, sb
	mov r1, #0x19
	bl AbilityIsActive2
	cmp r0, #0
	beq _023125E8
	cmp r5, #0
	bne _023125E8
	mov r5, #0
	ldr fp, _02312610 ; =0x0235171C
	mov r4, r5
_02312534:
	mov r1, r4, lsl #2
	add r0, fp, r4, lsl #2
	ldrsh r3, [fp, r1]
	ldrsh r1, [r0, #2]
	ldrsh r0, [sb, #4]
	ldrsh r2, [sb, #6]
	add r0, r0, r3
	add r1, r2, r1
	bl GetTile
	ldr r6, [r0, #0xc]
	mov r0, r6
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _023125DC
	ldr r0, [r6]
	cmp r0, #1
	bne _023125DC
	cmp r5, #0
	bne _023125AC
	mov r5, #1
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	ldr r2, _02312614 ; =0x00000DC5
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_023125AC:
	mov r0, sb
	mov r1, r6
	bl ov29_023018AC
	cmp r0, #1
	bne _023125DC
	mov r2, #0
	str r2, [sp]
	mov r0, sl
	mov r1, r6
	mov r2, #1
	mov r3, r8
	bl TryInflictBurnStatus
_023125DC:
	add r4, r4, #1
	cmp r4, #8
	blt _02312534
_023125E8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_023125F0: .word 0x00000DAB
_023125F4: .word 0x00000DAC
_023125F8: .word 0x02353538
_023125FC: .word 0x020A1AE8
_02312600: .word 0x00000DB9
_02312604: .word 0x022C4874
_02312608: .word 0x00000D1C
_0231260C: .word 0x00000D1D
_02312610: .word 0x0235171C
_02312614: .word 0x00000DC5
	arm_func_end TryInflictBurnStatus

	arm_func_start TryInflictBurnStatusWholeTeam
TryInflictBurnStatusWholeTeam: ; 0x02312618
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	ldr r4, _02312660 ; =0x02353538
	mov r6, r7
	mov r5, #1
_0231262C:
	ldr r0, [r4]
	mov r2, r5
	add r0, r0, r7, lsl #2
	str r6, [sp]
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	mov r3, r5
	mov r1, r0
	bl TryInflictBurnStatus
	add r7, r7, #1
	cmp r7, #4
	blt _0231262C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02312660: .word 0x02353538
	arm_func_end TryInflictBurnStatusWholeTeam

	arm_func_start TryInflictPoisonedStatus
TryInflictPoisonedStatus: ; 0x02312664
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov r8, r2
	mov r4, r3
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r7, [sb, #0xb4]
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r0, sb
	mov r1, #0x1b
	bl ItemIsActive__02311BF8
	cmp r0, #0
	beq _02312714
	cmp r8, #0
	beq _0231270C
	mov r0, sl
	mov r1, sb
	mov r2, #0xdb0
	bl LogMessageByIdWithPopupCheckUserTarget
_0231270C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02312714:
	mov r0, sl
	mov r1, sb
	mov r2, #0x45
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _02312750
	cmp r8, #0
	beq _02312748
	ldr r2, _02312924 ; =0x00000DAD
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02312748:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02312750:
	mov r0, sb
	mov r1, #8
	bl MonsterIsType
	cmp r0, #0
	bne _02312778
	mov r0, sb
	mov r1, #0x11
	bl MonsterIsType
	cmp r0, #0
	beq _02312798
_02312778:
	cmp r8, #0
	beq _02312790
	ldr r2, _02312928 ; =0x00000DAE
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02312790:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02312798:
	cmp r4, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xbf]
	mov r4, #1
	cmp r0, #3
	beq _02312830
	cmp r0, #2
	beq _0231281C
	ldr r1, _0231292C ; =0x022C4878
	mov r3, #2
	mov r0, sb
	mov r2, r4
	strb r3, [r7, #0xbf]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r7, #0xc0]
	mov r4, #0
	strb r4, [r7, #0xc1]
	mov r0, sb
	strb r4, [r7, #0xc2]
	bl ov29_022E4388
	ldr r2, _02312930 ; =0x00000D1E
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, sb
	mov r1, #8
	bl ov29_02304A84
	mov r0, sl
	mov r1, sb
	bl TryActivateQuickFeet
	b _02312840
_0231281C:
	mov r0, sl
	mov r1, sb
	mov r2, #0xd20
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02312840
_02312830:
	mov r0, sl
	mov r1, sb
	add r2, r4, #0xd20
	bl LogMessageByIdWithPopupCheckUserTarget
_02312840:
	mov r0, sb
	mov r1, #0x19
	bl AbilityIsActive2
	cmp r0, #0
	beq _02312914
	cmp r4, #0
	bne _02312914
	mov r5, #0
	ldr fp, _02312934 ; =0x0235171C
	mov r4, r5
_02312868:
	mov r1, r4, lsl #2
	add r0, fp, r4, lsl #2
	ldrsh r6, [sb, #4]
	ldrsh r3, [fp, r1]
	ldrsh r1, [r0, #2]
	ldrsh r2, [sb, #6]
	add r0, r6, r3
	add r1, r2, r1
	bl GetTile
	ldr r6, [r0, #0xc]
	mov r0, r6
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _02312908
	ldr r0, [r6]
	cmp r0, #1
	bne _02312908
	cmp r5, #0
	bne _023128E0
	mov r5, #1
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	ldr r2, _02312938 ; =0x00000DC5
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_023128E0:
	mov r0, sb
	mov r1, r6
	bl ov29_023018AC
	cmp r0, #1
	bne _02312908
	mov r0, sl
	mov r1, r6
	mov r2, r8
	mov r3, #0
	bl TryInflictPoisonedStatus
_02312908:
	add r4, r4, #1
	cmp r4, #8
	blt _02312868
_02312914:
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02312924: .word 0x00000DAD
_02312928: .word 0x00000DAE
_0231292C: .word 0x022C4878
_02312930: .word 0x00000D1E
_02312934: .word 0x0235171C
_02312938: .word 0x00000DC5
	arm_func_end TryInflictPoisonedStatus

	arm_func_start TryInflictBadlyPoisonedStatus
TryInflictBadlyPoisonedStatus: ; 0x0231293C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov r8, r2
	mov r4, r3
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r7, [sb, #0xb4]
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r0, sb
	mov r1, #0x1b
	bl ItemIsActive__02311BF8
	cmp r0, #0
	beq _023129EC
	cmp r8, #0
	beq _023129E4
	mov r0, sl
	mov r1, sb
	mov r2, #0xdb0
	bl LogMessageByIdWithPopupCheckUserTarget
_023129E4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_023129EC:
	mov r0, sl
	mov r1, sb
	mov r2, #0x45
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _02312A28
	cmp r8, #0
	beq _02312A20
	ldr r2, _02312BE0 ; =0x00000DAD
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02312A20:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02312A28:
	mov r0, sb
	mov r1, #8
	bl MonsterIsType
	cmp r0, #0
	bne _02312A50
	mov r0, sb
	mov r1, #0x11
	bl MonsterIsType
	cmp r0, #0
	beq _02312A70
_02312A50:
	cmp r8, #0
	beq _02312A68
	ldr r2, _02312BE4 ; =0x00000DAE
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02312A68:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02312A70:
	cmp r4, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r7, #0xbf]
	mov r4, #1
	cmp r0, #3
	beq _02312AEC
	ldr r1, _02312BE8 ; =0x022C4880
	mov r3, #3
	mov r0, sb
	mov r2, r4
	strb r3, [r7, #0xbf]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r7, #0xc0]
	mov r4, #0
	strb r4, [r7, #0xc1]
	mov r0, sb
	strb r4, [r7, #0xc2]
	bl ov29_022E43D8
	ldr r2, _02312BEC ; =0x00000D1F
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, sb
	mov r1, #8
	bl ov29_02304A84
	mov r0, sl
	mov r1, sb
	bl TryActivateQuickFeet
	b _02312AFC
_02312AEC:
	mov r0, sl
	mov r1, sb
	add r2, r4, #0xd20
	bl LogMessageByIdWithPopupCheckUserTarget
_02312AFC:
	mov r0, sb
	mov r1, #0x19
	bl AbilityIsActive2
	cmp r0, #0
	beq _02312BD0
	cmp r4, #0
	bne _02312BD0
	mov r5, #0
	ldr fp, _02312BF0 ; =0x0235171C
	mov r4, r5
_02312B24:
	mov r1, r4, lsl #2
	add r0, fp, r4, lsl #2
	ldrsh r6, [sb, #4]
	ldrsh r3, [fp, r1]
	ldrsh r1, [r0, #2]
	ldrsh r2, [sb, #6]
	add r0, r6, r3
	add r1, r2, r1
	bl GetTile
	ldr r6, [r0, #0xc]
	mov r0, r6
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _02312BC4
	ldr r0, [r6]
	cmp r0, #1
	bne _02312BC4
	cmp r5, #0
	bne _02312B9C
	mov r5, #1
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	ldr r2, _02312BF4 ; =0x00000DC5
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02312B9C:
	mov r0, sb
	mov r1, r6
	bl ov29_023018AC
	cmp r0, #1
	bne _02312BC4
	mov r0, sl
	mov r1, r6
	mov r2, r8
	mov r3, #0
	bl TryInflictBadlyPoisonedStatus
_02312BC4:
	add r4, r4, #1
	cmp r4, #8
	blt _02312B24
_02312BD0:
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02312BE0: .word 0x00000DAD
_02312BE4: .word 0x00000DAE
_02312BE8: .word 0x022C4880
_02312BEC: .word 0x00000D1F
_02312BF0: .word 0x0235171C
_02312BF4: .word 0x00000DC5
	arm_func_end TryInflictBadlyPoisonedStatus

	arm_func_start TryInflictFrozenStatus
TryInflictFrozenStatus: ; 0x02312BF8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r5, r2
	bl EntityIsValid__023118B4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r4, [r6, #0xb4]
	ldrb r0, [r4, #0xc4]
	cmp r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov29_02301940
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov29_02302430
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov ip, #4
	mov r0, r7
	mov r1, r6
	mov r2, r5
	rsb r3, ip, #0xdc0
	str ip, [sp]
	bl ov29_02314D40
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, #0x41
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _02312CC4
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _02312E00 ; =0x00000DA8
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02312CC4:
	mov r0, r6
	mov r1, #6
	bl MonsterIsType
	cmp r0, #0
	beq _02312CF4
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _02312E04 ; =0x00000DA9
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02312CF4:
	mov r0, r6
	bl GetTileAtEntity
	ldrh r0, [r0]
	and r0, r0, #3
	cmp r0, #2
	bne _02312D48
	ldr r0, _02312E08 ; =0x02353538
	ldr r1, _02312E0C ; =0x020A1AE8
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02312D48
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _02312E10 ; =0x00000DAA
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02312D48:
	mov ip, #4
	mov r0, r7
	mov r1, r6
	mov r2, r5
	rsb r3, ip, #0xdc0
	str ip, [sp]
	bl ov29_02314D40
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02312D88
	ldr r0, [r4, #0xb4]
	bl FreeOtherWrappedMonsters
_02312D88:
	mov r0, r6
	bl ov29_022E4C4C
	mov r2, #1
	ldr r1, _02312E14 ; =0x022C4870
	mov r0, r6
	strb r2, [r4, #0xc4]
	bl CalcStatusDuration
	add r3, r0, #1
	strb r3, [r4, #0xcc]
	mov r3, #0
	ldr r2, _02312E18 ; =0x00000D22
	mov r0, r7
	mov r1, r6
	strb r3, [r4, #0xcd]
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r6
	bl UpdateStatusIconFlags
	mov r0, r7
	mov r1, r6
	bl TryActivateQuickFeet
	mov r0, r6
	mov r1, #0
	bl ov29_0231B4EC
	cmp r0, #3
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _02312E1C ; =0x00000D23
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02312E00: .word 0x00000DA8
_02312E04: .word 0x00000DA9
_02312E08: .word 0x02353538
_02312E0C: .word 0x020A1AE8
_02312E10: .word 0x00000DAA
_02312E14: .word 0x022C4870
_02312E18: .word 0x00000D22
_02312E1C: .word 0x00000D23
	arm_func_end TryInflictFrozenStatus

	arm_func_start TryInflictConstrictionStatus
TryInflictConstrictionStatus: ; 0x02312E20
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r5, r2
	mov r4, r3
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, [r6, #0xb4]
	ldrb r1, [r4, #0xc4]
	add r0, r1, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02312EA4
	ldr r0, [r4, #0xb4]
	bl FreeOtherWrappedMonsters
	b _02312ECC
_02312EA4:
	cmp r1, #5
	bne _02312ECC
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02312F68 ; =0x00000C9B
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02312ECC:
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xc4]
	cmp r0, #7
	beq _02312F48
	ldr r1, _02312F6C ; =0x022C48A0
	mov r3, #7
	mov r0, r6
	mov r2, #1
	strb r3, [r4, #0xc4]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r4, #0xcc]
	mov r0, #0
	strb r0, [r4, #0xcd]
	mov r0, r6
	str r5, [r4, #0xc8]
	bl ov29_022E42E4
	ldr r2, _02312F70 ; =0x00000D24
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r6
	mov r1, #8
	bl ov29_02304A84
	mov r0, r7
	mov r1, r6
	bl TryActivateQuickFeet
	b _02312F58
_02312F48:
	ldr r2, _02312F74 ; =0x00000D25
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02312F58:
	mov r0, r6
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02312F68: .word 0x00000C9B
_02312F6C: .word 0x022C48A0
_02312F70: .word 0x00000D24
_02312F74: .word 0x00000D25
	arm_func_end TryInflictConstrictionStatus

	arm_func_start TryInflictShadowHoldStatus
TryInflictShadowHoldStatus: ; 0x02312F78
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #0x2b
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _0231302C
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, #1
	mov r1, #0x2b
	bl ov29_0234B084
	cmp r4, #0
	bne _02313024
	ldr r2, _0231311C ; =0x00000D28
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02313024:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0231302C:
	cmp r4, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r4, [r5, #0xb4]
	ldrb r1, [r4, #0xc4]
	add r0, r1, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0231305C
	ldr r0, [r4, #0xb4]
	bl FreeOtherWrappedMonsters
	b _02313084
_0231305C:
	cmp r1, #5
	bne _02313084
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02313120 ; =0x00000C9B
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02313084:
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xc4]
	cmp r0, #2
	beq _023130FC
	ldr r1, _02313124 ; =0x022C4898
	mov r3, #2
	mov r0, r5
	mov r2, #1
	strb r3, [r4, #0xc4]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xcc]
	mov r1, #0
	strb r1, [r4, #0xcd]
	bl ov29_022E42E0
	ldr r2, _02313128 ; =0x00000D26
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r5
	mov r1, #8
	bl ov29_02304A84
	mov r0, r6
	mov r1, r5
	bl TryActivateQuickFeet
	b _0231310C
_023130FC:
	ldr r2, _0231312C ; =0x00000D27
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_0231310C:
	mov r0, r5
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0231311C: .word 0x00000D28
_02313120: .word 0x00000C9B
_02313124: .word 0x022C4898
_02313128: .word 0x00000D26
_0231312C: .word 0x00000D27
	arm_func_end TryInflictShadowHoldStatus

	arm_func_start TryInflictIngrainStatus
TryInflictIngrainStatus: ; 0x02313130
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__023118B4
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, [r5, #0xb4]
	ldrb r0, [r4, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0231316C
	ldr r0, [r4, #0xb4]
	bl FreeOtherWrappedMonsters
_0231316C:
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xc4]
	cmp r0, #5
	beq _023131CC
	ldr r1, _023131E8 ; =0x022C48B8
	mov r3, #5
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xc4]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xcc]
	mov r1, #0
	strb r1, [r4, #0xcd]
	bl ov29_022E4D24
	ldr r2, _023131EC ; =0x00000D29
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023131DC
_023131CC:
	ldr r2, _023131F0 ; =0x00000D2A
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023131DC:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_023131E8: .word 0x022C48B8
_023131EC: .word 0x00000D29
_023131F0: .word 0x00000D2A
	arm_func_end TryInflictIngrainStatus

	arm_func_start TryInflictWrappedStatus
TryInflictWrappedStatus: ; 0x023131F4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	bl EntityIsValid__023118B4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, [r7, #0xb4]
	ldr r5, [r6, #0xb4]
	ldrb r1, [r4, #0xc4]
	cmp r1, #3
	cmpne r1, #4
	ldrneb r0, [r5, #0xc4]
	cmpne r0, #3
	cmpne r0, #4
	beq _02313324
	mov r0, #3
	strb r0, [r4, #0xc4]
	mov r0, #0x7f
	strb r0, [r4, #0xcc]
	mov r2, #0
	ldr r1, _023133DC ; =0x022C48AC
	mov r0, r6
	strb r2, [r4, #0xcd]
	mov r3, #4
	mov r2, #1
	strb r3, [r5, #0xc4]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r5, #0xcc]
	mov r0, #0
	ldr r3, _023133E0 ; =0x02353538
	strb r0, [r5, #0xcd]
	ldr r1, [r3]
	mov r0, r7
	add r1, r1, #0x3000
	ldr r2, [r1, #0xe30]
	mov r1, r6
	str r2, [r4, #0xb4]
	ldr r2, [r3]
	add r2, r2, #0x3000
	ldr r2, [r2, #0xe30]
	str r2, [r5, #0xb4]
	ldr r2, [r3]
	add r2, r2, #0x3000
	ldr r3, [r2, #0xe30]
	add r3, r3, #1
	str r3, [r2, #0xe30]
	bl ov29_022E4290
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _023133E4 ; =0x00000D2B
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r6
	mov r1, #8
	bl ov29_02304A84
	mov r0, r7
	mov r1, r6
	bl TryActivateQuickFeet
	b _023133D0
_02313324:
	cmp r1, #3
	bne _0231334C
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _023133E8 ; =0x00000D2C
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_0231334C:
	ldrb r0, [r5, #0xc4]
	cmp r0, #3
	bne _02313378
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _023133E8 ; =0x00000D2C
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02313378:
	ldrb r0, [r4, #0xc4]
	cmp r0, #4
	bne _023133A4
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _023133EC ; =0x00000D2D
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_023133A4:
	ldrb r0, [r5, #0xc4]
	cmp r0, #4
	bne _023133D0
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _023133EC ; =0x00000D2D
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_023133D0:
	mov r0, r6
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_023133DC: .word 0x022C48AC
_023133E0: .word 0x02353538
_023133E4: .word 0x00000D2B
_023133E8: .word 0x00000D2C
_023133EC: .word 0x00000D2D
	arm_func_end TryInflictWrappedStatus

	arm_func_start FreeOtherWrappedMonsters
FreeOtherWrappedMonsters: ; 0x023133F0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, #0
	ldr r7, _02313468 ; =0x02353538
	mov r6, r0
	mov sb, r4
	mov r8, r4
_02313408:
	ldr r0, [r7]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb78]
	mov r0, r5
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _02313458
	ldr r1, [r5, #0xb4]
	ldr r0, [r1, #0xb4]
	cmp r0, r6
	bne _02313450
	ldrb r0, [r1, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	strlsb sb, [r1, #0xc4]
	str r8, [r1, #0xb4]
_02313450:
	mov r0, r5
	bl UpdateStatusIconFlags
_02313458:
	add r4, r4, #1
	cmp r4, #0x14
	blt _02313408
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02313468: .word 0x02353538
	arm_func_end FreeOtherWrappedMonsters

	arm_func_start TryInflictPetrifiedStatus
TryInflictPetrifiedStatus: ; 0x0231346C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__023118B4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r5
	bl ov29_022E41F0
	ldr r4, [r5, #0xb4]
	ldrb r0, [r4, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _023134E0
	ldr r0, [r4, #0xb4]
	bl FreeOtherWrappedMonsters
_023134E0:
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xc4]
	cmp r0, #6
	beq _02313560
	mov r0, #6
	strb r0, [r4, #0xc4]
	ldrb r0, [r4, #7]
	mov r2, #1
	cmp r0, #0
	beq _02313524
	ldr r1, _023135E8 ; =0x022C479C
	mov r0, r5
	bl CalcStatusDuration
	b _02313530
_02313524:
	ldr r1, _023135EC ; =0x022C47A0
	mov r0, r5
	bl CalcStatusDuration
_02313530:
	add r0, r0, #1
	strb r0, [r4, #0xcc]
	mov r3, #0
	ldr r2, _023135F0 ; =0x00000D32
	mov r0, r6
	mov r1, r5
	strb r3, [r4, #0xcd]
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r6
	mov r1, r5
	bl TryActivateQuickFeet
	b _02313570
_02313560:
	ldr r2, _023135F4 ; =0x00000D33
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02313570:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _023135DC
	mov r4, #0
	ldr r6, _023135F8 ; =0x02353538
	mov r8, #6
	mov r7, r4
_0231358C:
	ldr r0, [r6]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb28]
	mov r0, sb
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _023135D0
	ldr r1, [sb, #0xb4]
	ldrb r0, [r1, #0x7c]
	cmp r0, #1
	ldreq r0, [r1, #0x84]
	cmpeq r0, r5
	streqb r8, [r1, #0x7c]
	streq r7, [r1, #0x84]
	streqh r7, [r1, #0x80]
	streqb r7, [r1, #0x7e]
_023135D0:
	add r4, r4, #1
	cmp r4, #4
	blt _0231358C
_023135DC:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_023135E8: .word 0x022C479C
_023135EC: .word 0x022C47A0
_023135F0: .word 0x00000D32
_023135F4: .word 0x00000D33
_023135F8: .word 0x02353538
	arm_func_end TryInflictPetrifiedStatus

	arm_func_start LowerOffensiveStat
LowerOffensiveStat: ; 0x023135FC
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r5, r3
	mov r8, r0
	bl sub_02025888
	mov r6, r0
	bl sub_02025888
	mov r4, r0
	mov r1, r5, lsl #0x10
	mov r0, r7
	mov r5, r1, asr #0x10
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _023137E8
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02313660
	ldr r1, _023137F4 ; =0x00000DCB
	mov r0, r6
	bl sub_020258E4
	mov r1, r6
	mov r0, #1
	bl ov29_0234B0B4
	b _02313678
_02313660:
	ldr r1, _023137F8 ; =0x00000DCA
	mov r0, r6
	bl sub_020258E4
	mov r1, r6
	mov r0, #1
	bl ov29_0234B0B4
_02313678:
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	beq _02313720
	ldrb r2, [sp, #0x2c]
	mov r0, r8
	mov r1, r7
	bl ov29_02301B2C
	cmp r0, #0
	bne _023137E8
	mov r0, r7
	mov r1, #0x12
	bl ItemIsActive__02311BF8
	cmp r0, #0
	beq _023136D4
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _023137FC ; =0x00000DB2
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023137E8
_023136D4:
	mov r0, r8
	mov r1, r7
	mov r2, #9
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _02313720
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02313720
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02313800 ; =0x00000D9E
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023137E8
_02313720:
	mov r0, #0
	mov r1, r7
	mov r2, r0
	ldr r6, [r7, #0xb4]
	bl SubstitutePlaceholderStringTags
	add r1, sp, #0x20
	ldr r1, [r1]
	mov r0, r7
	bl ov29_022E4D28
	mov r0, r7
	mov r1, #0x61
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, r5, lsl #0x11
	movne r5, r0, asr #0x10
	cmp r5, #1
	bne _02313780
	ldr r1, _02313804 ; =0x00000DCD
	mov r0, r4
	bl sub_020258E4
	mov r1, r4
	mov r0, #2
	bl ov29_0234B0B4
	b _02313798
_02313780:
	ldr r1, _02313808 ; =0x00000DCC
	mov r0, r4
	bl sub_020258E4
	mov r1, r4
	mov r0, #2
	bl ov29_0234B0B4
_02313798:
	ldr r1, [sp, #0x20]
	add r0, r6, r1, lsl #1
	ldrsh r0, [r0, #0x24]
	subs r4, r0, r5
	movmi r4, #0
	cmp r4, r0
	beq _023137D0
	ldr r2, _0231380C ; =0x00000D91
	add r3, r6, r1, lsl #1
	mov r0, r8
	mov r1, r7
	strh r4, [r3, #0x24]
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023137E0
_023137D0:
	ldr r2, _02313810 ; =0x00000DD9
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_023137E0:
	mov r0, r7
	bl UpdateStatusIconFlags
_023137E8:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_023137F4: .word 0x00000DCB
_023137F8: .word 0x00000DCA
_023137FC: .word 0x00000DB2
_02313800: .word 0x00000D9E
_02313804: .word 0x00000DCD
_02313808: .word 0x00000DCC
_0231380C: .word 0x00000D91
_02313810: .word 0x00000DD9
	arm_func_end LowerOffensiveStat

	arm_func_start LowerDefensiveStat
LowerDefensiveStat: ; 0x02313814
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r5, r3
	mov r8, r0
	bl sub_02025888
	mov r6, r0
	bl sub_02025888
	mov r4, r0
	mov r1, r5, lsl #0x10
	mov r0, r7
	mov r5, r1, asr #0x10
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _0231397C
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02313878
	ldr r1, _02313988 ; =0x00000DC9
	mov r0, r6
	bl sub_020258E4
	mov r1, r6
	mov r0, #1
	bl ov29_0234B0B4
	b _02313890
_02313878:
	ldr r1, _0231398C ; =0x00000DC8
	mov r0, r6
	bl sub_020258E4
	mov r1, r6
	mov r0, #1
	bl ov29_0234B0B4
_02313890:
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	beq _023138B4
	ldrb r2, [sp, #0x2c]
	mov r0, r8
	mov r1, r7
	bl ov29_02301B2C
	cmp r0, #0
	bne _0231397C
_023138B4:
	mov r0, #0
	mov r1, r7
	mov r2, r0
	ldr r6, [r7, #0xb4]
	bl SubstitutePlaceholderStringTags
	add r1, sp, #0x20
	ldr r1, [r1]
	mov r0, r7
	bl ov29_022E4DCC
	mov r0, r7
	mov r1, #0x61
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, r5, lsl #0x11
	movne r5, r0, asr #0x10
	cmp r5, #1
	bne _02313914
	ldr r1, _02313990 ; =0x00000DCD
	mov r0, r4
	bl sub_020258E4
	mov r1, r4
	mov r0, #2
	bl ov29_0234B0B4
	b _0231392C
_02313914:
	ldr r1, _02313994 ; =0x00000DCC
	mov r0, r4
	bl sub_020258E4
	mov r1, r4
	mov r0, #2
	bl ov29_0234B0B4
_0231392C:
	ldr r1, [sp, #0x20]
	add r0, r6, r1, lsl #1
	ldrsh r0, [r0, #0x28]
	subs r4, r0, r5
	movmi r4, #0
	cmp r4, r0
	beq _02313964
	add r3, r6, r1, lsl #1
	mov r0, r8
	mov r1, r7
	mov r2, #0xd90
	strh r4, [r3, #0x28]
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02313974
_02313964:
	ldr r2, _02313998 ; =0x00000DD7
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02313974:
	mov r0, r7
	bl UpdateStatusIconFlags
_0231397C:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_02313988: .word 0x00000DC9
_0231398C: .word 0x00000DC8
_02313990: .word 0x00000DCD
_02313994: .word 0x00000DCC
_02313998: .word 0x00000DD7
	arm_func_end LowerDefensiveStat

	arm_func_start BoostOffensiveStat
BoostOffensiveStat: ; 0x0231399C
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov r6, r3
	mov sb, r0
	bl sub_02025888
	mov r4, r0
	bl sub_02025888
	mov r5, r0
	mov r1, r6, lsl #0x10
	mov r0, r8
	mov r6, r1, asr #0x10
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _02313AE4
	mov r0, #0
	mov r1, r8
	mov r2, r0
	ldr r7, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	add r1, sp, #0x28
	ldr r1, [r1]
	mov r0, r8
	bl ov29_022E4E74
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02313A24
	ldr r1, _02313AF0 ; =0x00000DCB
	mov r0, r4
	bl sub_020258E4
	mov r1, r4
	mov r0, #1
	bl ov29_0234B0B4
	b _02313A3C
_02313A24:
	ldr r1, _02313AF4 ; =0x00000DCA
	mov r0, r4
	bl sub_020258E4
	mov r1, r4
	mov r0, #1
	bl ov29_0234B0B4
_02313A3C:
	mov r0, r8
	mov r1, #0x61
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, r6, lsl #0x11
	movne r6, r0, asr #0x10
	cmp r6, #1
	bne _02313A78
	ldr r1, _02313AF8 ; =0x00000DCD
	mov r0, r5
	bl sub_020258E4
	mov r1, r5
	mov r0, #2
	bl ov29_0234B0B4
	b _02313A90
_02313A78:
	ldr r1, _02313AFC ; =0x00000DCC
	mov r0, r5
	bl sub_020258E4
	mov r1, r5
	mov r0, #2
	bl ov29_0234B0B4
_02313A90:
	ldr r1, [sp, #0x28]
	add r0, r7, r1, lsl #1
	ldrsh r0, [r0, #0x24]
	add r4, r0, r6
	cmp r4, #0x14
	movge r4, #0x14
	cmp r4, r0
	beq _02313ACC
	ldr r2, _02313B00 ; =0x00000D8F
	add r3, r7, r1, lsl #1
	mov r0, sb
	mov r1, r8
	strh r4, [r3, #0x24]
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02313ADC
_02313ACC:
	ldr r2, _02313B04 ; =0x00000DD8
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
_02313ADC:
	mov r0, r8
	bl UpdateStatusIconFlags
_02313AE4:
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_02313AF0: .word 0x00000DCB
_02313AF4: .word 0x00000DCA
_02313AF8: .word 0x00000DCD
_02313AFC: .word 0x00000DCC
_02313B00: .word 0x00000D8F
_02313B04: .word 0x00000DD8
	arm_func_end BoostOffensiveStat

	arm_func_start BoostDefensiveStat
BoostDefensiveStat: ; 0x02313B08
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov r6, r3
	mov sb, r0
	bl sub_02025888
	mov r4, r0
	bl sub_02025888
	mov r5, r0
	mov r1, r6, lsl #0x10
	mov r0, r8
	mov r6, r1, asr #0x10
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _02313C50
	mov r0, #0
	mov r1, r8
	mov r2, r0
	ldr r7, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	add r1, sp, #0x28
	ldr r1, [r1]
	mov r0, r8
	bl ov29_022E4F1C
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02313B90
	ldr r1, _02313C5C ; =0x00000DC9
	mov r0, r4
	bl sub_020258E4
	mov r1, r4
	mov r0, #1
	bl ov29_0234B0B4
	b _02313BA8
_02313B90:
	ldr r1, _02313C60 ; =0x00000DC8
	mov r0, r4
	bl sub_020258E4
	mov r1, r4
	mov r0, #1
	bl ov29_0234B0B4
_02313BA8:
	mov r0, r8
	mov r1, #0x61
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, r6, lsl #0x11
	movne r6, r0, asr #0x10
	cmp r6, #1
	bne _02313BE4
	ldr r1, _02313C64 ; =0x00000DCD
	mov r0, r5
	bl sub_020258E4
	mov r1, r5
	mov r0, #2
	bl ov29_0234B0B4
	b _02313BFC
_02313BE4:
	ldr r1, _02313C68 ; =0x00000DCC
	mov r0, r5
	bl sub_020258E4
	mov r1, r5
	mov r0, #2
	bl ov29_0234B0B4
_02313BFC:
	ldr r1, [sp, #0x28]
	add r0, r7, r1, lsl #1
	ldrsh r0, [r0, #0x28]
	add r4, r0, r6
	cmp r4, #0x14
	movge r4, #0x14
	cmp r4, r0
	beq _02313C38
	ldr r2, _02313C6C ; =0x00000D8E
	add r3, r7, r1, lsl #1
	mov r0, sb
	mov r1, r8
	strh r4, [r3, #0x28]
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02313C48
_02313C38:
	ldr r2, _02313C70 ; =0x00000DD6
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
_02313C48:
	mov r0, r8
	bl UpdateStatusIconFlags
_02313C50:
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_02313C5C: .word 0x00000DC9
_02313C60: .word 0x00000DC8
_02313C64: .word 0x00000DCD
_02313C68: .word 0x00000DCC
_02313C6C: .word 0x00000D8E
_02313C70: .word 0x00000DD6
	arm_func_end BoostDefensiveStat

	arm_func_start ov29_02313C74
ov29_02313C74: ; 0x02313C74
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #0x6b
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #0x48
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xb4]
	ldrsh r0, [r0, #0x30]
	cmp r0, #2
	movge r0, #1
	movlt r0, #2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_02313C74

	arm_func_start ov29_02313CE4
ov29_02313CE4: ; 0x02313CE4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid__023118B4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrsh r0, [r4, #0x30]
	add r1, r0, #1
	cmp r1, #2
	movge r1, #2
	cmp r0, r1
	beq _02313D34
	mov r0, r5
	strh r1, [r4, #0x30]
	bl ov29_022E4338
_02313D34:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_02313CE4

	arm_func_start ApplyOffensiveStatMultiplier
ApplyOffensiveStatMultiplier: ; 0x02313D40
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov sb, r0
	mov r7, r3
	bl sub_02025888
	mov r4, r0
	mov r0, r8
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _02313F3C
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02313D94
	ldr r1, _02313F48 ; =0x00000DCB
	mov r0, r4
	bl sub_020258E4
	mov r1, r4
	mov r0, #1
	bl ov29_0234B0B4
	b _02313DAC
_02313D94:
	ldr r1, _02313F4C ; =0x00000DCA
	mov r0, r4
	bl sub_020258E4
	mov r1, r4
	mov r0, #1
	bl ov29_0234B0B4
_02313DAC:
	cmp r7, #0x100
	bge _02313DCC
	ldrb r2, [sp, #0x30]
	mov r0, sb
	mov r1, r8
	bl ov29_02301B2C
	cmp r0, #0
	bne _02313F3C
_02313DCC:
	mov r0, r8
	mov r1, #0x12
	bl ItemIsActive__02311BF8
	cmp r0, #0
	beq _02313E0C
	cmp r7, #0x100
	bge _02313E0C
	mov r0, #0
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02313F50 ; =0x00000DB2
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02313F3C
_02313E0C:
	mov r0, sb
	mov r1, r8
	mov r2, #9
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _02313E6C
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _02313E6C
	cmp r7, #0x100
	bge _02313E6C
	ldrb r0, [sp, #0x30]
	cmp r0, #0
	beq _02313F3C
	mov r0, #0
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02313F54 ; =0x00000D9E
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02313F3C
_02313E6C:
	mov r0, #0
	mov r1, r8
	mov r2, r0
	ldr r5, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	ldr r6, [sp, #0x28]
	cmp r7, #0x100
	add r0, r5, r6, lsl #2
	ldr r4, [r0, #0x34]
	add r1, sp, #0x28
	mov r0, r8
	bge _02313EA8
	ldr r1, [r1]
	bl ov29_022E5068
	b _02313EB0
_02313EA8:
	ldr r1, [r1]
	bl ov29_022E4FC0
_02313EB0:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0x34]
	mov r1, r7
	bl MultiplyByFixedPoint
	add r1, r5, r6, lsl #2
	str r0, [r1, #0x34]
	cmp r0, #2
	movlt r0, #2
	strlt r0, [r1, #0x34]
	add r2, r5, r6, lsl #2
	ldr r1, [r2, #0x34]
	ldr r0, _02313F58 ; =0x000063FD
	cmp r1, r0
	strgt r0, [r2, #0x34]
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0x34]
	cmp r4, r0
	ble _02313F0C
	ldr r2, _02313F5C ; =0x00000DD1
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02313F34
_02313F0C:
	bge _02313F24
	mov r0, sb
	mov r1, r8
	mov r2, #0xdd0
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02313F34
_02313F24:
	ldr r2, _02313F60 ; =0x00000DD3
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
_02313F34:
	mov r0, r8
	bl UpdateStatusIconFlags
_02313F3C:
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_02313F48: .word 0x00000DCB
_02313F4C: .word 0x00000DCA
_02313F50: .word 0x00000DB2
_02313F54: .word 0x00000D9E
_02313F58: .word 0x000063FD
_02313F5C: .word 0x00000DD1
_02313F60: .word 0x00000DD3
	arm_func_end ApplyOffensiveStatMultiplier

	arm_func_start ApplyDefensiveStatMultiplier
ApplyDefensiveStatMultiplier: ; 0x02313F64
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov sb, r0
	mov r7, r3
	bl sub_02025888
	mov r4, r0
	mov r0, r8
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _023140C0
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02313FB8
	ldr r1, _023140CC ; =0x00000DC9
	mov r0, r4
	bl sub_020258E4
	mov r1, r4
	mov r0, #1
	bl ov29_0234B0B4
	b _02313FD0
_02313FB8:
	ldr r1, _023140D0 ; =0x00000DC8
	mov r0, r4
	bl sub_020258E4
	mov r1, r4
	mov r0, #1
	bl ov29_0234B0B4
_02313FD0:
	cmp r7, #0x100
	bge _02313FF0
	ldrb r2, [sp, #0x30]
	mov r0, sb
	mov r1, r8
	bl ov29_02301B2C
	cmp r0, #0
	bne _023140C0
_02313FF0:
	mov r0, #0
	mov r1, r8
	mov r2, r0
	ldr r5, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	ldr r6, [sp, #0x28]
	cmp r7, #0x100
	add r0, r5, r6, lsl #2
	ldr r4, [r0, #0x3c]
	add r1, sp, #0x28
	mov r0, r8
	bge _0231402C
	ldr r1, [r1]
	bl ov29_022E51B0
	b _02314034
_0231402C:
	ldr r1, [r1]
	bl ov29_022E510C
_02314034:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0x3c]
	mov r1, r7
	bl MultiplyByFixedPoint
	add r1, r5, r6, lsl #2
	str r0, [r1, #0x3c]
	cmp r0, #2
	movlt r0, #2
	strlt r0, [r1, #0x3c]
	add r2, r5, r6, lsl #2
	ldr r1, [r2, #0x3c]
	ldr r0, _023140D4 ; =0x000063FD
	cmp r1, r0
	strgt r0, [r2, #0x3c]
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0x3c]
	cmp r4, r0
	ble _02314090
	ldr r2, _023140D8 ; =0x00000DCF
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023140B8
_02314090:
	bge _023140A8
	ldr r2, _023140DC ; =0x00000DCE
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023140B8
_023140A8:
	ldr r2, _023140E0 ; =0x00000DD2
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
_023140B8:
	mov r0, r8
	bl UpdateStatusIconFlags
_023140C0:
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_023140CC: .word 0x00000DC9
_023140D0: .word 0x00000DC8
_023140D4: .word 0x000063FD
_023140D8: .word 0x00000DCF
_023140DC: .word 0x00000DCE
_023140E0: .word 0x00000DD2
	arm_func_end ApplyDefensiveStatMultiplier

	arm_func_start BoostHitChanceStat
BoostHitChanceStat: ; 0x023140E4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r1
	mov r7, r0
	bl sub_02025888
	mov r8, r0
	mov r0, r6
	mov r4, #1
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _0231420C
	mov r0, #0
	mov r1, r6
	mov r2, r0
	ldr r5, [r6, #0xb4]
	bl SubstitutePlaceholderStringTags
	add r1, sp, #0x20
	ldr r1, [r1]
	mov r0, r6
	bl ov29_022E5258
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0231415C
	ldr r1, _02314218 ; =0x00000DC7
	mov r0, r8
	bl sub_020258E4
	mov r1, r8
	mov r0, r4
	bl ov29_0234B0B4
	b _02314174
_0231415C:
	ldr r1, _0231421C ; =0x00000DC6
	mov r0, r8
	bl sub_020258E4
	mov r1, r8
	mov r0, r4
	bl ov29_0234B0B4
_02314174:
	mov r0, r6
	mov r1, #0x61
	bl AbilityIsActive2
	ldr r1, [sp, #0x20]
	cmp r0, #0
	movne r0, r4, lsl #0x11
	add r2, r5, r1, lsl #1
	movne r4, r0, asr #0x10
	ldrsh r0, [r2, #0x2c]
	mov r3, r1, lsl #1
	cmp r0, #0x14
	bge _023141F4
	add r1, r5, #0x2c
	ldrsh r0, [r1, r3]
	add r0, r0, r4
	strh r0, [r1, r3]
	ldrsh r0, [r2, #0x2c]
	cmp r0, #0x14
	movgt r0, #0x14
	strgth r0, [r2, #0x2c]
	cmp r4, #2
	blt _023141E0
	ldr r2, _02314220 ; =0x00000D95
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02314204
_023141E0:
	ldr r2, _02314224 ; =0x00000D93
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02314204
_023141F4:
	ldr r2, _02314228 ; =0x00000DD5
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02314204:
	mov r0, r6
	bl UpdateStatusIconFlags
_0231420C:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_02314218: .word 0x00000DC7
_0231421C: .word 0x00000DC6
_02314220: .word 0x00000D95
_02314224: .word 0x00000D93
_02314228: .word 0x00000DD5
	arm_func_end BoostHitChanceStat

	arm_func_start LowerHitChanceStat
LowerHitChanceStat: ; 0x0231422C
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r1
	mov r7, r0
	mov r8, r3
	bl sub_02025888
	mov r5, r0
	mov r0, r6
	mov r4, #1
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _023143C4
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02314284
	ldr r1, _023143D0 ; =0x00000DC7
	mov r0, r5
	bl sub_020258E4
	mov r1, r5
	mov r0, r4
	bl ov29_0234B0B4
	b _0231429C
_02314284:
	ldr r1, _023143D4 ; =0x00000DC6
	mov r0, r5
	bl sub_020258E4
	mov r1, r5
	mov r0, r4
	bl ov29_0234B0B4
_0231429C:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl ov29_02301B2C
	cmp r0, #0
	bne _023143C4
	mov r0, r7
	mov r1, r6
	mov r2, #0x1e
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _02314308
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02314308
	cmp r8, #0
	beq _023143C4
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _023143D8 ; =0x00000D9F
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023143C4
_02314308:
	mov r0, r6
	mov r1, #0x61
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, r4, lsl #0x11
	movne r4, r0, asr #0x10
	mov r0, #0
	mov r1, r6
	mov r2, r0
	ldr r5, [r6, #0xb4]
	bl SubstitutePlaceholderStringTags
	add r1, sp, #0x20
	ldr r1, [r1]
	mov r0, r6
	bl ov29_022E52F8
	ldr r1, [sp, #0x20]
	add r2, r5, r1, lsl #1
	ldrsh r0, [r2, #0x2c]
	mov r3, r1, lsl #1
	cmp r0, #0
	ble _023143AC
	add r1, r5, #0x2c
	ldrsh r0, [r1, r3]
	sub r0, r0, r4
	strh r0, [r1, r3]
	ldrsh r0, [r2, #0x2c]
	cmp r0, #0
	movlt r0, #0
	strlth r0, [r2, #0x2c]
	cmp r4, #2
	blt _02314398
	ldr r2, _023143DC ; =0x00000D94
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023143BC
_02314398:
	ldr r2, _023143E0 ; =0x00000D92
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023143BC
_023143AC:
	ldr r2, _023143E4 ; =0x00000DD4
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_023143BC:
	mov r0, r6
	bl UpdateStatusIconFlags
_023143C4:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_023143D0: .word 0x00000DC7
_023143D4: .word 0x00000DC6
_023143D8: .word 0x00000D9F
_023143DC: .word 0x00000D94
_023143E0: .word 0x00000D92
_023143E4: .word 0x00000DD4
	arm_func_end LowerHitChanceStat

	arm_func_start TryInflictCringeStatus
TryInflictCringeStatus: ; 0x023143E8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bl sub_02025888
	mov r0, r6
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, #0x1f
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _02314498
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r5, #0
	beq _02314490
	ldr r2, _02314534 ; =0x00000DA2
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02314490:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02314498:
	cmp r4, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	ldr r4, [r6, #0xb4]
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd0]
	cmp r0, #1
	beq _02314514
	ldr r1, _02314538 ; =0x022C4884
	mov r2, #1
	mov r0, r6
	strb r2, [r4, #0xd0]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r6
	strb r1, [r4, #0xd1]
	bl ov29_022E539C
	ldr r2, _0231453C ; =0x00000D02
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r7
	mov r1, r6
	bl ov29_0231B364
	mov r0, r7
	mov r1, r6
	bl TryActivateQuickFeet
	b _02314524
_02314514:
	ldr r2, _02314540 ; =0x00000D03
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02314524:
	mov r0, r6
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02314534: .word 0x00000DA2
_02314538: .word 0x022C4884
_0231453C: .word 0x00000D02
_02314540: .word 0x00000D03
	arm_func_end TryInflictCringeStatus

	arm_func_start TryInflictParalysisStatus
TryInflictParalysisStatus: ; 0x02314544
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov r8, r2
	mov r4, r3
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, #0
	beq _023147D0
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	bne _023147D0
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	bne _023147D0
	mov r0, sl
	mov r1, sb
	mov r2, #0x16
	mov r3, #1
	bl DefenderAbilityIsActive__02311B94
	cmp r0, #0
	beq _023145F4
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r8, #0
	beq _023145EC
	mov r0, sl
	mov r1, sb
	mov r2, #0xda0
	bl LogMessageByIdWithPopupCheckUserTarget
_023145EC:
	mov r0, #0
	b _023147D0
_023145F4:
	mov r0, sb
	mov r1, #1
	bl ExclusiveItemEffectIsActive__023147EC
	cmp r0, #0
	beq _02314654
	cmp r8, #0
	beq _0231464C
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	add r2, sp, #4
	mov r0, sb
	mov r1, #1
	bl ov29_0230F654
	add r1, sp, #4
	mov r0, #1
	bl ov29_02344B44
	ldr r2, _023147D8 ; =0x00000DA1
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_0231464C:
	mov r0, #0
	b _023147D0
_02314654:
	cmp r4, #0
	movne r0, #1
	bne _023147D0
	mov r0, #0
	ldr r7, [sb, #0xb4]
	mov r1, sb
	mov r2, r0
	mov r4, #1
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r7, #0xbf]
	cmp r0, #4
	beq _023146E0
	ldr r1, _023147DC ; =0x022C4894
	mov r3, #4
	mov r0, sb
	mov r2, r4
	strb r3, [r7, #0xbf]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r7, #0xc0]
	mov r4, #0
	strb r4, [r7, #0xc1]
	mov r0, sl
	mov r1, sb
	mov r2, #0xd00
	strb r4, [r7, #0xc2]
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, sb
	bl ov29_022E4240
	mov r0, sb
	bl CalcSpeedStageWrapper
	mov r0, sl
	mov r1, sb
	bl TryActivateQuickFeet
	b _023146F0
_023146E0:
	ldr r2, _023147E0 ; =0x00000D01
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_023146F0:
	mov r0, sb
	mov r1, #0x19
	bl AbilityIsActive2
	cmp r0, #0
	beq _023147C4
	cmp r4, #0
	bne _023147C4
	mov r5, #0
	ldr fp, _023147E4 ; =0x0235171C
	mov r4, r5
_02314718:
	mov r1, r4, lsl #2
	add r0, fp, r4, lsl #2
	ldrsh r6, [sb, #4]
	ldrsh r3, [fp, r1]
	ldrsh r1, [r0, #2]
	ldrsh r2, [sb, #6]
	add r0, r6, r3
	add r1, r2, r1
	bl GetTile
	ldr r6, [r0, #0xc]
	mov r0, r6
	bl EntityIsValid__023118B4
	cmp r0, #0
	beq _023147B8
	ldr r0, [r6]
	cmp r0, #1
	bne _023147B8
	cmp r5, #0
	bne _02314790
	mov r5, #1
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	ldr r2, _023147E8 ; =0x00000DC5
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02314790:
	mov r0, sb
	mov r1, r6
	bl ov29_023018AC
	cmp r0, #1
	bne _023147B8
	mov r0, sl
	mov r1, r6
	mov r2, r8
	mov r3, #0
	bl TryInflictParalysisStatus
_023147B8:
	add r4, r4, #1
	cmp r4, #8
	blt _02314718
_023147C4:
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, #1
_023147D0:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_023147D8: .word 0x00000DA1
_023147DC: .word 0x022C4894
_023147E0: .word 0x00000D01
_023147E4: .word 0x0235171C
_023147E8: .word 0x00000DC5
	arm_func_end TryInflictParalysisStatus

	arm_func_start ExclusiveItemEffectIsActive__023147EC
ExclusiveItemEffectIsActive__023147EC: ; 0x023147EC
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #6]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r2, #0x228
	bl ExclusiveItemEffectFlagTest
	ldmia sp!, {r3, pc}
	arm_func_end ExclusiveItemEffectIsActive__023147EC

	arm_func_start BoostSpeed
BoostSpeed: ; 0x02314810
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov sb, r0
	mov r0, r8
	mov r7, r2
	mov r6, r3
	bl EntityIsValid__023118B4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0
	bne _02314850
	ldr r1, _0231492C ; =0x022C4888
	mov r0, r8
	mov r2, #0
	bl CalcStatusDuration
	add r6, r0, #1
_02314850:
	mov r0, #0
	mov r1, r8
	mov r2, r0
	ldr r5, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r0, r8
	mov r1, r7
	bl CalcSpeedStage
	mov r4, r0
	cmp r4, #4
	bne _0231489C
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	beq _02314920
	ldr r2, _02314930 ; =0x00000DDB
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02314920
_0231489C:
	mov r2, #0
	b _023148BC
_023148A4:
	add r1, r5, r2
	ldrb r0, [r1, #0x114]
	cmp r0, #0
	streqb r6, [r1, #0x114]
	beq _023148C4
	add r2, r2, #1
_023148BC:
	cmp r2, #5
	blt _023148A4
_023148C4:
	mov r0, r8
	mov r1, r7
	bl CalcSpeedStage
	mov r6, r0
	cmp r4, r6
	bne _023148F0
	ldr r2, _02314934 ; =0x00000DDA
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02314920
_023148F0:
	mov r0, r8
	bl ov29_022E44CC
	ldr r0, _02314938 ; =0x02353318
	mov r1, r6, lsl #1
	ldrh r2, [r0, r1]
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #1
	strb r0, [r5, #0x101]
	mov r0, #0
	strb r0, [r5, #0x152]
_02314920:
	mov r0, r8
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0231492C: .word 0x022C4888
_02314930: .word 0x00000DDB
_02314934: .word 0x00000DDA
_02314938: .word 0x02353318
	arm_func_end BoostSpeed

	arm_func_start BoostSpeedOneStage
BoostSpeedOneStage: ; 0x0231493C
	stmdb sp!, {r3, lr}
	str r3, [sp]
	mov r3, r2
	mov r2, #1
	bl BoostSpeed
	ldmia sp!, {r3, pc}
	arm_func_end BoostSpeedOneStage

	arm_func_start LowerSpeed
LowerSpeed: ; 0x02314954
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov r8, r2
	mov r7, r3
	bl EntityIsValid__023118B4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	mov r1, sb
	mov r2, r7
	bl ov29_02301940
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	mov r1, sb
	mov r2, r7
	bl ov29_02302430
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	mov r1, sb
	mov r2, r0
	ldr r4, [sb, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r0, sb
	bl CalcSpeedStageWrapper
	movs fp, r0
	bne _023149E8
	cmp r7, #0
	beq _02314AA0
	ldr r2, _02314AAC ; =0x00000DDC
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02314AA0
_023149E8:
	mov r5, #0
	b _02314A34
_023149F0:
	mov r1, #0
	b _02314A28
_023149F8:
	add r6, r4, r1
	ldrb r0, [r6, #0x119]
	cmp r0, #0
	bne _02314A24
	ldr r1, _02314AB0 ; =0x022C488C
	mov r0, sb
	mov r2, #1
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r6, #0x119]
	b _02314A30
_02314A24:
	add r1, r1, #1
_02314A28:
	cmp r1, #5
	blt _023149F8
_02314A30:
	add r5, r5, #1
_02314A34:
	cmp r5, r8
	blt _023149F0
	mov r0, sb
	bl CalcSpeedStageWrapper
	mov r4, r0
	cmp fp, r4
	bne _02314A6C
	cmp r7, #0
	beq _02314AA0
	ldr r2, _02314AB4 ; =0x00000DDA
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02314AA0
_02314A6C:
	mov r0, sb
	bl ov29_022E451C
	ldr r0, _02314AB8 ; =0x02353318
	mov r1, r4, lsl #1
	ldrh r2, [r0, r1]
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	cmp r4, #0
	bne _02314AA0
	mov r0, sl
	mov r1, sb
	bl TryActivateQuickFeet
_02314AA0:
	mov r0, sb
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02314AAC: .word 0x00000DDC
_02314AB0: .word 0x022C488C
_02314AB4: .word 0x00000DDA
_02314AB8: .word 0x02353318
	arm_func_end LowerSpeed

	arm_func_start TrySealMove
TrySealMove: ; 0x02314ABC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov r5, #0
	movs r7, r1
	mov r8, r0
	mov r6, r2
	moveq r0, r5
	beq _02314C18
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, r5
	bne _02314C18
	mov r0, r8
	mov r1, r7
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, r5
	bne _02314C18
	ldr r0, [r7, #0xb4]
	mov r4, r5
	add ip, r0, #0x124
	mov lr, r4
	mov r2, r5
	mov r3, #1
	add r0, sp, #4
_02314B28:
	ldrb r1, [ip, lr, lsl #3]
	add sb, ip, lr, lsl #3
	tst r1, #1
	movne r1, r3
	moveq r1, r2
	tst r1, #0xff
	beq _02314B54
	ldrh r1, [sb, #2]
	tst r1, #1
	streq sb, [r0, r4, lsl #2]
	addeq r4, r4, #1
_02314B54:
	add lr, lr, #1
	cmp lr, #4
	blt _02314B28
	cmp r6, #0
	beq _02314B74
	cmp r4, #0
	moveq r0, #0
	beq _02314C18
_02314B74:
	cmp r4, #0
	beq _02314BE8
	ldr r3, _02314C20 ; =0x00000DBE
	mov r5, #8
	mov r0, r8
	mov r1, r7
	mov r2, #1
	str r5, [sp]
	bl ov29_02314D40
	cmp r0, #0
	movne r0, #0
	bne _02314C18
	cmp r6, #0
	movne r0, #1
	bne _02314C18
	mov r0, r4
	bl DungeonRandInt
	add r1, sp, #4
	ldr r2, [r1, r0, lsl #2]
	mov r0, #0
	ldrh r1, [r2, #2]
	orr r1, r1, #1
	strh r1, [r2, #2]
	ldrh r1, [r2, #4]
	bl ov29_0234B084
	mov r0, r8
	mov r1, r7
	mov r5, #1
	bl TryActivateQuickFeet
_02314BE8:
	cmp r5, #0
	beq _02314C04
	ldr r2, _02314C24 ; =0x00000DE3
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02314C14
_02314C04:
	ldr r2, _02314C28 ; =0x00000DE4
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02314C14:
	mov r0, #1
_02314C18:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02314C20: .word 0x00000DBE
_02314C24: .word 0x00000DE3
_02314C28: .word 0x00000DE4
	arm_func_end TrySealMove

	arm_func_start BoostOrLowerSpeed
BoostOrLowerSpeed: ; 0x02314C2C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl EntityIsValid__023118B4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0x32
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	mov r2, #1
	mov r0, r5
	beq _02314C74
	mov r1, r4
	mov r3, r2
	bl LowerSpeed
	b _02314C84
_02314C74:
	mov r1, r4
	mov r3, #0
	str r2, [sp]
	bl BoostSpeed
_02314C84:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end BoostOrLowerSpeed

	arm_func_start ResetHitChanceStat
ResetHitChanceStat: ; 0x02314C8C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r8, r2
	mov r4, r3
	mov r7, #0
	bl EntityIsValid__023118B4
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5, #0xb4]
	add r1, r0, r8, lsl #1
	ldrsh r0, [r1, #0x2c]
	cmp r0, #0xa
	movne r0, #0xa
	movne r7, #1
	strneh r0, [r1, #0x2c]
	cmp r7, #0
	beq _02314CE4
	mov r0, r5
	bl ov29_022E543C
	b _02314CF4
_02314CE4:
	cmp r4, #0
	beq _02314CF4
	mov r0, r5
	bl ov29_022E543C
_02314CF4:
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r7, #0
	beq _02314D20
	mov r0, r6
	mov r1, r5
	mov r2, #0xd60
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02314D30
_02314D20:
	ldr r2, _02314D3C ; =0x00000D61
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02314D30:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02314D3C: .word 0x00000D61
	arm_func_end ResetHitChanceStat

	arm_func_start ov29_02314D40
ov29_02314D40: ; 0x02314D40
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r1
	ldrb r1, [sp, #0x20]
	mov r7, r0
	mov r0, r6
	mov r5, r2
	mov r4, r3
	bl ExclusiveItemEffectIsActive__023147EC
	cmp r0, #0
	beq _02314DB8
	cmp r5, #0
	beq _02314DB0
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r1, [sp, #0x20]
	add r2, sp, #0
	mov r0, r6
	bl ov29_0230F654
	add r1, sp, #0
	mov r0, #1
	bl ov29_02344B44
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02314DB0:
	mov r0, #1
	b _02314DBC
_02314DB8:
	mov r0, #0
_02314DBC:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_02314D40

	arm_func_start ov29_02314DC4
ov29_02314DC4: ; 0x02314DC4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r0, #0
	mov r5, r2
	mov r2, r0
	mov r6, r1
	mov r4, r3
	bl SubstitutePlaceholderStringTags
	add r2, sp, #0
	mov r0, r6
	mov r1, r4
	bl ov29_0230F654
	add r1, sp, #0
	mov r0, #1
	bl ov29_02344B44
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_02314DC4

	arm_func_start TryActivateQuickFeet
TryActivateQuickFeet: ; 0x02314E1C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r1, #0x6d
	bl AbilityIsActive2
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r3, #0
	mov r0, r5
	mov r1, r4
	mov r2, #1
	str r3, [sp]
	bl BoostSpeed
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end TryActivateQuickFeet

	arm_func_start ov29_02314E60
ov29_02314E60: ; 0x02314E60
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _02314EB0 ; =0x022C4618
	mov r4, r1
	ldr ip, [r4, #0xb4]
	mov r3, #1
	mov r5, r0
	ldrsh r1, [r2]
	strb r3, [ip, #0x104]
	mov r0, r4
	strb r1, [ip, #0x105]
	bl ov29_022E60E4
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02314EB4 ; =0x00000DE5
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02314EB0: .word 0x022C4618
_02314EB4: .word 0x00000DE5
	arm_func_end ov29_02314E60

	arm_func_start ov29_02314EB8
ov29_02314EB8: ; 0x02314EB8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	ldr r5, [r7, #0xb4]
	mov r8, r0
	mov r4, #0
	mov r6, r2
	mov r2, r4
	mov r0, #1
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r5, #0xfd]
	cmp r0, #0
	beq _02314F04
	cmp r6, #0
	beq _02314F2C
	ldr r2, _02314F34 ; =0x00000ED1
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02314F2C
_02314F04:
	mov r4, #1
	mov r0, r7
	strb r4, [r5, #0xfd]
	bl UpdateStatusIconFlags
	cmp r6, #0
	beq _02314F2C
	mov r0, r8
	mov r1, r7
	mov r2, #0xed0
	bl LogMessageByIdWithPopupCheckUserTarget
_02314F2C:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02314F34: .word 0x00000ED1
	arm_func_end ov29_02314EB8

	arm_func_start TryInflictConfusedStatus
TryInflictConfusedStatus: ; 0x02314F38
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r5, r2
	mov r4, r3
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov29_02302430
	cmp r0, #0
	mov r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, r6
	mov r1, #0x19
	bl ItemIsActive__0231513C
	cmp r0, #0
	beq _02314FD8
	cmp r5, #0
	beq _02314FD0
	ldr r2, _02315100 ; =0x00000DAF
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02314FD0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02314FD8:
	mov ip, #2
	ldr r3, _02315104 ; =0x00000DBA
	mov r0, r7
	mov r1, r6
	mov r2, r5
	str ip, [sp]
	bl ov29_02314D40
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, r6
	beq _02315048
	cmp r7, #0
	moveq r0, #0
	beq _02315028
	ldr r0, [r7]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
_02315028:
	cmp r0, #0
	beq _02315048
	mov r0, r7
	mov r1, #0x53
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	bne _02315054
_02315048:
	mov r0, r6
	mov r1, #0x40
	bl AbilityIsActive2
_02315054:
	cmp r0, #0
	beq _0231507C
	cmp r5, #0
	beq _02315074
	ldr r2, _02315108 ; =0x00000DA7
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02315074:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0231507C:
	cmp r4, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl ov29_022E41CC
	ldr r4, [r6, #0xb4]
	ldrb r0, [r4, #0xd0]
	cmp r0, #2
	beq _023150E0
	ldr r1, _0231510C ; =0x022C4890
	mov r3, #2
	mov r0, r6
	mov r2, #1
	strb r3, [r4, #0xd0]
	bl CalcStatusDuration
	add r3, r0, #1
	ldr r2, _02315110 ; =0x00000CFE
	mov r0, r7
	mov r1, r6
	strb r3, [r4, #0xd1]
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r7
	mov r1, r6
	bl TryActivateQuickFeet
	b _023150F0
_023150E0:
	ldr r2, _02315114 ; =0x00000CFF
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_023150F0:
	mov r0, r6
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02315100: .word 0x00000DAF
_02315104: .word 0x00000DBA
_02315108: .word 0x00000DA7
_0231510C: .word 0x022C4890
_02315110: .word 0x00000CFE
_02315114: .word 0x00000CFF
	arm_func_end TryInflictConfusedStatus

	arm_func_start EntityIsValid__02315118
EntityIsValid__02315118: ; 0x02315118
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__02315118

	arm_func_start ItemIsActive__0231513C
ItemIsActive__0231513C: ; 0x0231513C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ItemIsActive__0231513C

	arm_func_start TryInflictCoweringStatus
TryInflictCoweringStatus: ; 0x0231516C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r7, r2
	mov r6, r3
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	ldr r6, [r4, #0xb4]
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xd0]
	cmp r0, #4
	beq _02315240
	ldr r1, _02315260 ; =0x022C47B0
	mov r3, #4
	mov r0, r4
	mov r2, #1
	strb r3, [r6, #0xd0]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r4
	strb r1, [r6, #0xd1]
	bl ov29_022E41DC
	ldr r2, _02315264 ; =0x00000D43
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r5
	mov r1, r4
	bl TryActivateQuickFeet
	b _02315250
_02315240:
	ldr r2, _02315268 ; =0x00000D44
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02315250:
	mov r0, r4
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02315260: .word 0x022C47B0
_02315264: .word 0x00000D43
_02315268: .word 0x00000D44
	arm_func_end TryInflictCoweringStatus

	arm_func_start ov29_0231526C
ov29_0231526C: ; 0x0231526C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r0, r4
	mov r5, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0xb4]
	ldr r3, _023152E0 ; =0x000003E7
	ldrsh r0, [r2, #0x10]
	add r0, r0, r5
	strh r0, [r2, #0x10]
	ldrsh r1, [r2, #0x12]
	ldrsh r0, [r2, #0x16]
	add r1, r1, r0
	cmp r1, r3
	ldrsh r0, [r2, #0x10]
	movle r3, r1
	cmp r0, r3
	ble _023152D0
	ldr r0, _023152E0 ; =0x000003E7
	cmp r1, r0
	movgt r1, r0
	strh r1, [r2, #0x10]
_023152D0:
	mov r0, r4
	bl ov29_022E4480
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_023152E0: .word 0x000003E7
	arm_func_end ov29_0231526C

	arm_func_start TryIncreaseHp
TryIncreaseHp: ; 0x023152E4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r5, r2
	mov r4, r3
	mov fp, #0
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, fp
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr sb, [r6, #0xb4]
	ldrb r0, [sb, #0xd8]
	cmp r0, #5
	bne _02315348
	mov r0, fp
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _023155EC ; =0x00000D83
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, fp
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02315348:
	mov r0, r6
	mov r1, #0x34
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _0231537C
	ldr r1, _023155F0 ; =0x022C4470
	mov r0, r5, lsl #8
	ldrsh r1, [r1]
	mov r1, r1, lsl #8
	bl MultiplyByFixedPoint
	mov r1, #0x64
	bl DivideInt
	add r5, r5, r0, asr #8
_0231537C:
	ldrsh r1, [sb, #0x12]
	ldrsh r0, [sb, #0x16]
	ldr r8, _023155F4 ; =0x000003E7
	ldrsh sl, [sb, #0x10]
	add r1, r1, r0
	cmp r1, r8
	ldr r0, _023155F4 ; =0x000003E7
	movle r8, r1
	cmp r1, r0
	movgt r1, r0
	cmp sl, r1
	bne _023153B4
	cmp r4, #0
	bgt _023153C4
_023153B4:
	cmp r5, #0
	bne _02315454
	cmp r4, #0
	ble _02315454
_023153C4:
	ldrsh r1, [sb, #0x12]
	ldr r0, _023155F4 ; =0x000003E7
	ldr r2, _023155F4 ; =0x000003E7
	add r1, r1, r4
	strh r1, [sb, #0x12]
	ldrsh r1, [sb, #0x10]
	add r1, r1, r4
	strh r1, [sb, #0x10]
	ldrsh r1, [sb, #0x12]
	cmp r1, r0
	strgth r0, [sb, #0x12]
	ldrsh r1, [sb, #0x12]
	ldrsh r0, [sb, #0x16]
	add r1, r1, r0
	cmp r1, r2
	ldrsh r0, [sb, #0x10]
	movle r2, r1
	cmp r0, r2
	ble _02315420
	ldr r0, _023155F4 ; =0x000003E7
	cmp r1, r0
	movgt r1, r0
	strh r1, [sb, #0x10]
_02315420:
	ldrsh r2, [sb, #0x12]
	ldrsh r1, [sb, #0x16]
	ldr r0, _023155F4 ; =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	ldrsh r0, [sb, #0x10]
	cmp r0, r1
	moveq sl, r0
	mov r0, r6
	bl ov29_022E4430
	mov fp, #1
	b _02315464
_02315454:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov29_0231526C
_02315464:
	ldrsh r2, [sb, #0x12]
	ldrsh r1, [sb, #0x16]
	ldr r0, _023155F4 ; =0x000003E7
	add r2, r2, r1
	ldrsh r1, [sb, #0x10]
	cmp r2, r0
	movgt r2, r0
	mov r0, r6
	sub sl, r1, sl
	sub r8, r2, r8
	bl UpdateStatusIconFlags
	mov r1, sl
	mov r0, #0
	bl ov29_0234B09C
	mov r0, #1
	mov r1, r8
	bl ov29_0234B09C
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp sl, #0
	cmpeq r8, #0
	bne _02315504
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	beq _023154FC
	cmp fp, #0
	beq _023154EC
	ldr r2, _023155F8 ; =0x00000CFD
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023154FC
_023154EC:
	ldr r2, _023155FC ; =0x00000CFA
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_023154FC:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02315504:
	cmp r4, #0
	cmpeq sl, #0
	bne _02315534
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	beq _0231552C
	ldr r2, _02315600 ; =0x00000CFB
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_0231552C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02315534:
	cmp r8, #0
	mov r4, #0
	beq _02315560
	mov r0, r6
	bl ov29_022E272C
	cmp r0, #0
	ldr r2, _02315604 ; =0x00000CFC
	mov r0, r7
	mov r1, r6
	movne r4, r8
	bl LogMessageByIdWithPopupCheckUserTarget
_02315560:
	cmp sl, #0
	beq _023155C8
	mov r0, r6
	bl ov29_022E272C
	cmp r0, #0
	movne r4, sl
	cmp r5, #0
	beq _023155C8
	ldrsh r2, [sb, #0x12]
	ldrsh r1, [sb, #0x16]
	ldr r0, _023155F4 ; =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	ldrsh r0, [sb, #0x10]
	cmp r0, r1
	bne _023155B8
	ldr r2, _02315608 ; =0x00000CF9
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023155C8
_023155B8:
	ldr r2, _0231560C ; =0x00000CF8
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_023155C8:
	cmp r4, #0
	beq _023155E4
	mov r2, #1
	mov r0, r4
	mov r1, r6
	sub r3, r2, #2
	bl ov29_022EA718
_023155E4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_023155EC: .word 0x00000D83
_023155F0: .word 0x022C4470
_023155F4: .word 0x000003E7
_023155F8: .word 0x00000CFD
_023155FC: .word 0x00000CFA
_02315600: .word 0x00000CFB
_02315604: .word 0x00000CFC
_02315608: .word 0x00000CF9
_0231560C: .word 0x00000CF8
	arm_func_end TryIncreaseHp

	arm_func_start ov29_02315610
ov29_02315610: ; 0x02315610
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0xb4]
	ldrb r0, [r2, #0xfa]
	cmp r0, #0
	beq _02315650
	ldr r2, _02315698 ; =0x00000CE4
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
_02315650:
	mov r1, #1
	mov r0, r4
	strb r1, [r2, #0xfa]
	bl ov29_022E465C
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _0231569C ; =0x00000CE2
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0
	bl ov29_022E2EC4
	bl ov29_02339CE8
	mov r0, r4
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02315698: .word 0x00000CE4
_0231569C: .word 0x00000CE2
	arm_func_end ov29_02315610

	arm_func_start ov29_023156A0
ov29_023156A0: ; 0x023156A0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl GetFloorType
	cmp r0, #0
	beq _023156DC
	ldr r2, _02315750 ; =0x00000CE6
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
_023156DC:
	ldr r2, [r4, #0xb4]
	ldrb r0, [r2, #0xfb]
	cmp r0, #0
	beq _02315700
	ldr r2, _02315754 ; =0x00000CE5
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
_02315700:
	mov r1, #1
	mov r0, r4
	strb r1, [r2, #0xfb]
	bl ov29_022E4660
	mov r0, #0
	bl ov29_02338794
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02315758 ; =0x00000CE3
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0
	bl ov29_022E2EC4
	bl ov29_02339CE8
	mov r0, r4
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02315750: .word 0x00000CE6
_02315754: .word 0x00000CE5
_02315758: .word 0x00000CE3
	arm_func_end ov29_023156A0

	arm_func_start ov29_0231575C
ov29_0231575C: ; 0x0231575C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0xb4]
	ldrb r0, [r2, #0xf9]
	cmp r0, #0
	beq _0231579C
	ldr r2, _023157E4 ; =0x00000CEA
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
_0231579C:
	mov r1, #1
	mov r0, r4
	strb r1, [r2, #0xf9]
	bl ov29_022E4664
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _023157E8 ; =0x00000CE9
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0
	bl ov29_022E2EC4
	bl ov29_02339CE8
	mov r0, r4
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_023157E4: .word 0x00000CEA
_023157E8: .word 0x00000CE9
	arm_func_end ov29_0231575C

	arm_func_start TryInflictLeechSeedStatus
TryInflictLeechSeedStatus: ; 0x023157EC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r8, r2
	mov r7, r3
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6]
	cmp r0, #1
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, r5
	ldr r4, [r5, #0xb4]
	bne _02315850
	cmp r8, #0
	beq _02315848
	ldr r2, _023159BC ; =0x00000DE1
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02315848:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02315850:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl ov29_02302430
	cmp r0, #0
	mov r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, r5
	mov r1, #4
	bl MonsterIsType
	cmp r0, #0
	beq _023158C8
	cmp r8, #0
	beq _023158C0
	ldr r2, _023159C0 ; =0x00000DE2
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023158C0:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_023158C8:
	cmp r7, #0
	ldrb r0, [r4, #0xe0]
	beq _023158E8
	cmp r0, #1
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_023158E8:
	cmp r0, #1
	beq _02315930
	cmp r0, #2
	bne _02315908
	ldr r2, _023159C4 ; =0x00000CAF
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02315908:
	ldr r1, _023159C8 ; =0x022C4790
	mov r2, #1
	mov r0, r5
	strb r2, [r4, #0xe0]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r4, #0xe9]
	mov r0, #0
	strb r0, [r4, #0xea]
	b _02315948
_02315930:
	ldr r2, _023159CC ; =0x00000CE1
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02315948:
	mov r0, r5
	bl ov29_022E4668
	mov r0, #0xff
	ldr r1, _023159D0 ; =0x02353538
	strb r0, [r4, #0xe8]
	mov r2, #0
_02315960:
	ldr r0, [r1]
	add r0, r0, r2, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb78]
	cmp r6, r0
	streqb r2, [r4, #0xe8]
	ldreq r0, [r6, #0xb4]
	add r2, r2, #1
	ldreq r0, [r0, #0xb0]
	streq r0, [r4, #0xe4]
	cmp r2, #0x14
	blt _02315960
	mov r0, r6
	mov r1, r5
	mov r2, #0xce0
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r6
	mov r1, r5
	bl TryActivateQuickFeet
	mov r0, r5
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_023159BC: .word 0x00000DE1
_023159C0: .word 0x00000DE2
_023159C4: .word 0x00000CAF
_023159C8: .word 0x022C4790
_023159CC: .word 0x00000CE1
_023159D0: .word 0x02353538
	arm_func_end TryInflictLeechSeedStatus

	arm_func_start ov29_023159D4
ov29_023159D4: ; 0x023159D4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #0
	ldr r5, [r0, #0xb4]
	ldr r7, _02315A4C ; =0x02353538
	mov r8, r4
_023159E8:
	ldr r0, [r7]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid__02315118
	cmp r0, #0
	beq _02315A3C
	ldr r2, [r6, #0xb4]
	ldrb r0, [r2, #0xe0]
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02315A3C
	ldr r1, [r2, #0xe4]
	ldr r0, [r5, #0xb0]
	cmp r1, r0
	bne _02315A3C
	mov r0, r6
	strb r8, [r2, #0xe0]
	bl UpdateStatusIconFlags
_02315A3C:
	add r4, r4, #1
	cmp r4, #0x14
	blt _023159E8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02315A4C: .word 0x02353538
	arm_func_end ov29_023159D4

	arm_func_start TryInflictDestinyBond
TryInflictDestinyBond: ; 0x02315A50
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	cmp r0, #1
	ldreq r0, [r5]
	cmpeq r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r6, #0xb4]
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xe0]
	cmp r0, #2
	beq _02315AE4
	cmp r0, #1
	bne _02315AB8
	ldr r2, _02315B5C ; =0x00000C94
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02315AB8:
	ldr r1, _02315B60 ; =0x022C47D4
	mov r3, #2
	mov r0, r5
	mov r2, #1
	strb r3, [r4, #0xe0]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r4, #0xe9]
	mov r0, #0
	strb r0, [r4, #0xea]
	b _02315AF8
_02315AE4:
	ldr r2, _02315B64 ; =0x00000D54
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r4, r5, r6, pc}
_02315AF8:
	mov r0, r5
	bl ov29_022E45CC
	mov r0, #0xff
	ldr r1, _02315B68 ; =0x02353538
	strb r0, [r4, #0xe8]
	mov r2, #0
_02315B10:
	ldr r0, [r1]
	add r0, r0, r2, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb78]
	cmp r5, r0
	streqb r2, [r4, #0xe8]
	ldreq r0, [r5, #0xb4]
	add r2, r2, #1
	ldreq r0, [r0, #0xb0]
	streq r0, [r4, #0xe4]
	cmp r2, #0x14
	blt _02315B10
	ldr r2, _02315B6C ; =0x00000D53
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02315B5C: .word 0x00000C94
_02315B60: .word 0x022C47D4
_02315B64: .word 0x00000D54
_02315B68: .word 0x02353538
_02315B6C: .word 0x00000D53
	arm_func_end TryInflictDestinyBond

	arm_func_start ov29_02315B70
ov29_02315B70: ; 0x02315B70
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r5, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	ldr r4, [r6, #0xb4]
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xec]
	cmp r0, #1
	beq _02315BDC
	mov r1, #1
	mov r0, r6
	strb r1, [r4, #0xec]
	add r1, r5, #1
	strb r1, [r4, #0xed]
	bl ov29_022E456C
	ldr r2, _02315BF8 ; =0x00000D2E
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02315BEC
_02315BDC:
	ldr r2, _02315BFC ; =0x00000D2F
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02315BEC:
	mov r0, r6
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02315BF8: .word 0x00000D2E
_02315BFC: .word 0x00000D2F
	arm_func_end ov29_02315B70

	arm_func_start ov29_02315C00
ov29_02315C00: ; 0x02315C00
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r7, r2
	mov r6, r3
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	ldr r6, [r4, #0xb4]
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xec]
	cmp r0, #2
	beq _02315CC4
	mov r1, #2
	mov r0, r4
	strb r1, [r6, #0xec]
	add r1, r7, #1
	strb r1, [r6, #0xed]
	bl ov29_022E45B8
	mov r0, r5
	mov r1, r4
	mov r2, #0xd30
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r5
	mov r1, r4
	bl TryActivateQuickFeet
	b _02315CD4
_02315CC4:
	ldr r2, _02315CE4 ; =0x00000D31
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02315CD4:
	mov r0, r4
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02315CE4: .word 0x00000D31
	arm_func_end ov29_02315C00

	arm_func_start ov29_02315CE8
ov29_02315CE8: ; 0x02315CE8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xec]
	cmp r0, #3
	beq _02315D60
	ldr r1, _02315D7C ; =0x022C47A4
	mov r3, #3
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xec]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xed]
	bl ov29_022E466C
	ldr r2, _02315D80 ; =0x00000D3F
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02315D70
_02315D60:
	mov r0, r6
	mov r1, r5
	mov r2, #0xd40
	bl LogMessageByIdWithPopupCheckUserTarget
_02315D70:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02315D7C: .word 0x022C47A4
_02315D80: .word 0x00000D3F
	arm_func_end ov29_02315CE8

	arm_func_start ov29_02315D84
ov29_02315D84: ; 0x02315D84
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xec]
	cmp r0, #4
	beq _02315DFC
	ldr r1, _02315E18 ; =0x022C47AC
	mov r3, #4
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xec]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xed]
	bl ov29_022E4670
	ldr r2, _02315E1C ; =0x00000D41
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02315E0C
_02315DFC:
	ldr r2, _02315E20 ; =0x00000D42
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02315E0C:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02315E18: .word 0x022C47AC
_02315E1C: .word 0x00000D41
_02315E20: .word 0x00000D42
	arm_func_end ov29_02315D84

	arm_func_start ov29_02315E24
ov29_02315E24: ; 0x02315E24
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov r8, r2
	mov r7, r3
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	beq _023160C4
	mov r0, sl
	mov r1, sb
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	bne _023160C4
	mov r0, sl
	mov r1, sb
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	mov r0, #0
	bne _023160C4
	ldr r6, [sb, #0xb4]
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xd8]
	cmp r0, #2
	bne _02315EC4
	cmp r7, #0
	beq _02315EBC
	ldr r2, _023160CC ; =0x00000D46
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02315EBC:
	mov r0, #1
	b _023160C4
_02315EC4:
	ldrb r0, [sp, #0x38]
	cmp r0, #0
	movne r0, #1
	bne _023160C4
	ldr fp, _023160D0 ; =0x02353538
	mov r4, #0
_02315EDC:
	ldr r0, [fp]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb78]
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	cmpne sb, r5
	beq _02315F34
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #0xd8]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02315F34
	mov r0, sl
	mov r1, r5
	mov r2, #0
	mov r3, r7
	bl ov29_02306728
	mov r0, #0x2a
	bl AdvanceFrame
_02315F34:
	add r4, r4, #1
	cmp r4, #0x14
	blt _02315EDC
	mov r0, sb
	bl ov29_022E4674
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xd8]
	cmp r0, #0
	beq _02315F78
	mov r0, sl
	mov r1, sb
	mov r3, r7
	mov r2, #2
	bl ov29_02306728
_02315F78:
	mov r0, sl
	mov r1, sb
	bl ov29_023066D8
	mov r0, #2
	strb r0, [r6, #0xd8]
	ldr r0, [sl, #0xb4]
	ldr r1, _023160D4 ; =0x022C47B4
	ldrb r3, [r0, #6]
	mov r0, sb
	mov r2, #1
	strb r3, [r6, #0xd9]
	strb r8, [r6, #0xda]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r6, #0xdb]
	mov r0, #0
	strb r0, [r6, #0xdc]
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _02315FCC
	bl ov29_022E81F8
_02315FCC:
	mov r0, sb
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, sb
	bl ov29_02304830
	ldr r0, _023160D0 ; =0x02353538
	mov r1, #1
	ldr r0, [r0]
	cmp r7, #0
	add r0, r0, #0x3000
	strb r1, [r0, #0xe38]
	beq _0231600C
	ldr r2, _023160D8 ; =0x00000D45
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_0231600C:
	mov r0, sl
	mov r1, sb
	bl TryActivateQuickFeet
	mov sl, #0
	mov r4, #1
	mov r6, #6
	mov r5, sl
_02316028:
	ldr r0, _023160D0 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, sl, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid__02315118
	cmp r0, #0
	beq _023160AC
	ldr r8, [r7, #0xb4]
	strb r6, [r8, #0x7c]
	str r5, [r8, #0x84]
	strh r5, [r8, #0x80]
	ldrb r0, [r8, #7]
	cmp r0, #0
	bne _023160AC
	add r2, sp, #0
	add r3, r8, #0x4a
	mov r1, #0xa
_02316074:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _02316074
	mov r0, r7
	mov r1, r4
	bl AiMovement
	add r3, sp, #0
	add r2, r8, #0x4a
	mov r1, #0xa
_0231609C:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _0231609C
_023160AC:
	add sl, sl, #1
	cmp sl, #0x14
	blt _02316028
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, #1
_023160C4:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_023160CC: .word 0x00000D46
_023160D0: .word 0x02353538
_023160D4: .word 0x022C47B4
_023160D8: .word 0x00000D45
	arm_func_end ov29_02315E24

	arm_func_start ov29_023160DC
ov29_023160DC: ; 0x023160DC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	beq _0231626C
	mov r0, r7
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	beq _0231626C
	mov r0, r8
	mov r1, #0xe
	ldr r4, [r8, #0xb4]
	ldr r5, [r7, #0xb4]
	bl MonsterIsType
	cmp r0, #0
	beq _02316218
	mov r0, r8
	mov r1, r7
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	bne _0231626C
	mov r0, r8
	mov r1, r7
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	bne _0231626C
	mov r0, r8
	mov r1, r7
	mov r3, r6
	mov r2, #1
	bl ov29_02306728
	mov r0, r7
	bl ov29_022E46C0
	ldrsh r0, [r4, #0x10]
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	strh r0, [r4, #0x10]
	ldrsh r0, [r4, #0x10]
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r4, #0x10]
	ldrb r0, [r5, #0xd8]
	cmp r0, #1
	beq _023161E0
	mov r0, r8
	mov r1, r7
	bl ov29_023066D8
	mov r2, #1
	ldr r1, _02316274 ; =0x022C4784
	mov r0, r7
	strb r2, [r5, #0xd8]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r5, #0xdb]
	mov r0, #0
	strb r0, [r5, #0xdc]
_023161E0:
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r6, #0
	beq _02316208
	ldr r2, _02316278 ; =0x00000CEC
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02316208:
	mov r0, r8
	mov r1, r7
	bl TryActivateQuickFeet
	b _02316260
_02316218:
	ldr r1, _0231627C ; =0x02352AEC
	mov r0, r8
	ldr r2, [r1]
	mov r1, r8
	mov r3, #1
	str r2, [sp]
	bl BoostOffensiveStat
	add r1, sp, #0
	ldr r2, [r1]
	mov r0, r8
	mov r1, r8
	mov r3, #1
	bl BoostDefensiveStat
	mov r2, #1
	mov r0, r8
	mov r1, r8
	mov r3, r2
	bl LowerSpeed
_02316260:
	mov r0, r7
	bl UpdateStatusIconFlags
	mov r0, #1
_0231626C:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02316274: .word 0x022C4784
_02316278: .word 0x00000CEC
_0231627C: .word 0x02352AEC
	arm_func_end ov29_023160DC

	arm_func_start ov29_02316280
ov29_02316280: ; 0x02316280
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #3
	mov r3, #1
	bl ov29_02306728
	mov sb, #0
	ldr r6, _0231639C ; =0x02353538
	mov r8, sb
	mov r7, #1
_023162C0:
	ldr r0, [r6]
	add r0, r0, sb, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb78]
	mov r0, sl
	bl EntityIsValid__02315118
	cmp r0, #0
	beq _02316304
	ldr r0, [sl, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #3
	bne _02316304
	mov r0, r5
	mov r1, sl
	mov r2, r8
	mov r3, r7
	bl ov29_02306728
_02316304:
	add sb, sb, #1
	cmp sb, #0x14
	blt _023162C0
	mov r0, r4
	bl ov29_022E46D0
	ldr r6, [r4, #0xb4]
	ldrb r0, [r6, #0xd8]
	cmp r0, #3
	beq _02316350
	ldr r1, _023163A0 ; =0x022C4788
	mov r3, #3
	mov r0, r4
	mov r2, #0
	strb r3, [r6, #0xd8]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r6, #0xdb]
	mov r0, #0
	strb r0, [r6, #0xdc]
_02316350:
	ldr r3, _0231639C ; =0x02353538
	mov r0, #0
	ldr r2, [r3]
	mov r1, r4
	add r2, r2, #0x19000
	str r4, [r2, #0x904]
	ldr r2, [r3]
	ldr r6, [r6, #0xb0]
	add r3, r2, #0x19000
	mov r2, r0
	str r6, [r3, #0x90c]
	bl SubstitutePlaceholderStringTags
	ldr r2, _023163A4 ; =0x00000CED
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r4
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0231639C: .word 0x02353538
_023163A0: .word 0x022C4788
_023163A4: .word 0x00000CED
	arm_func_end ov29_02316280

	arm_func_start ov29_023163A8
ov29_023163A8: ; 0x023163A8
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r6, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	beq _023164C0
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	bne _023164C0
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	bne _023164C0
	ldr r3, _023164C8 ; =0x00000C39
	mov ip, #8
	mov r0, r5
	mov r1, r4
	mov r2, #1
	str ip, [sp]
	bl ov29_02314D40
	cmp r0, #0
	movne r0, #0
	bne _023164C0
	cmp r6, #0
	movne r0, #1
	bne _023164C0
	mov r0, #0
	ldr r6, [r4, #0xb4]
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xd0]
	cmp r0, #5
	beq _023164A4
	ldr r1, _023164CC ; =0x022C47BC
	mov r3, #5
	mov r0, r4
	mov r2, #1
	strb r3, [r6, #0xd0]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r4
	strb r1, [r6, #0xd1]
	bl ov29_022E442C
	ldr r2, _023164D0 ; =0x00000D49
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r5
	mov r1, r4
	bl TryActivateQuickFeet
	b _023164B4
_023164A4:
	ldr r2, _023164D4 ; =0x00000D4A
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_023164B4:
	mov r0, r4
	bl UpdateStatusIconFlags
	mov r0, #1
_023164C0:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_023164C8: .word 0x00000C39
_023164CC: .word 0x022C47BC
_023164D0: .word 0x00000D49
_023164D4: .word 0x00000D4A
	arm_func_end ov29_023163A8

	arm_func_start ov29_023164D8
ov29_023164D8: ; 0x023164D8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r4, #0
	bl EntityIsValid__02315118
	cmp r0, #0
	mov r0, r4
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, [r6, #0xb4]
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r5, #0x11e]
	cmp r0, #3
	bhs _02316554
	add r1, r0, #1
	mov r0, #1
	strb r1, [r5, #0x11e]
	bl ov29_022E38E0
	mov r0, r6
	bl ov29_022E46D4
	ldrb r1, [r5, #0x11e]
	mov r0, r4
	bl ov29_0234B09C
	ldr r2, _02316574 ; =0x00000D4B
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r4, #1
	b _02316564
_02316554:
	ldr r2, _02316578 ; =0x00000D4C
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02316564:
	mov r0, r6
	bl UpdateStatusIconFlags
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02316574: .word 0x00000D4B
_02316578: .word 0x00000D4C
	arm_func_end ov29_023164D8

	arm_func_start ov29_0231657C
ov29_0231657C: ; 0x0231657C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xef]
	cmp r0, #1
	beq _02316604
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl ov29_02306A00
	mov r3, #1
	ldr r1, _02316620 ; =0x022C47C8
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xef]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xf0]
	bl ov29_022E4704
	ldr r2, _02316624 ; =0x00000D4D
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02316614
_02316604:
	ldr r2, _02316628 ; =0x00000D4E
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02316614:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02316620: .word 0x022C47C8
_02316624: .word 0x00000D4D
_02316628: .word 0x00000D4E
	arm_func_end ov29_0231657C

	arm_func_start ov29_0231662C
ov29_0231662C: ; 0x0231662C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r4, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl ov29_022E4714
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0x106]
	cmp r0, #0
	bne _023166F4
	ldr r1, _02316714 ; =0x022C47D0
	mov r0, r5
	mov r2, #0
	bl CalcStatusDuration
	add r3, r0, #1
	ldr r2, _02316718 ; =0x00000D51
	mov r0, r6
	mov r1, r5
	strb r3, [r4, #0x106]
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r6
	mov r1, r5
	bl TryActivateQuickFeet
	b _02316704
_023166F4:
	ldr r2, _0231671C ; =0x00000D52
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02316704:
	mov r0, r5
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02316714: .word 0x022C47D0
_02316718: .word 0x00000D51
_0231671C: .word 0x00000D52
	arm_func_end ov29_0231662C

	arm_func_start ov29_02316720
ov29_02316720: ; 0x02316720
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldr r4, [r6, #0xb4]
	mov r7, r0
	mov r0, r6
	mov r5, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov ip, #8
	ldr r3, _023168C4 ; =0x00000C39
	mov r0, r7
	mov r1, r6
	mov r2, #1
	str ip, [sp]
	bl ov29_02314D40
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov lr, #0
	add ip, r4, #0x124
	mov r1, lr
	mov r2, #1
	b _023167E8
_023167BC:
	ldrb r0, [ip, lr, lsl #3]
	mov r3, lr, lsl #3
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	beq _023167E4
	ldrb r0, [ip, r3]
	tst r0, #0x10
	bne _023167F0
_023167E4:
	add lr, lr, #1
_023167E8:
	cmp lr, #4
	blt _023167BC
_023167F0:
	cmp lr, #4
	bne _02316834
	ldrb r0, [r4, #0x144]
	tst r0, #0x10
	bne _02316834
	cmp r5, #0
	bne _0231682C
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _023168C8 ; =0x00000D57
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_0231682C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02316834:
	cmp r5, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd0]
	cmp r0, #6
	beq _023168A4
	ldr r1, _023168CC ; =0x022C47D8
	mov r3, #6
	mov r0, r6
	mov r2, #1
	strb r3, [r4, #0xd0]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r6
	strb r1, [r4, #0xd1]
	bl ov29_022E4718
	ldr r2, _023168D0 ; =0x00000D55
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r7
	mov r1, r6
	bl TryActivateQuickFeet
	b _023168B4
_023168A4:
	ldr r2, _023168D4 ; =0x00000D56
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_023168B4:
	mov r0, r6
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_023168C4: .word 0x00000C39
_023168C8: .word 0x00000D57
_023168CC: .word 0x022C47D8
_023168D0: .word 0x00000D55
_023168D4: .word 0x00000D56
	arm_func_end ov29_02316720

	arm_func_start ov29_023168D8
ov29_023168D8: ; 0x023168D8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r8, r2
	mov r7, r3
	bl EntityIsValid__02315118
	cmp r0, #0
	beq _02316B98
	mov r0, #0
	mov r1, r5
	mov r2, r0
	ldr r4, [r5, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r7, #0
	beq _02316A88
	mov r0, r7
	bl sub_02050FF8
	strh r0, [sp, #0x10]
	add r1, r4, #0x100
	ldrh ip, [r1, #0x4a]
	ldrh r1, [r1, #0x4c]
	mov r0, r0, lsr #0x10
	ldrh r2, [sp, #0x10]
	sub r3, sp, #4
	strh r0, [sp, #0x12]
	strh r1, [sp, #0x1e]
	ldrh r1, [sp, #0x12]
	strh r2, [sp, #0x20]
	ldrh r0, [sp, #0x1e]
	strh ip, [r3]
	strh r1, [sp, #0x22]
	strh r0, [r3, #2]
	ldrh r2, [sp, #0x20]
	ldr r0, [r3]
	ldrh r1, [sp, #0x22]
	strh r2, [r3]
	strh ip, [sp, #0x1c]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl SubFixedPoint
	strh r0, [sp, #0xc]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #0xe]
	ldrh r2, [sp, #0xc]
	add r1, r4, #0x100
	ldrh r0, [sp, #0xe]
	strh r2, [r1, #0x4a]
	sub r3, sp, #4
	strh r0, [r1, #0x4c]
	ldrh r0, [r1, #0x46]
	strh r0, [r3]
	ldrh r0, [r1, #0x48]
	strh r0, [r3, #2]
	ldrh r2, [r1, #0x4a]
	ldr r0, [r3]
	strh r2, [r3]
	ldrh r1, [r1, #0x4c]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl sub_02050F78
	strh r0, [sp, #8]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #0xa]
	ldrh r0, [sp, #8]
	add r1, r4, #0x100
	ldrh r2, [sp, #0xa]
	strh r0, [r1, #0x46]
	mov r0, #0
	strh r2, [r1, #0x48]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrh r1, [sp, #0x1c]
	sub r2, sp, #4
	ldrh r0, [sp, #0x1e]
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	add r1, r4, #0x100
	mov r4, r0
	ldrh r0, [r1, #0x4a]
	sub r2, sp, #4
	strh r0, [r2]
	ldrh r0, [r1, #0x4c]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	cmp r4, r0
	beq _02316A74
	mov r0, r5
	bl ov29_022E471C
	ldr r2, _02316BA0 ; =0x00000D64
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02316B90
_02316A74:
	ldr r2, _02316BA4 ; =0x00000D68
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02316B90
_02316A88:
	mov r0, r8
	bl sub_02050FF8
	strh r0, [sp, #4]
	add r1, r4, #0x100
	ldrh ip, [r1, #0x46]
	ldrh r1, [r1, #0x48]
	mov r0, r0, lsr #0x10
	ldrh r2, [sp, #4]
	sub r3, sp, #4
	strh r0, [sp, #6]
	strh r1, [sp, #0x1a]
	ldrh r1, [sp, #6]
	strh r2, [sp, #0x14]
	ldrh r0, [sp, #0x1a]
	strh ip, [r3]
	strh r1, [sp, #0x16]
	strh r0, [r3, #2]
	ldrh r2, [sp, #0x14]
	ldr r0, [r3]
	ldrh r1, [sp, #0x16]
	strh r2, [r3]
	strh ip, [sp, #0x18]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl SubFixedPoint
	strh r0, [sp]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #2]
	ldrh r1, [sp]
	add r2, r4, #0x100
	ldrh r3, [sp, #2]
	strh r1, [r2, #0x46]
	mov r0, #0
	strh r3, [r2, #0x48]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrh r1, [sp, #0x18]
	sub r2, sp, #4
	ldrh r0, [sp, #0x1a]
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	add r1, r4, #0x100
	ldrh r2, [r1, #0x46]
	sub r3, sp, #4
	mov r4, r0
	strh r2, [r3]
	ldrh r0, [r1, #0x48]
	strh r0, [r3, #2]
	ldr r0, [r3]
	bl CeilFixedPoint
	cmp r4, r0
	beq _02316B80
	mov r0, r5
	bl ov29_022E47B8
	ldr r2, _02316BA8 ; =0x00000D63
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02316B90
_02316B80:
	ldr r2, _02316BAC ; =0x00000D69
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02316B90:
	mov r0, r5
	bl UpdateStatusIconFlags
_02316B98:
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02316BA0: .word 0x00000D64
_02316BA4: .word 0x00000D68
_02316BA8: .word 0x00000D63
_02316BAC: .word 0x00000D69
	arm_func_end ov29_023168D8

	arm_func_start ov29_02316BB0
ov29_02316BB0: ; 0x02316BB0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov r8, r2
	mov r7, r3
	ldr r6, [sp, #0x50]
	bl EntityIsValid__02315118
	cmp r0, #0
	beq _023170FC
	mov r0, sb
	mov r1, #0x25
	ldr r5, [sb, #0xb4]
	bl IqSkillIsEnabled
	cmp r0, #0
	bne _02316C08
	mov r0, sb
	mov r1, #0x59
	bl AbilityIsActive2
	cmp r0, #0
	beq _02316C38
_02316C08:
	ldr r1, _02317104 ; =0x022C44B0
	mov r0, r8, lsl #8
	ldrsh r1, [r1]
	mov r1, r1, lsl #8
	bl MultiplyByFixedPoint
	mov r1, #0x64
	bl DivideInt
	bl sub_02001888
	ldr r1, _02317108 ; =0x000003E7
	add r8, r8, r0, asr #8
	cmp r8, r1
	movgt r8, r1
_02316C38:
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _02316C74
	mov r0, sb
	mov r1, #0x22
	bl ItemIsActive__0231513C
	cmp r0, #0
	beq _02316C74
	cmp r6, #0
	beq _023170FC
	ldr r2, _0231710C ; =0x00000D6C
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023170FC
_02316C74:
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r7, #0
	mov r4, #0
	beq _02316CE8
	add r0, r5, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	add r1, r5, #0x100
	ldrh r2, [r1, #0x4a]
	sub r3, sp, #4
	mov fp, r0
	strh r2, [r3]
	ldrh r0, [r1, #0x4c]
	strh r0, [r3, #2]
	ldr r0, [r3]
	bl CeilFixedPoint
	cmp fp, r0
	ldr r0, _02317108 ; =0x000003E7
	movge r4, #1
	cmp r8, r0
	moveq r4, #1
_02316CE8:
	cmp r4, #0
	add r0, r5, #0x100
	beq _02316F08
	ldrh r4, [r0, #0x4a]
	ldrh r3, [r0, #0x4c]
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r4, [sp, #0x24]
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r3, [sp, #0x26]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	add r1, r5, #0x100
	ldrh r2, [r1, #0x4a]
	sub r3, sp, #4
	mov r4, r0
	strh r2, [r3]
	ldrh r0, [r1, #0x4c]
	strh r0, [r3, #2]
	ldr r0, [r3]
	bl CeilFixedPoint
	cmp r4, r0
	moveq r4, #1
	mov r0, r7
	movne r4, #0
	bl sub_02050FF8
	strh r0, [sp, #0x18]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #0x1a]
	add r1, r5, #0x100
	ldrh r7, [sp, #0x18]
	ldrh r2, [sp, #0x1a]
	ldrh r0, [r1, #0x4a]
	sub r3, sp, #4
	strh r7, [sp, #0x28]
	strh r0, [r3]
	ldrh r0, [r1, #0x4c]
	strh r2, [sp, #0x2a]
	ldrh r2, [sp, #0x28]
	strh r0, [r3, #2]
	ldr r0, [r3]
	ldrh r1, [sp, #0x2a]
	strh r2, [r3]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl sub_02050EBC
	strh r0, [sp, #0x14]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #0x16]
	ldrh r0, [sp, #0x14]
	add r1, r5, #0x100
	ldrh r2, [sp, #0x16]
	strh r0, [r1, #0x4a]
	mov r0, #0xc8
	strh r2, [r1, #0x4c]
	bl sub_02050FF8
	strh r0, [sp, #0x10]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #0x12]
	add r1, r5, #0x100
	ldrh r0, [r1, #0x4a]
	sub r7, sp, #4
	ldrh r3, [sp, #0x10]
	strh r0, [r7]
	ldrh r0, [r1, #0x4c]
	ldrh r2, [sp, #0x12]
	strh r0, [r7, #2]
	ldr r0, [r7]
	strh r3, [r7]
	strh r2, [r7, #2]
	ldr r1, [r7]
	bl sub_02050F78
	strh r0, [sp, #0xc]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #0xe]
	ldrh r2, [sp, #0xc]
	add r0, r5, #0x100
	ldrh r1, [sp, #0xe]
	strh r2, [r0, #0x4a]
	tst r4, #0xff
	strh r1, [r0, #0x4c]
	ldrh r1, [r0, #0x4a]
	strh r1, [r0, #0x46]
	ldrh r1, [r0, #0x4c]
	strh r1, [r0, #0x48]
	bne _02316E60
	cmp r6, #0
	beq _02316E60
	ldr r2, _02317110 ; =0x00000D6A
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02316E60:
	ldrh r1, [sp, #0x24]
	ldrh r0, [sp, #0x26]
	sub r2, sp, #4
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	add r1, r5, #0x100
	ldrh r2, [r1, #0x4a]
	sub r3, sp, #4
	mov r4, r0
	strh r2, [r3]
	ldrh r0, [r1, #0x4c]
	strh r0, [r3, #2]
	ldr r0, [r3]
	bl CeilFixedPoint
	cmp r4, r0
	bne _02316ED4
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r6, #0
	beq _023170F4
	ldr r2, _02317114 ; =0x00000D66
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023170F4
_02316ED4:
	mov r0, sb
	bl ov29_022E476C
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r6, #0
	beq _023170F4
	ldr r2, _02317118 ; =0x00000D65
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023170F4
_02316F08:
	ldrh r2, [r0, #0x46]
	ldrh r1, [r0, #0x48]
	mov r0, r8
	strh r2, [sp, #0x20]
	strh r1, [sp, #0x22]
	bl sub_02050FF8
	strh r0, [sp, #8]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #0xa]
	add r1, r5, #0x100
	ldrh r4, [sp, #8]
	ldrh r2, [sp, #0xa]
	ldrh r0, [r1, #0x46]
	sub r3, sp, #4
	strh r4, [sp, #0x1c]
	strh r0, [r3]
	ldrh r0, [r1, #0x48]
	strh r2, [sp, #0x1e]
	ldrh r2, [sp, #0x1c]
	strh r0, [r3, #2]
	ldr r0, [r3]
	ldrh r1, [sp, #0x1e]
	strh r2, [r3]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl sub_02050EBC
	strh r0, [sp, #4]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #6]
	ldrh r2, [sp, #4]
	add r1, r5, #0x100
	ldrh r0, [sp, #6]
	strh r2, [r1, #0x46]
	sub r3, sp, #4
	strh r0, [r1, #0x48]
	ldrh r0, [r1, #0x46]
	strh r0, [r3]
	ldrh r0, [r1, #0x48]
	strh r0, [r3, #2]
	ldrh r2, [r1, #0x4a]
	ldr r0, [r3]
	strh r2, [r3]
	ldrh r1, [r1, #0x4c]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl sub_02050F78
	strh r0, [sp]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #2]
	ldr r0, _02317108 ; =0x000003E7
	ldrh r2, [sp]
	cmp r8, r0
	add r0, r5, #0x100
	ldrh r1, [sp, #2]
	strh r2, [r0, #0x46]
	strh r1, [r0, #0x48]
	ldreqh r1, [r0, #0x4a]
	streqh r1, [r0, #0x46]
	ldreqh r1, [r0, #0x4c]
	streqh r1, [r0, #0x48]
	mov r0, sb
	bl ov29_022E47BC
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrh r1, [sp, #0x20]
	sub r2, sp, #4
	ldrh r0, [sp, #0x22]
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	add r1, r5, #0x100
	ldrh r2, [r1, #0x46]
	sub r3, sp, #4
	mov r4, r0
	strh r2, [r3]
	ldrh r0, [r1, #0x48]
	strh r0, [r3, #2]
	ldr r0, [r3]
	bl CeilFixedPoint
	cmp r4, r0
	bne _02317074
	cmp r6, #0
	beq _023170F4
	ldr r2, _0231711C ; =0x00000D67
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023170F4
_02317074:
	add r0, r5, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl CeilFixedPoint
	add r1, r5, #0x100
	ldrh r2, [r1, #0x4a]
	sub r3, sp, #4
	mov r4, r0
	strh r2, [r3]
	ldrh r0, [r1, #0x4c]
	strh r0, [r3, #2]
	ldr r0, [r3]
	bl CeilFixedPoint
	cmp r4, r0
	blt _023170DC
	cmp r6, #0
	beq _023170F4
	ldr r2, _02317110 ; =0x00000D6A
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023170F4
_023170DC:
	cmp r6, #0
	beq _023170F4
	ldr r2, _02317120 ; =0x00000D6B
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_023170F4:
	mov r0, sb
	bl UpdateStatusIconFlags
_023170FC:
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02317104: .word 0x022C44B0
_02317108: .word 0x000003E7
_0231710C: .word 0x00000D6C
_02317110: .word 0x00000D6A
_02317114: .word 0x00000D66
_02317118: .word 0x00000D65
_0231711C: .word 0x00000D67
_02317120: .word 0x00000D6B
	arm_func_end ov29_02316BB0

	arm_func_start ov29_02317124
ov29_02317124: ; 0x02317124
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r4, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xf3]
	cmp r0, #1
	beq _023171F0
	ldr r1, _02317210 ; =0x022C4848
	mov r2, #1
	mov r0, r5
	strb r2, [r4, #0xf3]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xf4]
	bl ov29_022E47C0
	ldr r2, _02317214 ; =0x00000D72
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r6
	mov r1, r5
	bl TryActivateQuickFeet
	b _02317200
_023171F0:
	ldr r2, _02317218 ; =0x00000D73
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02317200:
	mov r0, r5
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02317210: .word 0x022C4848
_02317214: .word 0x00000D72
_02317218: .word 0x00000D73
	arm_func_end ov29_02317124

	arm_func_start ov29_0231721C
ov29_0231721C: ; 0x0231721C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x240
	mov sb, r1
	mov sl, r0
	mov r0, sb
	bl EntityIsValid__02315118
	cmp r0, #0
	beq _023173F4
	ldr r8, [sb, #0xb4]
	ldrb r0, [r8, #0xef]
	cmp r0, #2
	bne _02317260
	ldr r2, _023173FC ; =0x00000D6F
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023173F4
_02317260:
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	add r0, sp, #0x40
	mov r1, #0
	bl ov29_022E7C60
	movs r6, r0
	bne _02317298
	ldr r2, _02317400 ; =0x00000D6E
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023173F4
_02317298:
	mov r0, #0
	bl sub_02024FB8
	mov r1, r0
	add r0, sp, #0
	bl Strcpy
	mov r4, #0
	mov r7, r4
	ldrsh r5, [r8, #4]
	add fp, sp, #0x40
	b _02317310
_023172C0:
	mov r0, r6
	bl DungeonRandInt
	add r0, fp, r0, lsl #3
	bl GetMonsterIdFromSpawnEntry
	mov r1, r0
	mov r0, sb
	bl ov29_022F9408
	ldrsh r1, [r8, #4]
	mov r5, r0
	cmp r5, r1
	beq _0231730C
	mov r1, #1
	bl MewSpawnCheck
	cmp r0, #0
	beq _0231730C
	mov r0, r5
	bl GetSpriteIndex__022F7388
	movs r4, r0
	bne _02317318
_0231730C:
	add r7, r7, #1
_02317310:
	cmp r7, #0x14
	blt _023172C0
_02317318:
	cmp r7, #0x14
	bne _02317334
	ldr r2, _02317400 ; =0x00000D6E
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023173F4
_02317334:
	cmp r4, #0
	bne _02317350
	ldr r2, _02317400 ; =0x00000D6E
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023173F4
_02317350:
	strh r5, [r8, #4]
	mov r0, sb
	strh r4, [sb, #0xa8]
	bl ov29_02304BAC
	mov r0, sb
	bl ov29_022E47C4
	mov r0, sb
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, sb
	bl ov29_02304830
	mov r0, sl
	mov r1, sb
	mov r2, #0
	bl ov29_02306A00
	mov r0, #2
	strb r0, [r8, #0xef]
	ldr r1, _02317404 ; =0x022C47FC
	mov r0, sb
	mov r2, #1
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r8, #0xf0]
	mov r0, #1
	bl sub_02024FB8
	ldrsh r1, [r8, #4]
	mov r2, #0x4e
	mov r4, r0
	bl GetNameWithGender
	mov r0, #0
	add r1, sp, #0
	bl ov29_0234B0B4
	mov r1, r4
	mov r0, #1
	bl ov29_0234B0B4
	ldr r2, _02317408 ; =0x00000D6D
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, sb
	bl UpdateStatusIconFlags
_023173F4:
	add sp, sp, #0x240
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_023173FC: .word 0x00000D6F
_02317400: .word 0x00000D6E
_02317404: .word 0x022C47FC
_02317408: .word 0x00000D6D
	arm_func_end ov29_0231721C

	arm_func_start ov29_0231740C
ov29_0231740C: ; 0x0231740C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, [r5, #0xb4]
	ldrb r0, [r4, #0xef]
	cmp r0, #3
	beq _02317494
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02306A00
	mov r3, #3
	ldr r1, _023174C0 ; =0x022C480C
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xef]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xf0]
	bl ov29_022E47C8
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, r6
	mov r1, r5
	mov r2, #0xd70
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023174B4
_02317494:
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _023174C4 ; =0x00000D71
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023174B4:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_023174C0: .word 0x022C480C
_023174C4: .word 0x00000D71
	arm_func_end ov29_0231740C

	arm_func_start ov29_023174C8
ov29_023174C8: ; 0x023174C8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, #0
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov sl, r3
	mov r4, sb
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, sb
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r8
	mov r1, r7
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, sb
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r8
	mov r1, r7
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	mov r0, sb
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, r7
	mov r2, r0
	ldr r5, [r7, #0xb4]
	bl SubstitutePlaceholderStringTags
	cmp sl, #0
	beq _02317568
	mov r0, r7
	mov r1, #0xe
	bl MonsterIsType
	cmp r0, #0
	movne r0, #1
	moveq r0, sb
	and r0, r0, #0xff
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02317568:
	ldrsh r0, [r5, #0x2e]
	cmp r0, #0xa
	movgt r0, #0xa
	movgt sb, #1
	strgth r0, [r5, #0x2e]
	cmp sb, #0
	beq _023175A4
	mov r0, r7
	mov r1, r6
	bl ov29_022E47CC
	ldr r2, _02317638 ; =0x00000D77
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r4, #1
_023175A4:
	ldrb r0, [r5, #0xfe]
	cmp r0, #0
	beq _023175C8
	ldr r2, _0231763C ; =0x00000D75
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_023175C8:
	cmp r4, #0
	bne _023175DC
	mov r0, r7
	mov r1, r6
	bl ov29_022E47CC
_023175DC:
	mov r0, r7
	mov r1, #0xe
	bl MonsterIsType
	cmp r0, #0
	bne _02317604
	ldr r2, _02317640 ; =0x00000D76
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02317628
_02317604:
	ldr r2, _02317644 ; =0x00000D74
	mov r3, #1
	mov r0, r8
	mov r1, r7
	strb r3, [r5, #0xfe]
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r8
	mov r1, r7
	bl TryActivateQuickFeet
_02317628:
	mov r0, r7
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02317638: .word 0x00000D77
_0231763C: .word 0x00000D75
_02317640: .word 0x00000D76
_02317644: .word 0x00000D74
	arm_func_end ov29_023174C8

	arm_func_start ov29_02317648
ov29_02317648: ; 0x02317648
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _023176C0 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x78d]
	cmp r0, #0
	bne _023176AC
	mov r0, r4
	bl ov29_022E4868
	ldr r1, _023176C0 ; =0x02353538
	mov r0, r4
	ldr r1, [r1]
	mov r2, #1
	strb r2, [r1, #0x78d]
	bl UpdateStatusIconFlags
	ldr r2, _023176C4 ; =0x00000D78
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
_023176AC:
	ldr r2, _023176C8 ; =0x00000D79
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_023176C0: .word 0x02353538
_023176C4: .word 0x00000D78
_023176C8: .word 0x00000D79
	arm_func_end ov29_02317648

	arm_func_start ov29_023176CC
ov29_023176CC: ; 0x023176CC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r6, r2
	mov r7, r3
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	ldr r6, [r4, #0xb4]
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xf1]
	cmp r0, #1
	beq _023177B8
	mov r2, #1
	cmp r7, #0
	strb r2, [r6, #0xf1]
	movne r0, #0x7f
	bne _0231777C
	ldr r1, _023177D8 ; =0x022C4828
	mov r0, r4
	bl CalcStatusDuration
	add r0, r0, #1
_0231777C:
	strb r0, [r6, #0xf2]
	mov r0, r4
	bl ov29_022E486C
	ldr r2, _023177DC ; =0x00000D34
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0x31
	bl AdvanceFrame
	bl ov29_02336F4C
	bl ov29_02339CE8
	mov r0, r5
	mov r1, r4
	bl TryActivateQuickFeet
	b _023177C8
_023177B8:
	ldr r2, _023177E0 ; =0x00000D35
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_023177C8:
	mov r0, r4
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_023177D8: .word 0x022C4828
_023177DC: .word 0x00000D34
_023177E0: .word 0x00000D35
	arm_func_end ov29_023176CC

	arm_func_start IsBlinded
IsBlinded: ; 0x023177E4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl EntityIsValid__02315118
	cmp r0, #0
	beq _0231783C
	ldr r1, [r5, #0xb4]
	ldrb r0, [r1, #0xf1]
	cmp r0, #1
	beq _02317834
	cmp r4, #0
	beq _0231783C
	ldrb r0, [r1, #7]
	cmp r0, #0
	bne _0231783C
	mov r0, r5
	mov r1, #0xe
	bl ItemIsActive__0231513C
	cmp r0, #0
	beq _0231783C
_02317834:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_0231783C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end IsBlinded

	arm_func_start ov29_02317844
ov29_02317844: ; 0x02317844
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r4, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xf1]
	cmp r0, #2
	beq _02317930
	mov r0, r5
	bl ov29_022E48B8
	ldr r2, _02317950 ; =0x00000D36
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r3, #2
	ldr r1, _02317954 ; =0x022C4830
	mov r0, r5
	mov r2, #1
	strb r3, [r4, #0xf1]
	bl CalcStatusDuration
	add r2, r0, #1
	mov r0, r6
	mov r1, r5
	strb r2, [r4, #0xf2]
	bl ov29_0231B364
	mov r0, #1
	bl ov29_022E2EC4
	bl ov29_02336F4C
	bl ov29_02339CE8
	mov r0, r6
	mov r1, r5
	bl TryActivateQuickFeet
	b _02317940
_02317930:
	ldr r2, _02317958 ; =0x00000D37
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02317940:
	mov r0, r5
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02317950: .word 0x00000D36
_02317954: .word 0x022C4830
_02317958: .word 0x00000D37
	arm_func_end ov29_02317844

	arm_func_start ov29_0231795C
ov29_0231795C: ; 0x0231795C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xf1]
	cmp r0, #3
	beq _023179E4
	ldr r1, _02317A00 ; =0x022C4838
	mov r3, #3
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xf1]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xf2]
	bl ov29_022E4914
	ldr r2, _02317A04 ; =0x00000D38
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0x31
	bl AdvanceFrame
	bl ov29_02336F4C
	bl ov29_02339CE8
	b _023179F4
_023179E4:
	ldr r2, _02317A08 ; =0x00000D39
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023179F4:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02317A00: .word 0x022C4838
_02317A04: .word 0x00000D38
_02317A08: .word 0x00000D39
	arm_func_end ov29_0231795C

	arm_func_start ov29_02317A0C
ov29_02317A0C: ; 0x02317A0C
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl EntityIsValid__02315118
	cmp r0, #0
	beq _02317A4C
	ldr r0, [r4, #0xb4]
	ldrsh r0, [r0, #2]
	bl GetMobilityType
	cmp r0, #0
	cmpne r0, #4
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	bne _02317A54
_02317A4C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02317A54:
	ldr r6, [r4, #0xb4]
	ldrb r0, [r6, #0xef]
	cmp r0, #4
	beq _02317AB8
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl ov29_02306A00
	mov r3, #4
	ldr r1, _02317AE8 ; =0x022C486C
	mov r0, r4
	mov r2, #1
	strb r3, [r6, #0xef]
	bl CalcStatusDuration
	add r3, r0, #1
	mov r0, #0
	mov r1, r4
	mov r2, r0
	strb r3, [r6, #0xf0]
	bl SubstitutePlaceholderStringTags
	ldr r2, _02317AEC ; =0x00000D3A
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02317AD8
_02317AB8:
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02317AF0 ; =0x00000D3B
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02317AD8:
	mov r0, r4
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02317AE8: .word 0x022C486C
_02317AEC: .word 0x00000D3A
_02317AF0: .word 0x00000D3B
	arm_func_end ov29_02317A0C

	arm_func_start ov29_02317AF4
ov29_02317AF4: ; 0x02317AF4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	beq _02317B40
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	bne _02317B40
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	beq _02317B48
_02317B40:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02317B48:
	ldr r4, [r5, #0xb4]
	ldrb r0, [r4, #0xf1]
	cmp r0, #1
	bne _02317B70
	ldr r2, _02317C0C ; =0x00000D3E
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02317B70:
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xf1]
	cmp r0, #4
	beq _02317BEC
	ldr r1, _02317C10 ; =0x022C487C
	mov r3, #4
	mov r0, r5
	mov r2, #1
	strb r3, [r4, #0xf1]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xf2]
	bl sub_01FFB62C
	ldr r0, _02317C14 ; =0x00000115
	bl ov29_022EACCC
	ldr r2, _02317C18 ; =0x00000D3C
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0x31
	bl AdvanceFrame
	bl ov29_02336F4C
	bl ov29_02339CE8
	mov r0, r6
	mov r1, r5
	bl TryActivateQuickFeet
	b _02317BFC
_02317BEC:
	ldr r2, _02317C1C ; =0x00000D3D
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02317BFC:
	mov r0, r5
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02317C0C: .word 0x00000D3E
_02317C10: .word 0x022C487C
_02317C14: .word 0x00000115
_02317C18: .word 0x00000D3C
_02317C1C: .word 0x00000D3D
	arm_func_end ov29_02317AF4

	arm_func_start RestoreMovePP
RestoreMovePP: ; 0x02317C20
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov fp, r2
	mov r8, r3
	mov r6, #0
	bl EntityIsValid__02315118
	cmp r0, #0
	beq _02317D48
	ldr r0, [sb, #0xb4]
	mov r5, r6
	add r4, r0, #0x124
_02317C58:
	ldrb r0, [r4, r5, lsl #3]
	add r7, r4, r5, lsl #3
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02317CD0
	ldrb r1, [r7, #6]
	mov r0, r7
	str r1, [sp, #4]
	bl GetMaxPp
	str r0, [sp]
	mov r0, r7
	bl GetMaxPpWrapper
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, r0
	bge _02317CD0
	ldr r0, [sp, #4]
	mov r6, #1
	add r0, r0, fp
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, r0
	ldrgt r0, [sp]
	strgt r0, [sp, #4]
	ldr r0, [sp, #4]
	strb r0, [r7, #6]
_02317CD0:
	add r5, r5, #1
	cmp r5, #4
	blt _02317C58
	cmp r6, #0
	beq _02317D18
	mov r0, sb
	bl ov29_022E4964
	cmp r8, #0
	bne _02317D40
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02317D50 ; =0x00000DB3
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02317D40
_02317D18:
	cmp r8, #0
	bne _02317D40
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02317D54 ; =0x00000DB4
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02317D40:
	mov r0, sb
	bl UpdateStatusIconFlags
_02317D48:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02317D50: .word 0x00000DB3
_02317D54: .word 0x00000DB4
	arm_func_end RestoreMovePP

	arm_func_start ov29_02317D58
ov29_02317D58: ; 0x02317D58
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r5, r2
	mov r6, r3
	mov r4, #0
	bl EntityIsValid__02315118
	cmp r0, #0
	beq _02317E78
	ldr r0, [r7, #0xb4]
	add r1, r0, #0x124
	ldrb r0, [r1, r5, lsl #3]
	add r5, r1, r5, lsl #3
	tst r0, #1
	movne r0, #1
	moveq r0, r4
	tst r0, #0xff
	beq _02317E78
	ldrb r1, [r5, #6]
	mov r0, r5
	str r1, [sp, #4]
	bl GetMaxPp
	str r0, [sp]
	mov r0, r5
	bl GetMaxPpWrapper
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, r0
	bge _02317E04
	ldr r0, [sp, #4]
	mov r4, #1
	add r0, r0, r6
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, r0
	ldrgt r0, [sp]
	strgt r0, [sp, #4]
	ldr r0, [sp, #4]
	strb r0, [r5, #6]
_02317E04:
	cmp r4, #0
	beq _02317E44
	mov r0, r7
	bl ov29_022E4964
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	beq _02317E70
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02317E80 ; =0x00000DB3
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02317E70
_02317E44:
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	beq _02317E70
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02317E84 ; =0x00000DB4
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02317E70:
	mov r0, r7
	bl UpdateStatusIconFlags
_02317E78:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02317E80: .word 0x00000DB3
_02317E84: .word 0x00000DB4
	arm_func_end ov29_02317D58

	arm_func_start ov29_02317E88
ov29_02317E88: ; 0x02317E88
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, r1
	ldr r1, [sb, #0xb4]
	mov r6, #0
	mov sl, r0
	mov r8, r2
	mov r7, r3
	mov r5, r6
	add r4, r1, #0x124
	add fp, sp, #0xc
_02317EB4:
	ldrb r1, [r4, r5, lsl #3]
	add r0, r4, r5, lsl #3
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	beq _02317F00
	ldrb r1, [r0, #6]
	str r1, [sp, #8]
	bl GetMaxPp
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	cmp r1, r0
	addlt r0, r6, #1
	movlt r1, r6, lsl #1
	movlt r0, r0, lsl #0x10
	strlth r5, [fp, r1]
	movlt r6, r0, asr #0x10
_02317F00:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
	cmp r5, #4
	blt _02317EB4
	cmp r6, #0
	ble _02317F48
	mov r0, r6
	bl DungeonRandInt
	mov r0, r0, lsl #0x10
	add r1, sp, #0xc
	mov r0, r0, asr #0xf
	ldrh r2, [r1, r0]
	mov r0, sl
	mov r1, sb
	mov r3, r8
	str r7, [sp]
	bl ov29_02317D58
_02317F48:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov29_02317E88

	arm_func_start ov29_02317F50
ov29_02317F50: ; 0x02317F50
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, [r5, #0xb4]
	ldrb r3, [r2, #0x1a]
	add r1, r3, r4
	cmp r1, #0xff
	movge r1, #0xff
	and r0, r1, #0xff
	strb r1, [r2, #0x1a]
	cmp r3, r0
	bhs _02317FC0
	mov r0, r5
	bl ov29_022E49B4
	ldr r2, _02317FDC ; =0x00000D96
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02317FD0
_02317FC0:
	ldr r2, _02317FE0 ; =0x00000D97
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02317FD0:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02317FDC: .word 0x00000D96
_02317FE0: .word 0x00000D97
	arm_func_end ov29_02317F50

	arm_func_start ov29_02317FE4
ov29_02317FE4: ; 0x02317FE4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, [r5, #0xb4]
	ldrb r3, [r2, #0x1b]
	add r1, r3, r4
	cmp r1, #0xff
	movge r1, #0xff
	and r0, r1, #0xff
	strb r1, [r2, #0x1b]
	cmp r3, r0
	bhs _02318054
	mov r0, r5
	bl ov29_022E4A04
	ldr r2, _02318070 ; =0x00000D98
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02318064
_02318054:
	ldr r2, _02318074 ; =0x00000D99
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02318064:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02318070: .word 0x00000D98
_02318074: .word 0x00000D99
	arm_func_end ov29_02317FE4

	arm_func_start ov29_02318078
ov29_02318078: ; 0x02318078
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, [r5, #0xb4]
	ldrb r3, [r2, #0x1c]
	add r1, r3, r4
	cmp r1, #0xff
	movge r1, #0xff
	and r0, r1, #0xff
	strb r1, [r2, #0x1c]
	cmp r3, r0
	bhs _023180E8
	mov r0, r5
	bl ov29_022E4A54
	ldr r2, _02318104 ; =0x00000D9A
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023180F8
_023180E8:
	ldr r2, _02318108 ; =0x00000D9B
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023180F8:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02318104: .word 0x00000D9A
_02318108: .word 0x00000D9B
	arm_func_end ov29_02318078

	arm_func_start ov29_0231810C
ov29_0231810C: ; 0x0231810C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, [r5, #0xb4]
	ldrb r3, [r2, #0x1d]
	add r1, r3, r4
	cmp r1, #0xff
	movge r1, #0xff
	and r0, r1, #0xff
	strb r1, [r2, #0x1d]
	cmp r3, r0
	bhs _0231817C
	mov r0, r5
	bl ov29_022E4AA4
	ldr r2, _02318198 ; =0x00000D9C
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _0231818C
_0231817C:
	ldr r2, _0231819C ; =0x00000D9D
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_0231818C:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02318198: .word 0x00000D9C
_0231819C: .word 0x00000D9D
	arm_func_end ov29_0231810C

	arm_func_start ov29_023181A0
ov29_023181A0: ; 0x023181A0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [r5, #0xb4]
	mov r6, r0
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xee]
	cmp r0, #1
	beq _023181EC
	mov r1, #1
	mov r0, r5
	strb r1, [r4, #0xee]
	bl ov29_022E4AF0
	ldr r2, _02318208 ; =0x00000DDD
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023181FC
_023181EC:
	ldr r2, _0231820C ; =0x00000DDE
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023181FC:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02318208: .word 0x00000DDD
_0231820C: .word 0x00000DDE
	arm_func_end ov29_023181A0

	arm_func_start ov29_02318210
ov29_02318210: ; 0x02318210
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [r5, #0xb4]
	mov r6, r0
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xee]
	cmp r0, #2
	beq _0231825C
	mov r1, #2
	mov r0, r5
	strb r1, [r4, #0xee]
	bl ov29_022E4B3C
	ldr r2, _02318278 ; =0x00000DDF
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _0231826C
_0231825C:
	mov r0, r6
	mov r1, r5
	mov r2, #0xde0
	bl LogMessageByIdWithPopupCheckUserTarget
_0231826C:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02318278: .word 0x00000DDF
	arm_func_end ov29_02318210

	arm_func_start ov29_0231827C
ov29_0231827C: ; 0x0231827C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r8, r3
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl EntityIsValid__02315118
	cmp r0, #0
	mov r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r6
	mov r2, r0
	ldr r4, [r6, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r4, #0xd8]
	cmp r0, #4
	beq _02318388
	mov r0, r7
	mov r1, r6
	bl ov29_023066D8
	mov r3, #4
	ldr r1, _023183B0 ; =0x022C476C
	mov r0, r6
	mov r2, #1
	strb r3, [r4, #0xd8]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r4, #0xdb]
	mov r1, #0
	ldr r0, _023183B4 ; =0x02353538
	strb r1, [r4, #0xdc]
	ldr r0, [r0]
	mov r1, #1
	strb r1, [r0, #0xe]
	cmp r5, #0
	beq _02318370
	ldr r2, _023183B8 ; =0x00000D7B
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02318370:
	mov r0, r7
	mov r1, r6
	bl TryActivateQuickFeet
	mov r0, r6
	bl ov29_022FB984
	b _023183A0
_02318388:
	cmp r5, #0
	beq _023183A0
	ldr r2, _023183BC ; =0x00000D7C
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_023183A0:
	mov r0, r6
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_023183B0: .word 0x022C476C
_023183B4: .word 0x02353538
_023183B8: .word 0x00000D7B
_023183BC: .word 0x00000D7C
	arm_func_end ov29_0231827C

	arm_func_start SetReflectDamageCountdownTo4
SetReflectDamageCountdownTo4: ; 0x023183C0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl EntityIsValid__02315118
	cmp r0, #0
	ldrne r0, _023183E4 ; =0x022C4620
	ldrne r1, [r4, #0xb4]
	ldrnesh r0, [r0]
	strneb r0, [r1, #0xd7]
	ldmia sp!, {r4, pc}
	.align 2, 0
_023183E4: .word 0x022C4620
	arm_func_end SetReflectDamageCountdownTo4

	arm_func_start ov29_023183E8
ov29_023183E8: ; 0x023183E8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl EntityIsValid__02315118
	cmp r0, #0
	beq _0231844C
	ldr r3, [r4, #0xb4]
	ldr r0, _02318454 ; =0x000003E7
	ldrsh r2, [r3, #0x12]
	ldrsh r1, [r3, #0x16]
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	ldrsh r0, [r3, #0x10]
	cmp r0, r1
	bge _02318444
	ldr r0, _02318458 ; =0x022C4628
	mov r3, #0
	ldrsh r2, [r0]
	mov r0, r4
	mov r1, r4
	str r3, [sp]
	bl TryIncreaseHp
_02318444:
	mov r0, r4
	bl SetReflectDamageCountdownTo4
_0231844C:
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02318454: .word 0x000003E7
_02318458: .word 0x022C4628
	arm_func_end ov29_023183E8

	arm_func_start ov29_0231845C
ov29_0231845C: ; 0x0231845C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, #0x10
	beq _023184E0
	ldr r1, _023184FC ; =0x022C4764
	mov r3, #0x10
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xd5]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xd6]
	bl SetReflectDamageCountdownTo4
	ldr r2, _02318500 ; =0x00000D7D
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023184F0
_023184E0:
	ldr r2, _02318504 ; =0x00000D7E
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023184F0:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_023184FC: .word 0x022C4764
_02318500: .word 0x00000D7D
_02318504: .word 0x00000D7E
	arm_func_end ov29_0231845C

	arm_func_start ov29_02318508
ov29_02318508: ; 0x02318508
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, #0x11
	beq _02318584
	ldr r1, _023185A0 ; =0x022C4768
	mov r3, #0x11
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xd5]
	bl CalcStatusDuration
	add r3, r0, #1
	ldr r2, _023185A4 ; =0x00000D7F
	mov r0, r6
	mov r1, r5
	strb r3, [r4, #0xd6]
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02318594
_02318584:
	mov r0, r6
	mov r1, r5
	mov r2, #0xd80
	bl LogMessageByIdWithPopupCheckUserTarget
_02318594:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_023185A0: .word 0x022C4768
_023185A4: .word 0x00000D7F
	arm_func_end ov29_02318508

	arm_func_start ov29_023185A8
ov29_023185A8: ; 0x023185A8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r7, r3
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	ldr r7, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r7, #0xd8]
	cmp r0, #5
	beq _02318698
	mov r0, r6
	mov r1, r5
	bl ov29_023066D8
	mov r3, #5
	ldr r1, _023186C0 ; =0x022C4774
	mov r0, r5
	mov r2, #1
	strb r3, [r7, #0xd8]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r7, #0xdb]
	cmp r4, #0
	beq _02318688
	ldr r2, _023186C4 ; =0x00000D81
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02318688:
	mov r0, r6
	mov r1, r5
	bl TryActivateQuickFeet
	b _023186B0
_02318698:
	cmp r4, #0
	beq _023186B0
	ldr r2, _023186C8 ; =0x00000D82
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023186B0:
	mov r0, r5
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_023186C0: .word 0x022C4774
_023186C4: .word 0x00000D81
_023186C8: .word 0x00000D82
	arm_func_end ov29_023185A8

	arm_func_start ov29_023186CC
ov29_023186CC: ; 0x023186CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #6
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end ov29_023186CC

	arm_func_start ov29_02318700
ov29_02318700: ; 0x02318700
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _02318728 ; =0x00000D86
	mov r0, r4
	bl LogMessageByIdWithPopupCheckUser
	ldmia sp!, {r4, pc}
	.align 2, 0
_02318728: .word 0x00000D86
	arm_func_end ov29_02318700

	arm_func_start ov29_0231872C
ov29_0231872C: ; 0x0231872C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r7, r3
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	ldr r7, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r7, #0xd8]
	cmp r0, #6
	beq _0231881C
	mov r0, r6
	mov r1, r5
	bl ov29_023066D8
	mov r3, #6
	ldr r1, _02318844 ; =0x022C4778
	mov r0, r5
	mov r2, #1
	strb r3, [r7, #0xd8]
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r7, #0xdb]
	cmp r4, #0
	beq _0231880C
	ldr r2, _02318848 ; =0x00000D84
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_0231880C:
	mov r0, r6
	mov r1, r5
	bl TryActivateQuickFeet
	b _02318834
_0231881C:
	cmp r4, #0
	beq _02318834
	ldr r2, _0231884C ; =0x00000D85
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02318834:
	mov r0, r5
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02318844: .word 0x022C4778
_02318848: .word 0x00000D84
_0231884C: .word 0x00000D85
	arm_func_end ov29_0231872C

	arm_func_start ov29_02318850
ov29_02318850: ; 0x02318850
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl ov29_02301940
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl ov29_02302430
	cmp r0, #0
	mov r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	mov r2, r0
	ldr r4, [r6, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r0, r6
	mov r1, #0x10
	bl ov29_02301EAC
	cmp r0, #0
	bne _02318900
	cmp r5, #0
	bne _023188F8
	ldr r2, _02318974 ; =0x00000D89
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_023188F8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02318900:
	cmp r5, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0xf5]
	cmp r0, #1
	beq _02318954
	ldr r1, _02318978 ; =0x022C477C
	mov r2, #1
	mov r0, r6
	strb r2, [r4, #0xf5]
	bl CalcStatusDuration
	add r3, r0, #1
	ldr r2, _0231897C ; =0x00000D87
	mov r0, r7
	mov r1, r6
	strb r3, [r4, #0xf6]
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r7
	mov r1, r6
	bl TryActivateQuickFeet
	b _02318964
_02318954:
	ldr r2, _02318980 ; =0x00000D88
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02318964:
	mov r0, r6
	bl UpdateStatusIconFlags
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02318974: .word 0x00000D89
_02318978: .word 0x022C477C
_0231897C: .word 0x00000D87
_02318980: .word 0x00000D88
	arm_func_end ov29_02318850

	arm_func_start ov29_02318984
ov29_02318984: ; 0x02318984
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl GravityIsActive
	cmp r0, #0
	beq _023189B0
	ldr r2, _02318A3C ; =0x00000D8C
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r4, r5, r6, pc}
_023189B0:
	mov r0, r6
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl EntityIsValid__02315118
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xf7]
	cmp r0, #1
	beq _02318A20
	ldr r1, _02318A40 ; =0x022C4780
	mov r2, #1
	mov r0, r5
	strb r2, [r4, #0xf7]
	bl CalcStatusDuration
	add r3, r0, #1
	ldr r2, _02318A44 ; =0x00000D8A
	mov r0, r6
	mov r1, r5
	strb r3, [r4, #0xf8]
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02318A30
_02318A20:
	ldr r2, _02318A48 ; =0x00000D8B
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02318A30:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02318A3C: .word 0x00000D8C
_02318A40: .word 0x022C4780
_02318A44: .word 0x00000D8A
_02318A48: .word 0x00000D8B
	arm_func_end ov29_02318984

	arm_func_start HasConditionalGroundImmunity
HasConditionalGroundImmunity: ; 0x02318A4C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl EntityIsValid__02315118
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl GravityIsActive
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xf7]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end HasConditionalGroundImmunity

	arm_func_start ov29_02318A90
ov29_02318A90: ; 0x02318A90
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl IsMonster__02318AB0
	cmp r0, #0
	ldrne r0, [r5, #0xb4]
	strneb r4, [r0, #0x10b]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_02318A90

	arm_func_start IsMonster__02318AB0
IsMonster__02318AB0: ; 0x02318AB0
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end IsMonster__02318AB0

	arm_func_start ov29_02318AD4
ov29_02318AD4: ; 0x02318AD4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov r8, #1
	bl IsMonster__02318AB0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov sb, #0
	ldr r7, [r4, #0xb4]
	mov r5, sb
	mov r6, r8
	mov r4, #0x53
	b _02318B3C
_02318B04:
	ldrb r0, [r7, #0x10b]
	cmp r0, #1
	bne _02318B20
	ldr r0, [r7, #0x188]
	cmp r0, #0xc800
	movge r8, r6
	movlt r8, r5
_02318B20:
	cmp r8, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	bl AdvanceFrame
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, asr #0x10
_02318B3C:
	cmp sb, #0x190
	blt _02318B04
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_02318AD4

	arm_func_start ov29_02318B48
ov29_02318B48: ; 0x02318B48
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov r8, #1
	bl IsMonster__02318AB0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov sb, #0
	ldr r7, [r4, #0xb4]
	mov r5, sb
	mov r6, r8
	mov r4, #0x53
	b _02318BB0
_02318B78:
	ldrb r0, [r7, #0x10b]
	cmp r0, #0
	bne _02318B94
	ldr r0, [r7, #0x188]
	cmp r0, #0
	movle r8, r6
	movgt r8, r5
_02318B94:
	cmp r8, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	bl AdvanceFrame
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, asr #0x10
_02318BB0:
	cmp sb, #0x190
	blt _02318B78
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_02318B48

	arm_func_start ov29_02318BBC
ov29_02318BBC: ; 0x02318BBC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov sb, r0
	mov r0, r8
	mov r7, r2
	mov r6, r3
	bl EntityIsValid__02318D34
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, #0
	ldr r5, [r8, #0xb4]
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r5, #0xd2]
	cmp r0, r7
	cmpeq r7, #0xc
	bne _02318C18
	ldr r2, _02318D20 ; =0x00000D7A
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02318C18:
	strb r7, [r5, #0xd2]
	mov r2, #0
	add r0, r5, #0x124
	b _02318C3C
_02318C28:
	add r1, r0, r2, lsl #3
	cmp r1, r6
	streqb r2, [r5, #0xd4]
	beq _02318C44
	add r2, r2, #1
_02318C3C:
	cmp r2, #4
	blt _02318C28
_02318C44:
	add r0, r7, #0xf9
	mov r1, #1
	and r0, r0, #0xff
	strb r1, [r5, #0x154]
	cmp r0, #1
	mov r4, #0
	movls r4, r1
	strlsb r1, [r5, #0x10b]
	bls _02318C7C
	cmp r7, #9
	cmpne r7, #0xa
	cmpne r7, #0xd
	moveq r0, #2
	streqb r0, [r5, #0x10b]
_02318C7C:
	cmp r7, #1
	bne _02318CD0
	ldr r1, _02318D24 ; =0x022C4754
	mov r0, r8
	mov r2, #0
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r5, #0xd3]
	mov r0, #0
	str r0, [r5, #0xb8]
	ldrh r1, [r6, #4]
	cmp r1, #0x154
	ldreq r0, _02318D28 ; =0x00000166
	streqh r0, [r5, #0xac]
	beq _02318CD0
	ldr r0, _02318D2C ; =0x00000217
	cmp r1, r0
	subeq r0, r0, #0xb0
	streqh r0, [r5, #0xac]
	subne r0, r0, #0xb2
	strneh r0, [r5, #0xac]
_02318CD0:
	cmp r7, #0xc
	bne _02318CF0
	ldr r1, _02318D30 ; =0x022C475C
	mov r0, r8
	mov r2, #0
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r5, #0xd3]
_02318CF0:
	mov r0, r8
	mov r1, r4
	bl ov29_022E41B0
	ldr r2, [sp, #0x20]
	mov r0, sb
	mov r1, r8
	bl LogMessageWithPopupCheckUserTarget
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r8
	bl ov29_02318AD4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02318D20: .word 0x00000D7A
_02318D24: .word 0x022C4754
_02318D28: .word 0x00000166
_02318D2C: .word 0x00000217
_02318D30: .word 0x022C475C
	arm_func_end ov29_02318BBC

	arm_func_start EntityIsValid__02318D34
EntityIsValid__02318D34: ; 0x02318D34
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__02318D34

	arm_func_start ov29_02318D58
ov29_02318D58: ; 0x02318D58
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl EntityIsValid__02318D34
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0xb4]
	ldrb r0, [r1, #0xd2]
	cmp r0, #1
	cmpne r0, #0xc
	movne r0, #0
	strneb r0, [r1, #0xd2]
	strneb r0, [r1, #0x154]
	strneb r0, [r1, #0x10b]
	mov r0, r4
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, pc}
	arm_func_end ov29_02318D58

	arm_func_start ov29_02318D98
ov29_02318D98: ; 0x02318D98
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r5, r2
	bl EntityIsValid__02318E4C
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	ldr r4, [r6, #0xb4]
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, r5
	bne _02318DEC
	ldr r2, _02318E40 ; =0x00000CF3
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02318DEC:
	mov r0, r6
	bl ov29_022E3F20
	ldrb r0, [r4, #0xd5]
	cmp r0, #4
	cmpne r0, #0xa
	cmpne r0, #0xf
	beq _02318E20
	ldr r1, _02318E44 ; =0x022C4750
	mov r0, r6
	mov r2, #0
	bl CalcStatusDuration
	add r0, r0, #1
	strb r0, [r4, #0xd6]
_02318E20:
	ldr r2, _02318E48 ; =0x00000CF2
	mov r0, r7
	mov r1, r6
	strb r5, [r4, #0xd5]
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r6
	bl UpdateStatusIconFlags
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02318E40: .word 0x00000CF3
_02318E44: .word 0x022C4750
_02318E48: .word 0x00000CF2
	arm_func_end ov29_02318D98

	arm_func_start EntityIsValid__02318E4C
EntityIsValid__02318E4C: ; 0x02318E4C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid__02318E4C

	arm_func_start ov29_02318E70
ov29_02318E70: ; 0x02318E70
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02318E4C
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, #2
	beq _02318EE8
	ldr r1, _02318F04 ; =0x022C4734
	mov r3, #2
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xd5]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xd6]
	bl ov29_022E3F74
	ldr r2, _02318F08 ; =0x00000CEE
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02318EF8
_02318EE8:
	ldr r2, _02318F0C ; =0x00000CEF
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02318EF8:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02318F04: .word 0x022C4734
_02318F08: .word 0x00000CEE
_02318F0C: .word 0x00000CEF
	arm_func_end ov29_02318E70

	arm_func_start ov29_02318F10
ov29_02318F10: ; 0x02318F10
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02318E4C
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, #0xe
	beq _02318F88
	ldr r1, _02318FA4 ; =0x022C4738
	mov r3, #0xe
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xd5]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xd6]
	bl ov29_022E3F78
	mov r0, r6
	mov r1, r5
	mov r2, #0xcf0
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02318F98
_02318F88:
	ldr r2, _02318FA8 ; =0x00000CF1
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02318F98:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02318FA4: .word 0x022C4738
_02318FA8: .word 0x00000CF1
	arm_func_end ov29_02318F10

	arm_func_start ov29_02318FAC
ov29_02318FAC: ; 0x02318FAC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02318E4C
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, #6
	beq _02319024
	ldr r1, _02319040 ; =0x022C4794
	mov r3, #6
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xd5]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xd6]
	bl ov29_022E3F7C
	ldr r2, _02319044 ; =0x00000CDE
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02319034
_02319024:
	ldr r2, _02319048 ; =0x00000CDF
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02319034:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02319040: .word 0x022C4794
_02319044: .word 0x00000CDE
_02319048: .word 0x00000CDF
	arm_func_end ov29_02318FAC

	arm_func_start ov29_0231904C
ov29_0231904C: ; 0x0231904C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02318E4C
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, #5
	beq _023190C4
	ldr r1, _023190E0 ; =0x022C4740
	mov r3, #5
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xd5]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xd6]
	bl ov29_022E3FC8
	ldr r2, _023190E4 ; =0x00000CE7
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023190D4
_023190C4:
	ldr r2, _023190E8 ; =0x00000CE8
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023190D4:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_023190E0: .word 0x022C4740
_023190E4: .word 0x00000CE7
_023190E8: .word 0x00000CE8
	arm_func_end ov29_0231904C

	arm_func_start ov29_023190EC
ov29_023190EC: ; 0x023190EC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02318E4C
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, #3
	beq _02319164
	ldr r1, _02319180 ; =0x022C4730
	mov r3, #3
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xd5]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xd6]
	bl ov29_022E4014
	ldr r2, _02319184 ; =0x00000CF4
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02319174
_02319164:
	ldr r2, _02319188 ; =0x00000CF5
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02319174:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02319180: .word 0x022C4730
_02319184: .word 0x00000CF4
_02319188: .word 0x00000CF5
	arm_func_end ov29_023190EC

	arm_func_start ov29_0231918C
ov29_0231918C: ; 0x0231918C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02318E4C
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, #1
	beq _02319204
	ldr r1, _02319220 ; =0x022C472C
	mov r3, #1
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xd5]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xd6]
	bl ov29_022E4068
	ldr r2, _02319224 ; =0x00000CF6
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02319214
_02319204:
	ldr r2, _02319228 ; =0x00000CF7
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02319214:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02319220: .word 0x022C472C
_02319224: .word 0x00000CF6
_02319228: .word 0x00000CF7
	arm_func_end ov29_0231918C

	arm_func_start ov29_0231922C
ov29_0231922C: ; 0x0231922C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02318E4C
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl ov29_022E40B8
	ldr r4, [r5, #0xb4]
	ldrb r0, [r4, #0xd5]
	cmp r0, #7
	beq _023192A4
	ldr r1, _023192D0 ; =0x022C47B8
	mov r3, #7
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xd5]
	bl CalcStatusDuration
	add r3, r0, #1
	mov r0, #0
	mov r1, r5
	mov r2, r0
	strb r3, [r4, #0xd6]
	bl SubstitutePlaceholderStringTags
	ldr r2, _023192D4 ; =0x00000D47
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023192C4
_023192A4:
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _023192D8 ; =0x00000D48
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023192C4:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_023192D0: .word 0x022C47B8
_023192D4: .word 0x00000D47
_023192D8: .word 0x00000D48
	arm_func_end ov29_0231922C

	arm_func_start ov29_023192DC
ov29_023192DC: ; 0x023192DC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02318E4C
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, #8
	beq _02319354
	ldr r1, _02319370 ; =0x022C47CC
	mov r3, #8
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xd5]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xd6]
	bl ov29_022E40BC
	ldr r2, _02319374 ; =0x00000D4F
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02319364
_02319354:
	mov r0, r6
	mov r1, r5
	mov r2, #0xd50
	bl LogMessageByIdWithPopupCheckUserTarget
_02319364:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02319370: .word 0x022C47CC
_02319374: .word 0x00000D4F
	arm_func_end ov29_023192DC

	arm_func_start ov29_02319378
ov29_02319378: ; 0x02319378
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02318E4C
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, #9
	beq _023193F0
	ldr r1, _0231940C ; =0x022C47F4
	mov r3, #9
	mov r0, r5
	mov r2, #0
	strb r3, [r4, #0xd5]
	bl CalcStatusDuration
	add r1, r0, #1
	mov r0, r5
	strb r1, [r4, #0xd6]
	bl ov29_022E4108
	ldr r2, _02319410 ; =0x00000D58
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02319400
_023193F0:
	ldr r2, _02319414 ; =0x00000D59
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_02319400:
	mov r0, r5
	bl UpdateStatusIconFlags
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0231940C: .word 0x022C47F4
_02319410: .word 0x00000D58
_02319414: .word 0x00000D59
	arm_func_end ov29_02319378

	arm_func_start ov29_02319418
ov29_02319418: ; 0x02319418
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid__02318E4C
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]


