# %s disassembly and split file
# generated by n64split v%s - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.include "globals.inc"


.section .text8006C670, "ax"

osGetSR:
/* 047A70 8006C670 40026000 */  mfc0  $v0, $12
/* 047A74 8006C674 03E00008 */  jr    $ra
/* 047A78 8006C678 00000000 */   nop   

/* 047A7C 8006C67C 00000000 */  nop   
