# %s disassembly and split file
# generated by n64split v%s - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.include "globals.inc"


.section .text8006D800, "ax"

func_8006D800:
/* 048C00 8006D800 04810008 */  bgez  $a0, .L8006D824
/* 048C04 8006D804 0000C02D */   daddu $t8, $zero, $zero
/* 048C08 8006D808 2418FFFF */  addiu $t8, $zero, -1
/* 048C0C 8006D80C 00054823 */  negu  $t1, $a1
/* 048C10 8006D810 00041823 */  negu  $v1, $a0
/* 048C14 8006D814 0009102B */  sltu  $v0, $zero, $t1
/* 048C18 8006D818 00624023 */  subu  $t0, $v1, $v0
/* 048C1C 8006D81C 0100202D */  daddu $a0, $t0, $zero
/* 048C20 8006D820 0120282D */  daddu $a1, $t1, $zero
.L8006D824:
/* 048C24 8006D824 04C10009 */  bgez  $a2, .L8006D84C
/* 048C28 8006D828 00E0482D */   daddu $t1, $a3, $zero
/* 048C2C 8006D82C 0018C027 */  nor   $t8, $zero, $t8
/* 048C30 8006D830 00075823 */  negu  $t3, $a3
/* 048C34 8006D834 00061823 */  negu  $v1, $a2
/* 048C38 8006D838 000B102B */  sltu  $v0, $zero, $t3
/* 048C3C 8006D83C 00625023 */  subu  $t2, $v1, $v0
/* 048C40 8006D840 0140302D */  daddu $a2, $t2, $zero
/* 048C44 8006D844 0160382D */  daddu $a3, $t3, $zero
/* 048C48 8006D848 00E0482D */  daddu $t1, $a3, $zero
.L8006D84C:
/* 048C4C 8006D84C 00C0402D */  daddu $t0, $a2, $zero
/* 048C50 8006D850 150000DF */  bnez  $t0, .L8006DBD0
/* 048C54 8006D854 00A0582D */   daddu $t3, $a1, $zero
/* 048C58 8006D858 0089102B */  sltu  $v0, $a0, $t1
/* 048C5C 8006D85C 1040004E */  beqz  $v0, .L8006D998
/* 048C60 8006D860 3402FFFF */   ori   $v0, $zero, 0xffff
/* 048C64 8006D864 0049102B */  sltu  $v0, $v0, $t1
/* 048C68 8006D868 14400005 */  bnez  $v0, .L8006D880
/* 048C6C 8006D86C 00E0182D */   daddu $v1, $a3, $zero
/* 048C70 8006D870 2D220100 */  sltiu $v0, $t1, 0x100
/* 048C74 8006D874 38420001 */  xori  $v0, $v0, 1
/* 048C78 8006D878 0801B626 */  j     func_8006D898
/* 048C7C 8006D87C 000240C0 */   sll   $t0, $v0, 3

.L8006D880:
/* 048C80 8006D880 3C0200FF */  lui   $v0, 0xff
/* 048C84 8006D884 3442FFFF */  ori   $v0, $v0, 0xffff
/* 048C88 8006D888 0049102B */  sltu  $v0, $v0, $t1
/* 048C8C 8006D88C 14400002 */  bnez  $v0, .L8006D898
/* 048C90 8006D890 24080018 */   addiu $t0, $zero, 0x18
/* 048C94 8006D894 24080010 */  addiu $t0, $zero, 0x10
func_8006D898:
.L8006D898:
/* 048C98 8006D898 01031006 */  srlv  $v0, $v1, $t0
/* 048C9C 8006D89C 3C01800A */  lui   $at, 0x800a
/* 048CA0 8006D8A0 00220821 */  addu  $at, $at, $v0
/* 048CA4 8006D8A4 90229E40 */  lbu   $v0, -0x61c0($at)
/* 048CA8 8006D8A8 24050020 */  addiu $a1, $zero, 0x20
/* 048CAC 8006D8AC 00481021 */  addu  $v0, $v0, $t0
/* 048CB0 8006D8B0 00A23023 */  subu  $a2, $a1, $v0
/* 048CB4 8006D8B4 10C00006 */  beqz  $a2, .L8006D8D0
/* 048CB8 8006D8B8 00C41804 */   sllv  $v1, $a0, $a2
/* 048CBC 8006D8BC 00C94804 */  sllv  $t1, $t1, $a2
/* 048CC0 8006D8C0 00A61023 */  subu  $v0, $a1, $a2
/* 048CC4 8006D8C4 004B1006 */  srlv  $v0, $t3, $v0
/* 048CC8 8006D8C8 00622025 */  or    $a0, $v1, $v0
/* 048CCC 8006D8CC 00CB5804 */  sllv  $t3, $t3, $a2
.L8006D8D0:
/* 048CD0 8006D8D0 00093402 */  srl   $a2, $t1, 0x10
/* 048CD4 8006D8D4 14C00002 */  bnez  $a2, .L8006D8E0
/* 048CD8 8006D8D8 0086001B */   divu  $zero, $a0, $a2
/* 048CDC 8006D8DC 0007000D */  break 7
.L8006D8E0:
/* 048CE0 8006D8E0 00003812 */  mflo  $a3
/* 048CE4 8006D8E4 00001810 */  mfhi  $v1
/* 048CE8 8006D8E8 3128FFFF */  andi  $t0, $t1, 0xffff
/* 048CEC 8006D8EC 00000000 */  nop   
/* 048CF0 8006D8F0 00E80018 */  mult  $a3, $t0
/* 048CF4 8006D8F4 000B1402 */  srl   $v0, $t3, 0x10
/* 048CF8 8006D8F8 00031C00 */  sll   $v1, $v1, 0x10
/* 048CFC 8006D8FC 00621825 */  or    $v1, $v1, $v0
/* 048D00 8006D900 00002812 */  mflo  $a1
/* 048D04 8006D904 0065102B */  sltu  $v0, $v1, $a1
/* 048D08 8006D908 5040000B */  beql  $v0, $zero, .L8006D938
/* 048D0C 8006D90C 00651823 */   subu  $v1, $v1, $a1
/* 048D10 8006D910 00691821 */  addu  $v1, $v1, $t1
/* 048D14 8006D914 0069102B */  sltu  $v0, $v1, $t1
/* 048D18 8006D918 14400006 */  bnez  $v0, .L8006D934
/* 048D1C 8006D91C 24E7FFFF */   addiu $a3, $a3, -1
/* 048D20 8006D920 0065102B */  sltu  $v0, $v1, $a1
/* 048D24 8006D924 50400004 */  beql  $v0, $zero, .L8006D938
/* 048D28 8006D928 00651823 */   subu  $v1, $v1, $a1
/* 048D2C 8006D92C 24E7FFFF */  addiu $a3, $a3, -1
/* 048D30 8006D930 00691821 */  addu  $v1, $v1, $t1
.L8006D934:
/* 048D34 8006D934 00651823 */  subu  $v1, $v1, $a1
.L8006D938:
/* 048D38 8006D938 14C00002 */  bnez  $a2, .L8006D944
/* 048D3C 8006D93C 0066001B */   divu  $zero, $v1, $a2
/* 048D40 8006D940 0007000D */  break 7
.L8006D944:
/* 048D44 8006D944 00002012 */  mflo  $a0
/* 048D48 8006D948 00001810 */  mfhi  $v1
/* 048D4C 8006D94C 00000000 */  nop   
/* 048D50 8006D950 00000000 */  nop   
/* 048D54 8006D954 00880018 */  mult  $a0, $t0
/* 048D58 8006D958 3162FFFF */  andi  $v0, $t3, 0xffff
/* 048D5C 8006D95C 00031C00 */  sll   $v1, $v1, 0x10
/* 048D60 8006D960 00621825 */  or    $v1, $v1, $v0
/* 048D64 8006D964 00002812 */  mflo  $a1
/* 048D68 8006D968 0065102B */  sltu  $v0, $v1, $a1
/* 048D6C 8006D96C 10400007 */  beqz  $v0, .L8006D98C
/* 048D70 8006D970 00691821 */   addu  $v1, $v1, $t1
/* 048D74 8006D974 0069102B */  sltu  $v0, $v1, $t1
/* 048D78 8006D978 14400004 */  bnez  $v0, .L8006D98C
/* 048D7C 8006D97C 2484FFFF */   addiu $a0, $a0, -1
/* 048D80 8006D980 0065102B */  sltu  $v0, $v1, $a1
/* 048D84 8006D984 54400001 */  bnel  $v0, $zero, .L8006D98C
/* 048D88 8006D988 2484FFFF */   addiu $a0, $a0, -1
.L8006D98C:
/* 048D8C 8006D98C 00071400 */  sll   $v0, $a3, 0x10
/* 048D90 8006D990 0801B761 */  j     func_8006DD84
/* 048D94 8006D994 00443025 */   or    $a2, $v0, $a0

.L8006D998:
/* 048D98 8006D998 15200008 */  bnez  $t1, .L8006D9BC
/* 048D9C 8006D99C 0049102B */   sltu  $v0, $v0, $t1
/* 048DA0 8006D9A0 24020001 */  addiu $v0, $zero, 1
/* 048DA4 8006D9A4 15000002 */  bnez  $t0, .L8006D9B0
/* 048DA8 8006D9A8 0048001B */   divu  $zero, $v0, $t0
/* 048DAC 8006D9AC 0007000D */  break 7
.L8006D9B0:
/* 048DB0 8006D9B0 00004812 */  mflo  $t1
/* 048DB4 8006D9B4 3402FFFF */  ori   $v0, $zero, 0xffff
/* 048DB8 8006D9B8 0049102B */  sltu  $v0, $v0, $t1
.L8006D9BC:
/* 048DBC 8006D9BC 14400005 */  bnez  $v0, .L8006D9D4
/* 048DC0 8006D9C0 0120282D */   daddu $a1, $t1, $zero
/* 048DC4 8006D9C4 2D220100 */  sltiu $v0, $t1, 0x100
/* 048DC8 8006D9C8 38420001 */  xori  $v0, $v0, 1
/* 048DCC 8006D9CC 0801B67B */  j     func_8006D9EC
/* 048DD0 8006D9D0 000218C0 */   sll   $v1, $v0, 3

.L8006D9D4:
/* 048DD4 8006D9D4 3C0200FF */  lui   $v0, 0xff
/* 048DD8 8006D9D8 3442FFFF */  ori   $v0, $v0, 0xffff
/* 048DDC 8006D9DC 0049102B */  sltu  $v0, $v0, $t1
/* 048DE0 8006D9E0 14400002 */  bnez  $v0, .L8006D9EC
/* 048DE4 8006D9E4 24030018 */   addiu $v1, $zero, 0x18
/* 048DE8 8006D9E8 24030010 */  addiu $v1, $zero, 0x10
func_8006D9EC:
.L8006D9EC:
/* 048DEC 8006D9EC 00651006 */  srlv  $v0, $a1, $v1
/* 048DF0 8006D9F0 3C01800A */  lui   $at, 0x800a
/* 048DF4 8006D9F4 00220821 */  addu  $at, $at, $v0
/* 048DF8 8006D9F8 90229E40 */  lbu   $v0, -0x61c0($at)
/* 048DFC 8006D9FC 00431021 */  addu  $v0, $v0, $v1
/* 048E00 8006DA00 24030020 */  addiu $v1, $zero, 0x20
/* 048E04 8006DA04 00623023 */  subu  $a2, $v1, $v0
/* 048E08 8006DA08 14C00004 */  bnez  $a2, .L8006DA1C
/* 048E0C 8006DA0C 00662823 */   subu  $a1, $v1, $a2
/* 048E10 8006DA10 00892023 */  subu  $a0, $a0, $t1
/* 048E14 8006DA14 0801B6C2 */  j     func_8006DB08
/* 048E18 8006DA18 240A0001 */   addiu $t2, $zero, 1

.L8006DA1C:
/* 048E1C 8006DA1C 00C94804 */  sllv  $t1, $t1, $a2
/* 048E20 8006DA20 00A43806 */  srlv  $a3, $a0, $a1
/* 048E24 8006DA24 00C41804 */  sllv  $v1, $a0, $a2
/* 048E28 8006DA28 00AB1006 */  srlv  $v0, $t3, $a1
/* 048E2C 8006DA2C 00622025 */  or    $a0, $v1, $v0
/* 048E30 8006DA30 00CB5804 */  sllv  $t3, $t3, $a2
/* 048E34 8006DA34 00093402 */  srl   $a2, $t1, 0x10
/* 048E38 8006DA38 14C00002 */  bnez  $a2, .L8006DA44
/* 048E3C 8006DA3C 00E6001B */   divu  $zero, $a3, $a2
/* 048E40 8006DA40 0007000D */  break 7
.L8006DA44:
/* 048E44 8006DA44 00004012 */  mflo  $t0
/* 048E48 8006DA48 00001810 */  mfhi  $v1
/* 048E4C 8006DA4C 3125FFFF */  andi  $a1, $t1, 0xffff
/* 048E50 8006DA50 00000000 */  nop   
/* 048E54 8006DA54 01050018 */  mult  $t0, $a1
/* 048E58 8006DA58 00041402 */  srl   $v0, $a0, 0x10
/* 048E5C 8006DA5C 00031C00 */  sll   $v1, $v1, 0x10
/* 048E60 8006DA60 00621825 */  or    $v1, $v1, $v0
/* 048E64 8006DA64 00003812 */  mflo  $a3
/* 048E68 8006DA68 0067102B */  sltu  $v0, $v1, $a3
/* 048E6C 8006DA6C 5040000B */  beql  $v0, $zero, .L8006DA9C
/* 048E70 8006DA70 00671823 */   subu  $v1, $v1, $a3
/* 048E74 8006DA74 00691821 */  addu  $v1, $v1, $t1
/* 048E78 8006DA78 0069102B */  sltu  $v0, $v1, $t1
/* 048E7C 8006DA7C 14400006 */  bnez  $v0, .L8006DA98
/* 048E80 8006DA80 2508FFFF */   addiu $t0, $t0, -1
/* 048E84 8006DA84 0067102B */  sltu  $v0, $v1, $a3
/* 048E88 8006DA88 50400004 */  beql  $v0, $zero, .L8006DA9C
/* 048E8C 8006DA8C 00671823 */   subu  $v1, $v1, $a3
/* 048E90 8006DA90 2508FFFF */  addiu $t0, $t0, -1
/* 048E94 8006DA94 00691821 */  addu  $v1, $v1, $t1
.L8006DA98:
/* 048E98 8006DA98 00671823 */  subu  $v1, $v1, $a3
.L8006DA9C:
/* 048E9C 8006DA9C 14C00002 */  bnez  $a2, .L8006DAA8
/* 048EA0 8006DAA0 0066001B */   divu  $zero, $v1, $a2
/* 048EA4 8006DAA4 0007000D */  break 7
.L8006DAA8:
/* 048EA8 8006DAA8 00003012 */  mflo  $a2
/* 048EAC 8006DAAC 00001810 */  mfhi  $v1
/* 048EB0 8006DAB0 00000000 */  nop   
/* 048EB4 8006DAB4 00000000 */  nop   
/* 048EB8 8006DAB8 00C50018 */  mult  $a2, $a1
/* 048EBC 8006DABC 3082FFFF */  andi  $v0, $a0, 0xffff
/* 048EC0 8006DAC0 00031C00 */  sll   $v1, $v1, 0x10
/* 048EC4 8006DAC4 00621825 */  or    $v1, $v1, $v0
/* 048EC8 8006DAC8 00003812 */  mflo  $a3
/* 048ECC 8006DACC 0067102B */  sltu  $v0, $v1, $a3
/* 048ED0 8006DAD0 1040000B */  beqz  $v0, .L8006DB00
/* 048ED4 8006DAD4 00081400 */   sll   $v0, $t0, 0x10
/* 048ED8 8006DAD8 00691821 */  addu  $v1, $v1, $t1
/* 048EDC 8006DADC 0069102B */  sltu  $v0, $v1, $t1
/* 048EE0 8006DAE0 14400006 */  bnez  $v0, .L8006DAFC
/* 048EE4 8006DAE4 24C6FFFF */   addiu $a2, $a2, -1
/* 048EE8 8006DAE8 0067102B */  sltu  $v0, $v1, $a3
/* 048EEC 8006DAEC 10400004 */  beqz  $v0, .L8006DB00
/* 048EF0 8006DAF0 00081400 */   sll   $v0, $t0, 0x10
/* 048EF4 8006DAF4 24C6FFFF */  addiu $a2, $a2, -1
/* 048EF8 8006DAF8 00691821 */  addu  $v1, $v1, $t1
.L8006DAFC:
/* 048EFC 8006DAFC 00081400 */  sll   $v0, $t0, 0x10
.L8006DB00:
/* 048F00 8006DB00 00465025 */  or    $t2, $v0, $a2
/* 048F04 8006DB04 00672023 */  subu  $a0, $v1, $a3
func_8006DB08:
/* 048F08 8006DB08 00093402 */  srl   $a2, $t1, 0x10
/* 048F0C 8006DB0C 14C00002 */  bnez  $a2, .L8006DB18
/* 048F10 8006DB10 0086001B */   divu  $zero, $a0, $a2
/* 048F14 8006DB14 0007000D */  break 7
.L8006DB18:
/* 048F18 8006DB18 00003812 */  mflo  $a3
/* 048F1C 8006DB1C 00001810 */  mfhi  $v1
/* 048F20 8006DB20 3128FFFF */  andi  $t0, $t1, 0xffff
/* 048F24 8006DB24 00000000 */  nop   
/* 048F28 8006DB28 00E80018 */  mult  $a3, $t0
/* 048F2C 8006DB2C 000B1402 */  srl   $v0, $t3, 0x10
/* 048F30 8006DB30 00031C00 */  sll   $v1, $v1, 0x10
/* 048F34 8006DB34 00621825 */  or    $v1, $v1, $v0
/* 048F38 8006DB38 00002812 */  mflo  $a1
/* 048F3C 8006DB3C 0065102B */  sltu  $v0, $v1, $a1
/* 048F40 8006DB40 5040000B */  beql  $v0, $zero, .L8006DB70
/* 048F44 8006DB44 00651823 */   subu  $v1, $v1, $a1
/* 048F48 8006DB48 00691821 */  addu  $v1, $v1, $t1
/* 048F4C 8006DB4C 0069102B */  sltu  $v0, $v1, $t1
/* 048F50 8006DB50 14400006 */  bnez  $v0, .L8006DB6C
/* 048F54 8006DB54 24E7FFFF */   addiu $a3, $a3, -1
/* 048F58 8006DB58 0065102B */  sltu  $v0, $v1, $a1
/* 048F5C 8006DB5C 50400004 */  beql  $v0, $zero, .L8006DB70
/* 048F60 8006DB60 00651823 */   subu  $v1, $v1, $a1
/* 048F64 8006DB64 24E7FFFF */  addiu $a3, $a3, -1
/* 048F68 8006DB68 00691821 */  addu  $v1, $v1, $t1
.L8006DB6C:
/* 048F6C 8006DB6C 00651823 */  subu  $v1, $v1, $a1
.L8006DB70:
/* 048F70 8006DB70 14C00002 */  bnez  $a2, .L8006DB7C
/* 048F74 8006DB74 0066001B */   divu  $zero, $v1, $a2
/* 048F78 8006DB78 0007000D */  break 7
.L8006DB7C:
/* 048F7C 8006DB7C 00002012 */  mflo  $a0
/* 048F80 8006DB80 00001810 */  mfhi  $v1
/* 048F84 8006DB84 00000000 */  nop   
/* 048F88 8006DB88 00000000 */  nop   
/* 048F8C 8006DB8C 00880018 */  mult  $a0, $t0
/* 048F90 8006DB90 3162FFFF */  andi  $v0, $t3, 0xffff
/* 048F94 8006DB94 00031C00 */  sll   $v1, $v1, 0x10
/* 048F98 8006DB98 00621825 */  or    $v1, $v1, $v0
/* 048F9C 8006DB9C 00002812 */  mflo  $a1
/* 048FA0 8006DBA0 0065102B */  sltu  $v0, $v1, $a1
/* 048FA4 8006DBA4 10400007 */  beqz  $v0, .L8006DBC4
/* 048FA8 8006DBA8 00691821 */   addu  $v1, $v1, $t1
/* 048FAC 8006DBAC 0069102B */  sltu  $v0, $v1, $t1
/* 048FB0 8006DBB0 14400004 */  bnez  $v0, .L8006DBC4
/* 048FB4 8006DBB4 2484FFFF */   addiu $a0, $a0, -1
/* 048FB8 8006DBB8 0065102B */  sltu  $v0, $v1, $a1
/* 048FBC 8006DBBC 54400001 */  bnel  $v0, $zero, .L8006DBC4
/* 048FC0 8006DBC0 2484FFFF */   addiu $a0, $a0, -1
.L8006DBC4:
/* 048FC4 8006DBC4 00071400 */  sll   $v0, $a3, 0x10
/* 048FC8 8006DBC8 0801B762 */  j     func_8006DD88
/* 048FCC 8006DBCC 00443025 */   or    $a2, $v0, $a0

.L8006DBD0:
/* 048FD0 8006DBD0 0088102B */  sltu  $v0, $a0, $t0
/* 048FD4 8006DBD4 10400003 */  beqz  $v0, .L8006DBE4
/* 048FD8 8006DBD8 3402FFFF */   ori   $v0, $zero, 0xffff
/* 048FDC 8006DBDC 0801B761 */  j     func_8006DD84
/* 048FE0 8006DBE0 0000302D */   daddu $a2, $zero, $zero

.L8006DBE4:
/* 048FE4 8006DBE4 0048102B */  sltu  $v0, $v0, $t0
/* 048FE8 8006DBE8 14400005 */  bnez  $v0, .L8006DC00
/* 048FEC 8006DBEC 0100282D */   daddu $a1, $t0, $zero
/* 048FF0 8006DBF0 2D020100 */  sltiu $v0, $t0, 0x100
/* 048FF4 8006DBF4 38420001 */  xori  $v0, $v0, 1
/* 048FF8 8006DBF8 0801B706 */  j     func_8006DC18
/* 048FFC 8006DBFC 000218C0 */   sll   $v1, $v0, 3

.L8006DC00:
/* 049000 8006DC00 3C0200FF */  lui   $v0, 0xff
/* 049004 8006DC04 3442FFFF */  ori   $v0, $v0, 0xffff
/* 049008 8006DC08 0048102B */  sltu  $v0, $v0, $t0
/* 04900C 8006DC0C 14400002 */  bnez  $v0, .L8006DC18
/* 049010 8006DC10 24030018 */   addiu $v1, $zero, 0x18
/* 049014 8006DC14 24030010 */  addiu $v1, $zero, 0x10
func_8006DC18:
.L8006DC18:
/* 049018 8006DC18 00651006 */  srlv  $v0, $a1, $v1
/* 04901C 8006DC1C 3C01800A */  lui   $at, 0x800a
/* 049020 8006DC20 00220821 */  addu  $at, $at, $v0
/* 049024 8006DC24 90229E40 */  lbu   $v0, -0x61c0($at)
/* 049028 8006DC28 00431021 */  addu  $v0, $v0, $v1
/* 04902C 8006DC2C 24030020 */  addiu $v1, $zero, 0x20
/* 049030 8006DC30 00623023 */  subu  $a2, $v1, $v0
/* 049034 8006DC34 54C00009 */  bnel  $a2, $zero, .L8006DC5C
/* 049038 8006DC38 00662823 */   subu  $a1, $v1, $a2
/* 04903C 8006DC3C 0104102B */  sltu  $v0, $t0, $a0
/* 049040 8006DC40 14400050 */  bnez  $v0, .L8006DD84
/* 049044 8006DC44 24060001 */   addiu $a2, $zero, 1
/* 049048 8006DC48 0169102B */  sltu  $v0, $t3, $t1
/* 04904C 8006DC4C 1440004D */  bnez  $v0, .L8006DD84
/* 049050 8006DC50 0000302D */   daddu $a2, $zero, $zero
/* 049054 8006DC54 0801B761 */  j     func_8006DD84
/* 049058 8006DC58 24060001 */   addiu $a2, $zero, 1

.L8006DC5C:
/* 04905C 8006DC5C 00C81804 */  sllv  $v1, $t0, $a2
/* 049060 8006DC60 00A91006 */  srlv  $v0, $t1, $a1
/* 049064 8006DC64 00624025 */  or    $t0, $v1, $v0
/* 049068 8006DC68 00C94804 */  sllv  $t1, $t1, $a2
/* 04906C 8006DC6C 00A43806 */  srlv  $a3, $a0, $a1
/* 049070 8006DC70 00C41804 */  sllv  $v1, $a0, $a2
/* 049074 8006DC74 00AB1006 */  srlv  $v0, $t3, $a1
/* 049078 8006DC78 00622025 */  or    $a0, $v1, $v0
/* 04907C 8006DC7C 00CB5804 */  sllv  $t3, $t3, $a2
/* 049080 8006DC80 00083402 */  srl   $a2, $t0, 0x10
/* 049084 8006DC84 14C00002 */  bnez  $a2, .L8006DC90
/* 049088 8006DC88 00E6001B */   divu  $zero, $a3, $a2
/* 04908C 8006DC8C 0007000D */  break 7
.L8006DC90:
/* 049090 8006DC90 00005012 */  mflo  $t2
/* 049094 8006DC94 00001810 */  mfhi  $v1
/* 049098 8006DC98 3105FFFF */  andi  $a1, $t0, 0xffff
/* 04909C 8006DC9C 00000000 */  nop   
/* 0490A0 8006DCA0 01450018 */  mult  $t2, $a1
/* 0490A4 8006DCA4 00041402 */  srl   $v0, $a0, 0x10
/* 0490A8 8006DCA8 00031C00 */  sll   $v1, $v1, 0x10
/* 0490AC 8006DCAC 00621825 */  or    $v1, $v1, $v0
/* 0490B0 8006DCB0 00003812 */  mflo  $a3
/* 0490B4 8006DCB4 0067102B */  sltu  $v0, $v1, $a3
/* 0490B8 8006DCB8 5040000B */  beql  $v0, $zero, .L8006DCE8
/* 0490BC 8006DCBC 00671823 */   subu  $v1, $v1, $a3
/* 0490C0 8006DCC0 00681821 */  addu  $v1, $v1, $t0
/* 0490C4 8006DCC4 0068102B */  sltu  $v0, $v1, $t0
/* 0490C8 8006DCC8 14400006 */  bnez  $v0, .L8006DCE4
/* 0490CC 8006DCCC 254AFFFF */   addiu $t2, $t2, -1
/* 0490D0 8006DCD0 0067102B */  sltu  $v0, $v1, $a3
/* 0490D4 8006DCD4 50400004 */  beql  $v0, $zero, .L8006DCE8
/* 0490D8 8006DCD8 00671823 */   subu  $v1, $v1, $a3
/* 0490DC 8006DCDC 254AFFFF */  addiu $t2, $t2, -1
/* 0490E0 8006DCE0 00681821 */  addu  $v1, $v1, $t0
.L8006DCE4:
/* 0490E4 8006DCE4 00671823 */  subu  $v1, $v1, $a3
.L8006DCE8:
/* 0490E8 8006DCE8 14C00002 */  bnez  $a2, .L8006DCF4
/* 0490EC 8006DCEC 0066001B */   divu  $zero, $v1, $a2
/* 0490F0 8006DCF0 0007000D */  break 7
.L8006DCF4:
/* 0490F4 8006DCF4 00003012 */  mflo  $a2
/* 0490F8 8006DCF8 00001810 */  mfhi  $v1
/* 0490FC 8006DCFC 00000000 */  nop   
/* 049100 8006DD00 00000000 */  nop   
/* 049104 8006DD04 00C50018 */  mult  $a2, $a1
/* 049108 8006DD08 3082FFFF */  andi  $v0, $a0, 0xffff
/* 04910C 8006DD0C 00031C00 */  sll   $v1, $v1, 0x10
/* 049110 8006DD10 00621825 */  or    $v1, $v1, $v0
/* 049114 8006DD14 00003812 */  mflo  $a3
/* 049118 8006DD18 0067102B */  sltu  $v0, $v1, $a3
/* 04911C 8006DD1C 1040000B */  beqz  $v0, .L8006DD4C
/* 049120 8006DD20 000A1400 */   sll   $v0, $t2, 0x10
/* 049124 8006DD24 00681821 */  addu  $v1, $v1, $t0
/* 049128 8006DD28 0068102B */  sltu  $v0, $v1, $t0
/* 04912C 8006DD2C 14400006 */  bnez  $v0, .L8006DD48
/* 049130 8006DD30 24C6FFFF */   addiu $a2, $a2, -1
/* 049134 8006DD34 0067102B */  sltu  $v0, $v1, $a3
/* 049138 8006DD38 10400004 */  beqz  $v0, .L8006DD4C
/* 04913C 8006DD3C 000A1400 */   sll   $v0, $t2, 0x10
/* 049140 8006DD40 24C6FFFF */  addiu $a2, $a2, -1
/* 049144 8006DD44 00681821 */  addu  $v1, $v1, $t0
.L8006DD48:
/* 049148 8006DD48 000A1400 */  sll   $v0, $t2, 0x10
.L8006DD4C:
/* 04914C 8006DD4C 00463025 */  or    $a2, $v0, $a2
/* 049150 8006DD50 00672023 */  subu  $a0, $v1, $a3
/* 049154 8006DD54 00C90019 */  multu $a2, $t1
/* 049158 8006DD58 00001810 */  mfhi  $v1
/* 04915C 8006DD5C 0083102B */  sltu  $v0, $a0, $v1
/* 049160 8006DD60 00004012 */  mflo  $t0
/* 049164 8006DD64 54400007 */  bnel  $v0, $zero, .L8006DD84
/* 049168 8006DD68 24C6FFFF */   addiu $a2, $a2, -1
/* 04916C 8006DD6C 14640006 */  bne   $v1, $a0, .L8006DD88
/* 049170 8006DD70 0000502D */   daddu $t2, $zero, $zero
/* 049174 8006DD74 0168102B */  sltu  $v0, $t3, $t0
/* 049178 8006DD78 10400004 */  beqz  $v0, .L8006DD8C
/* 04917C 8006DD7C 00C0782D */   daddu $t7, $a2, $zero
/* 049180 8006DD80 24C6FFFF */  addiu $a2, $a2, -1
func_8006DD84:
.L8006DD84:
/* 049184 8006DD84 0000502D */  daddu $t2, $zero, $zero
func_8006DD88:
.L8006DD88:
/* 049188 8006DD88 00C0782D */  daddu $t7, $a2, $zero
.L8006DD8C:
/* 04918C 8006DD8C 0140702D */  daddu $t6, $t2, $zero
/* 049190 8006DD90 01C0102D */  daddu $v0, $t6, $zero
/* 049194 8006DD94 13000007 */  beqz  $t8, .L8006DDB4
/* 049198 8006DD98 01E0182D */   daddu $v1, $t7, $zero
/* 04919C 8006DD9C 00036823 */  negu  $t5, $v1
/* 0491A0 8006DDA0 00021823 */  negu  $v1, $v0
/* 0491A4 8006DDA4 000D102B */  sltu  $v0, $zero, $t5
/* 0491A8 8006DDA8 00626023 */  subu  $t4, $v1, $v0
/* 0491AC 8006DDAC 0180102D */  daddu $v0, $t4, $zero
/* 0491B0 8006DDB0 01A0182D */  daddu $v1, $t5, $zero
.L8006DDB4:
/* 0491B4 8006DDB4 03E00008 */  jr    $ra
/* 0491B8 8006DDB8 00000000 */   nop   

/* 0491BC 8006DDBC 00000000 */  nop   
