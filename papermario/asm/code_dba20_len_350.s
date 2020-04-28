# %s disassembly and split file
# generated by n64split v%s - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.include "globals.inc"


.section .text80145320, "ax"

clear_saved_variables:
/* 0DBA20 80145320 2402003F */  addiu $v0, $zero, 0x3f
/* 0DBA24 80145324 3C04800E */  lui   $a0, 0x800e
/* 0DBA28 80145328 2484ACC0 */  addiu $a0, $a0, -0x5340
/* 0DBA2C 8014532C 248300FC */  addiu $v1, $a0, 0xfc
.L80145330:
/* 0DBA30 80145330 AC600FB0 */  sw    $zero, 0xfb0($v1)
/* 0DBA34 80145334 2442FFFF */  addiu $v0, $v0, -1
/* 0DBA38 80145338 0441FFFD */  bgez  $v0, .L80145330
/* 0DBA3C 8014533C 2463FFFC */   addiu $v1, $v1, -4
/* 0DBA40 80145340 240201FF */  addiu $v0, $zero, 0x1ff
/* 0DBA44 80145344 00821821 */  addu  $v1, $a0, $v0
.L80145348:
/* 0DBA48 80145348 A06010B0 */  sb    $zero, 0x10b0($v1)
/* 0DBA4C 8014534C 2442FFFF */  addiu $v0, $v0, -1
/* 0DBA50 80145350 0441FFFD */  bgez  $v0, .L80145348
/* 0DBA54 80145354 2463FFFF */   addiu $v1, $v1, -1
/* 0DBA58 80145358 24020007 */  addiu $v0, $zero, 7
/* 0DBA5C 8014535C 2483001C */  addiu $v1, $a0, 0x1c
.L80145360:
/* 0DBA60 80145360 AC6012B0 */  sw    $zero, 0x12b0($v1)
/* 0DBA64 80145364 2442FFFF */  addiu $v0, $v0, -1
/* 0DBA68 80145368 0441FFFD */  bgez  $v0, .L80145360
/* 0DBA6C 8014536C 2463FFFC */   addiu $v1, $v1, -4
/* 0DBA70 80145370 2402000F */  addiu $v0, $zero, 0xf
/* 0DBA74 80145374 00821821 */  addu  $v1, $a0, $v0
.L80145378:
/* 0DBA78 80145378 A06012D0 */  sb    $zero, 0x12d0($v1)
/* 0DBA7C 8014537C 2442FFFF */  addiu $v0, $v0, -1
/* 0DBA80 80145380 0441FFFD */  bgez  $v0, .L80145378
/* 0DBA84 80145384 2463FFFF */   addiu $v1, $v1, -1
/* 0DBA88 80145388 03E00008 */  jr    $ra
/* 0DBA8C 8014538C 00000000 */   nop   

clear_area_flags:
/* 0DBA90 80145390 3C028007 */  lui   $v0, 0x8007
/* 0DBA94 80145394 8C42419C */  lw    $v0, 0x419c($v0)
/* 0DBA98 80145398 8442008A */  lh    $v0, 0x8a($v0)
/* 0DBA9C 8014539C 3C04800E */  lui   $a0, 0x800e
/* 0DBAA0 801453A0 2484ACC0 */  addiu $a0, $a0, -0x5340
/* 0DBAA4 801453A4 1040000C */  beqz  $v0, .L801453D8
/* 0DBAA8 801453A8 24020007 */   addiu $v0, $zero, 7
/* 0DBAAC 801453AC 2483001C */  addiu $v1, $a0, 0x1c
.L801453B0:
/* 0DBAB0 801453B0 AC6012B0 */  sw    $zero, 0x12b0($v1)
/* 0DBAB4 801453B4 2442FFFF */  addiu $v0, $v0, -1
/* 0DBAB8 801453B8 0441FFFD */  bgez  $v0, .L801453B0
/* 0DBABC 801453BC 2463FFFC */   addiu $v1, $v1, -4
/* 0DBAC0 801453C0 2402000F */  addiu $v0, $zero, 0xf
/* 0DBAC4 801453C4 00821821 */  addu  $v1, $a0, $v0
.L801453C8:
/* 0DBAC8 801453C8 A06012D0 */  sb    $zero, 0x12d0($v1)
/* 0DBACC 801453CC 2442FFFF */  addiu $v0, $v0, -1
/* 0DBAD0 801453D0 0441FFFD */  bgez  $v0, .L801453C8
/* 0DBAD4 801453D4 2463FFFF */   addiu $v1, $v1, -1
.L801453D8:
/* 0DBAD8 801453D8 03E00008 */  jr    $ra
/* 0DBADC 801453DC 00000000 */   nop   

clear_global_flag:
/* 0DBAE0 801453E0 3C02F8D8 */  lui   $v0, 0xf8d8
/* 0DBAE4 801453E4 3442F200 */  ori   $v0, $v0, 0xf200
/* 0DBAE8 801453E8 0044102A */  slt   $v0, $v0, $a0
/* 0DBAEC 801453EC 14400003 */  bnez  $v0, .L801453FC
/* 0DBAF0 801453F0 3C0207BF */   lui   $v0, 0x7bf
/* 0DBAF4 801453F4 3442A480 */  ori   $v0, $v0, 0xa480
/* 0DBAF8 801453F8 00822021 */  addu  $a0, $a0, $v0
.L801453FC:
/* 0DBAFC 801453FC 04810002 */  bgez  $a0, .L80145408
/* 0DBB00 80145400 0080102D */   daddu $v0, $a0, $zero
/* 0DBB04 80145404 2482001F */  addiu $v0, $a0, 0x1f
.L80145408:
/* 0DBB08 80145408 00021143 */  sra   $v0, $v0, 5
/* 0DBB0C 8014540C 00021940 */  sll   $v1, $v0, 5
/* 0DBB10 80145410 00831823 */  subu  $v1, $a0, $v1
/* 0DBB14 80145414 3C04800E */  lui   $a0, 0x800e
/* 0DBB18 80145418 2484ACC0 */  addiu $a0, $a0, -0x5340
/* 0DBB1C 8014541C 00021080 */  sll   $v0, $v0, 2
/* 0DBB20 80145420 00442821 */  addu  $a1, $v0, $a0
/* 0DBB24 80145424 24020001 */  addiu $v0, $zero, 1
/* 0DBB28 80145428 8CA40FB0 */  lw    $a0, 0xfb0($a1)
/* 0DBB2C 8014542C 00621004 */  sllv  $v0, $v0, $v1
/* 0DBB30 80145430 00821824 */  and   $v1, $a0, $v0
/* 0DBB34 80145434 54600001 */  bnel  $v1, $zero, .L8014543C
/* 0DBB38 80145438 24030001 */   addiu $v1, $zero, 1
.L8014543C:
/* 0DBB3C 8014543C 00021027 */  nor   $v0, $zero, $v0
/* 0DBB40 80145440 00821024 */  and   $v0, $a0, $v0
/* 0DBB44 80145444 ACA20FB0 */  sw    $v0, 0xfb0($a1)
/* 0DBB48 80145448 03E00008 */  jr    $ra
/* 0DBB4C 8014544C 0060102D */   daddu $v0, $v1, $zero

set_global_flag:
/* 0DBB50 80145450 3C02F8D8 */  lui   $v0, 0xf8d8
/* 0DBB54 80145454 3442F200 */  ori   $v0, $v0, 0xf200
/* 0DBB58 80145458 0044102A */  slt   $v0, $v0, $a0
/* 0DBB5C 8014545C 14400003 */  bnez  $v0, .L8014546C
/* 0DBB60 80145460 3C0207BF */   lui   $v0, 0x7bf
/* 0DBB64 80145464 3442A480 */  ori   $v0, $v0, 0xa480
/* 0DBB68 80145468 00822021 */  addu  $a0, $a0, $v0
.L8014546C:
/* 0DBB6C 8014546C 04810002 */  bgez  $a0, .L80145478
/* 0DBB70 80145470 0080102D */   daddu $v0, $a0, $zero
/* 0DBB74 80145474 2482001F */  addiu $v0, $a0, 0x1f
.L80145478:
/* 0DBB78 80145478 00021143 */  sra   $v0, $v0, 5
/* 0DBB7C 8014547C 00021940 */  sll   $v1, $v0, 5
/* 0DBB80 80145480 00831823 */  subu  $v1, $a0, $v1
/* 0DBB84 80145484 3C04800E */  lui   $a0, 0x800e
/* 0DBB88 80145488 2484ACC0 */  addiu $a0, $a0, -0x5340
/* 0DBB8C 8014548C 00021080 */  sll   $v0, $v0, 2
/* 0DBB90 80145490 00442821 */  addu  $a1, $v0, $a0
/* 0DBB94 80145494 24020001 */  addiu $v0, $zero, 1
/* 0DBB98 80145498 8CA40FB0 */  lw    $a0, 0xfb0($a1)
/* 0DBB9C 8014549C 00621004 */  sllv  $v0, $v0, $v1
/* 0DBBA0 801454A0 00821824 */  and   $v1, $a0, $v0
/* 0DBBA4 801454A4 54600001 */  bnel  $v1, $zero, .L801454AC
/* 0DBBA8 801454A8 24030001 */   addiu $v1, $zero, 1
.L801454AC:
/* 0DBBAC 801454AC 00821025 */  or    $v0, $a0, $v0
/* 0DBBB0 801454B0 ACA20FB0 */  sw    $v0, 0xfb0($a1)
/* 0DBBB4 801454B4 03E00008 */  jr    $ra
/* 0DBBB8 801454B8 0060102D */   daddu $v0, $v1, $zero

get_global_flag:
/* 0DBBBC 801454BC 0080282D */  daddu $a1, $a0, $zero
/* 0DBBC0 801454C0 3C02F8D8 */  lui   $v0, 0xf8d8
/* 0DBBC4 801454C4 3442F200 */  ori   $v0, $v0, 0xf200
/* 0DBBC8 801454C8 0045102A */  slt   $v0, $v0, $a1
/* 0DBBCC 801454CC 14400003 */  bnez  $v0, .L801454DC
/* 0DBBD0 801454D0 3C0207BF */   lui   $v0, 0x7bf
/* 0DBBD4 801454D4 3442A480 */  ori   $v0, $v0, 0xa480
/* 0DBBD8 801454D8 00A22821 */  addu  $a1, $a1, $v0
.L801454DC:
/* 0DBBDC 801454DC 04A10002 */  bgez  $a1, .L801454E8
/* 0DBBE0 801454E0 00A0182D */   daddu $v1, $a1, $zero
/* 0DBBE4 801454E4 24A3001F */  addiu $v1, $a1, 0x1f
.L801454E8:
/* 0DBBE8 801454E8 00031943 */  sra   $v1, $v1, 5
/* 0DBBEC 801454EC 00032140 */  sll   $a0, $v1, 5
/* 0DBBF0 801454F0 00A42023 */  subu  $a0, $a1, $a0
/* 0DBBF4 801454F4 00031880 */  sll   $v1, $v1, 2
/* 0DBBF8 801454F8 24020001 */  addiu $v0, $zero, 1
/* 0DBBFC 801454FC 3C01800E */  lui   $at, 0x800e
/* 0DBC00 80145500 00230821 */  addu  $at, $at, $v1
/* 0DBC04 80145504 8C23BC70 */  lw    $v1, -0x4390($at)
/* 0DBC08 80145508 00821004 */  sllv  $v0, $v0, $a0
/* 0DBC0C 8014550C 00621024 */  and   $v0, $v1, $v0
/* 0DBC10 80145510 54400001 */  bnel  $v0, $zero, .L80145518
/* 0DBC14 80145514 24020001 */   addiu $v0, $zero, 1
.L80145518:
/* 0DBC18 80145518 03E00008 */  jr    $ra
/* 0DBC1C 8014551C 00000000 */   nop   

set_global_byte:
/* 0DBC20 80145520 3C02800E */  lui   $v0, 0x800e
/* 0DBC24 80145524 2442ACC0 */  addiu $v0, $v0, -0x5340
/* 0DBC28 80145528 00822021 */  addu  $a0, $a0, $v0
/* 0DBC2C 8014552C 808210B0 */  lb    $v0, 0x10b0($a0)
/* 0DBC30 80145530 03E00008 */  jr    $ra
/* 0DBC34 80145534 A08510B0 */   sb    $a1, 0x10b0($a0)

get_global_byte:
/* 0DBC38 80145538 3C02800E */  lui   $v0, 0x800e
/* 0DBC3C 8014553C 00441021 */  addu  $v0, $v0, $a0
/* 0DBC40 80145540 8042BD70 */  lb    $v0, -0x4290($v0)
/* 0DBC44 80145544 03E00008 */  jr    $ra
/* 0DBC48 80145548 00000000 */   nop   

clear_area_flag:
/* 0DBC4C 8014554C 04810002 */  bgez  $a0, .L80145558
/* 0DBC50 80145550 0080102D */   daddu $v0, $a0, $zero
/* 0DBC54 80145554 2482001F */  addiu $v0, $a0, 0x1f
.L80145558:
/* 0DBC58 80145558 00021143 */  sra   $v0, $v0, 5
/* 0DBC5C 8014555C 00021940 */  sll   $v1, $v0, 5
/* 0DBC60 80145560 00831823 */  subu  $v1, $a0, $v1
/* 0DBC64 80145564 3C04800E */  lui   $a0, 0x800e
/* 0DBC68 80145568 2484ACC0 */  addiu $a0, $a0, -0x5340
/* 0DBC6C 8014556C 00021080 */  sll   $v0, $v0, 2
/* 0DBC70 80145570 00442821 */  addu  $a1, $v0, $a0
/* 0DBC74 80145574 24020001 */  addiu $v0, $zero, 1
/* 0DBC78 80145578 8CA412B0 */  lw    $a0, 0x12b0($a1)
/* 0DBC7C 8014557C 00621004 */  sllv  $v0, $v0, $v1
/* 0DBC80 80145580 00821824 */  and   $v1, $a0, $v0
/* 0DBC84 80145584 54600001 */  bnel  $v1, $zero, .L8014558C
/* 0DBC88 80145588 24030001 */   addiu $v1, $zero, 1
.L8014558C:
/* 0DBC8C 8014558C 00021027 */  nor   $v0, $zero, $v0
/* 0DBC90 80145590 00821024 */  and   $v0, $a0, $v0
/* 0DBC94 80145594 ACA212B0 */  sw    $v0, 0x12b0($a1)
/* 0DBC98 80145598 03E00008 */  jr    $ra
/* 0DBC9C 8014559C 0060102D */   daddu $v0, $v1, $zero

set_area_flag:
/* 0DBCA0 801455A0 04810002 */  bgez  $a0, .L801455AC
/* 0DBCA4 801455A4 0080102D */   daddu $v0, $a0, $zero
/* 0DBCA8 801455A8 2482001F */  addiu $v0, $a0, 0x1f
.L801455AC:
/* 0DBCAC 801455AC 00021143 */  sra   $v0, $v0, 5
/* 0DBCB0 801455B0 00021940 */  sll   $v1, $v0, 5
/* 0DBCB4 801455B4 00831823 */  subu  $v1, $a0, $v1
/* 0DBCB8 801455B8 3C04800E */  lui   $a0, 0x800e
/* 0DBCBC 801455BC 2484ACC0 */  addiu $a0, $a0, -0x5340
/* 0DBCC0 801455C0 00021080 */  sll   $v0, $v0, 2
/* 0DBCC4 801455C4 00442821 */  addu  $a1, $v0, $a0
/* 0DBCC8 801455C8 24020001 */  addiu $v0, $zero, 1
/* 0DBCCC 801455CC 8CA412B0 */  lw    $a0, 0x12b0($a1)
/* 0DBCD0 801455D0 00621004 */  sllv  $v0, $v0, $v1
/* 0DBCD4 801455D4 00821824 */  and   $v1, $a0, $v0
/* 0DBCD8 801455D8 54600001 */  bnel  $v1, $zero, .L801455E0
/* 0DBCDC 801455DC 24030001 */   addiu $v1, $zero, 1
.L801455E0:
/* 0DBCE0 801455E0 00821025 */  or    $v0, $a0, $v0
/* 0DBCE4 801455E4 ACA212B0 */  sw    $v0, 0x12b0($a1)
/* 0DBCE8 801455E8 03E00008 */  jr    $ra
/* 0DBCEC 801455EC 0060102D */   daddu $v0, $v1, $zero

get_area_flag:
/* 0DBCF0 801455F0 0080102D */  daddu $v0, $a0, $zero
/* 0DBCF4 801455F4 04410002 */  bgez  $v0, .L80145600
/* 0DBCF8 801455F8 0040182D */   daddu $v1, $v0, $zero
/* 0DBCFC 801455FC 2443001F */  addiu $v1, $v0, 0x1f
.L80145600:
/* 0DBD00 80145600 00031943 */  sra   $v1, $v1, 5
/* 0DBD04 80145604 00032140 */  sll   $a0, $v1, 5
/* 0DBD08 80145608 00442023 */  subu  $a0, $v0, $a0
/* 0DBD0C 8014560C 00031880 */  sll   $v1, $v1, 2
/* 0DBD10 80145610 24020001 */  addiu $v0, $zero, 1
/* 0DBD14 80145614 3C01800E */  lui   $at, 0x800e
/* 0DBD18 80145618 00230821 */  addu  $at, $at, $v1
/* 0DBD1C 8014561C 8C23BF70 */  lw    $v1, -0x4090($at)
/* 0DBD20 80145620 00821004 */  sllv  $v0, $v0, $a0
/* 0DBD24 80145624 00621024 */  and   $v0, $v1, $v0
/* 0DBD28 80145628 54400001 */  bnel  $v0, $zero, .L80145630
/* 0DBD2C 8014562C 24020001 */   addiu $v0, $zero, 1
.L80145630:
/* 0DBD30 80145630 03E00008 */  jr    $ra
/* 0DBD34 80145634 00000000 */   nop   

set_area_byte:
/* 0DBD38 80145638 3C02800E */  lui   $v0, 0x800e
/* 0DBD3C 8014563C 2442ACC0 */  addiu $v0, $v0, -0x5340
/* 0DBD40 80145640 00822021 */  addu  $a0, $a0, $v0
/* 0DBD44 80145644 808212D0 */  lb    $v0, 0x12d0($a0)
/* 0DBD48 80145648 03E00008 */  jr    $ra
/* 0DBD4C 8014564C A08512D0 */   sb    $a1, 0x12d0($a0)

get_area_byte:
/* 0DBD50 80145650 3C02800E */  lui   $v0, 0x800e
/* 0DBD54 80145654 00441021 */  addu  $v0, $v0, $a0
/* 0DBD58 80145658 8042BF90 */  lb    $v0, -0x4070($v0)
/* 0DBD5C 8014565C 03E00008 */  jr    $ra
/* 0DBD60 80145660 00000000 */   nop   

/* 0DBD64 80145664 00000000 */  nop   
/* 0DBD68 80145668 00000000 */  nop   
/* 0DBD6C 8014566C 00000000 */  nop   
