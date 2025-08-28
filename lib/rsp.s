#include "macros.inc"
.set UCODE_SIZE, 0x800

.section .text

.balign 16
glabel rspF3DBootStart
    .incbin "lib/PR/102695/rspboot.bin"
.balign 16
glabel rspF3DBootEnd

.balign 16
glabel rspF3DStart
    .incbin "lib/PR/102695/gspFast3D.text.bin"
glabel rspF3DEnd

/* Audio Bins */

.balign 16
glabel rspAspMainStart
    .incbin "lib/PR/102695/aspMain.text.bin"
glabel rspAspMainEnd

/* DATA SECTION START */

.section .rodata

.balign 16
glabel rspF3DDataStart
    .incbin "lib/PR/102695/gspFast3D.data.bin"
glabel rspF3DDataEnd

/* Audio Data */

.balign 16
glabel rspAspMainDataStart
    .incbin "lib/PR/102695/aspMain.data.bin"
glabel rspAspMainDataEnd
