# %s disassembly and split file
# generated by n64split v%s - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.include "globals.inc"


.section .text80200080, "ax"

func_80200080:
/* 316A70 80200080 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 316A74 80200084 3C0B3C01 */  lui   $t3, 0x3c01
/* 316A78 80200088 356BA775 */  ori   $t3, $t3, 0xa775
/* 316A7C 8020008C 3C04B001 */  lui   $a0, 0xb001
/* 316A80 80200090 34848FFC */  ori   $a0, $a0, 0x8ffc
/* 316A84 80200094 3C0A8002 */  lui   $t2, 0x8002
/* 316A88 80200098 254A6AC7 */  addiu $t2, $t2, 0x6ac7
/* 316A8C 8020009C 3C02A460 */  lui   $v0, 0xa460
/* 316A90 802000A0 34420010 */  ori   $v0, $v0, 0x10
/* 316A94 802000A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 316A98 802000A8 AFB00010 */  sw    $s0, 0x10($sp)
/* 316A9C 802000AC 8C420000 */  lw    $v0, ($v0)
/* 316AA0 802000B0 30420003 */  andi  $v0, $v0, 3
/* 316AA4 802000B4 10400007 */  beqz  $v0, .L802000D4
/* 316AA8 802000B8 0000282D */   daddu $a1, $zero, $zero
/* 316AAC 802000BC 3C03A460 */  lui   $v1, 0xa460
/* 316AB0 802000C0 34630010 */  ori   $v1, $v1, 0x10
.L802000C4:
/* 316AB4 802000C4 8C620000 */  lw    $v0, ($v1)
/* 316AB8 802000C8 30420003 */  andi  $v0, $v0, 3
/* 316ABC 802000CC 1440FFFD */  bnez  $v0, .L802000C4
/* 316AC0 802000D0 00000000 */   nop   
.L802000D4:
/* 316AC4 802000D4 3C02FFFE */  lui   $v0, 0xfffe
/* 316AC8 802000D8 34427508 */  ori   $v0, $v0, 0x7508
/* 316ACC 802000DC 0000482D */  daddu $t1, $zero, $zero
/* 316AD0 802000E0 00821021 */  addu  $v0, $a0, $v0
/* 316AD4 802000E4 3C03A000 */  lui   $v1, 0xa000
/* 316AD8 802000E8 00431025 */  or    $v0, $v0, $v1
/* 316ADC 802000EC 8C420000 */  lw    $v0, ($v0)
/* 316AE0 802000F0 3C080031 */  lui   $t0, 0x31
/* 316AE4 802000F4 250869F0 */  addiu $t0, $t0, 0x69f0
/* 316AE8 802000F8 3C030031 */  lui   $v1, 0x31
/* 316AEC 802000FC 24636A70 */  addiu $v1, $v1, 0x6a70
/* 316AF0 80200100 01625823 */  subu  $t3, $t3, $v0
/* 316AF4 80200104 0103102B */  sltu  $v0, $t0, $v1
/* 316AF8 80200108 10400034 */  beqz  $v0, .L802001DC
/* 316AFC 8020010C 3C0CA460 */   lui   $t4, 0xa460
/* 316B00 80200110 358C0010 */  ori   $t4, $t4, 0x10
/* 316B04 80200114 3C101000 */  lui   $s0, 0x1000
/* 316B08 80200118 3C19A000 */  lui   $t9, 0xa000
/* 316B0C 8020011C 2418000F */  addiu $t8, $zero, 0xf
/* 316B10 80200120 240F0009 */  addiu $t7, $zero, 9
/* 316B14 80200124 240E0003 */  addiu $t6, $zero, 3
/* 316B18 80200128 0060682D */  daddu $t5, $v1, $zero
.L8020012C:
/* 316B1C 8020012C 8D820000 */  lw    $v0, ($t4)
/* 316B20 80200130 30420003 */  andi  $v0, $v0, 3
/* 316B24 80200134 10400007 */  beqz  $v0, .L80200154
/* 316B28 80200138 01101021 */   addu  $v0, $t0, $s0
/* 316B2C 8020013C 3C03A460 */  lui   $v1, 0xa460
/* 316B30 80200140 34630010 */  ori   $v1, $v1, 0x10
.L80200144:
/* 316B34 80200144 8C620000 */  lw    $v0, ($v1)
/* 316B38 80200148 30420003 */  andi  $v0, $v0, 3
/* 316B3C 8020014C 1440FFFD */  bnez  $v0, .L80200144
/* 316B40 80200150 01101021 */   addu  $v0, $t0, $s0
.L80200154:
/* 316B44 80200154 00591025 */  or    $v0, $v0, $t9
/* 316B48 80200158 8C440000 */  lw    $a0, ($v0)
/* 316B4C 8020015C 3087FFFF */  andi  $a3, $a0, 0xffff
/* 316B50 80200160 00043402 */  srl   $a2, $a0, 0x10
/* 316B54 80200164 00E61021 */  addu  $v0, $a3, $a2
/* 316B58 80200168 00A22821 */  addu  $a1, $a1, $v0
/* 316B5C 8020016C 00091682 */  srl   $v0, $t1, 0x1a
/* 316B60 80200170 14580010 */  bne   $v0, $t8, .L802001B4
/* 316B64 80200174 00041682 */   srl   $v0, $a0, 0x1a
/* 316B68 80200178 144F000E */  bne   $v0, $t7, .L802001B4
/* 316B6C 8020017C 00000000 */   nop   
/* 316B70 80200180 00041542 */  srl   $v0, $a0, 0x15
/* 316B74 80200184 3043001F */  andi  $v1, $v0, 0x1f
/* 316B78 80200188 00091402 */  srl   $v0, $t1, 0x10
/* 316B7C 8020018C 3042001F */  andi  $v0, $v0, 0x1f
/* 316B80 80200190 14620008 */  bne   $v1, $v0, .L802001B4
/* 316B84 80200194 00041682 */   srl   $v0, $a0, 0x1a
/* 316B88 80200198 30C2001F */  andi  $v0, $a2, 0x1f
/* 316B8C 8020019C 14620005 */  bne   $v1, $v0, .L802001B4
/* 316B90 802001A0 00041682 */   srl   $v0, $a0, 0x1a
/* 316B94 802001A4 00A72823 */  subu  $a1, $a1, $a3
/* 316B98 802001A8 3122FFFF */  andi  $v0, $t1, 0xffff
/* 316B9C 802001AC 00A22823 */  subu  $a1, $a1, $v0
/* 316BA0 802001B0 00041682 */  srl   $v0, $a0, 0x1a
.L802001B4:
/* 316BA4 802001B4 144E0006 */  bne   $v0, $t6, .L802001D0
/* 316BA8 802001B8 25080004 */   addiu $t0, $t0, 4
/* 316BAC 802001BC 3083FFFF */  andi  $v1, $a0, 0xffff
/* 316BB0 802001C0 00041402 */  srl   $v0, $a0, 0x10
/* 316BB4 802001C4 3042FC00 */  andi  $v0, $v0, 0xfc00
/* 316BB8 802001C8 00621821 */  addu  $v1, $v1, $v0
/* 316BBC 802001CC 00A32823 */  subu  $a1, $a1, $v1
.L802001D0:
/* 316BC0 802001D0 010D102B */  sltu  $v0, $t0, $t5
/* 316BC4 802001D4 1440FFD5 */  bnez  $v0, .L8020012C
/* 316BC8 802001D8 0080482D */   daddu $t1, $a0, $zero
.L802001DC:
/* 316BCC 802001DC 3C02FFF2 */  lui   $v0, 0xfff2
/* 316BD0 802001E0 344222E0 */  ori   $v0, $v0, 0x22e0
/* 316BD4 802001E4 00A21021 */  addu  $v0, $a1, $v0
/* 316BD8 802001E8 01621023 */  subu  $v0, $t3, $v0
/* 316BDC 802001EC 01425021 */  addu  $t2, $t2, $v0
/* 316BE0 802001F0 0140F809 */  jalr  $t2
/* 316BE4 802001F4 00000000 */  nop   
/* 316BE8 802001F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 316BEC 802001FC 8FB00010 */  lw    $s0, 0x10($sp)
/* 316BF0 80200200 03E00008 */  jr    $ra
/* 316BF4 80200204 27BD0018 */   addiu $sp, $sp, 0x18

/* 316BF8 80200208 00000000 */  nop   
/* 316BFC 8020020C 00000000 */  nop   
