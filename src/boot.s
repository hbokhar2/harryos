; This does not say the file is 16 bits. This is saying that the code must be readable by a 16 bit architecture.
[BITS 16]
; Bios loads first sector of bootable device into a memory location which is 0x7C00.
[ORG 0x7C00]

PrintCharacter:
    mov ah, 0x0E
    mov bh, 0x00
    mov bl, 0x07

INT 0x10
RET
;Fills code with 0 to fill up 512 byte bootloader requirement.
Times 510 - ($-$$) db 0

DW 0xAA55