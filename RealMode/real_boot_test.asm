ORG 0 ; lets change the asm origin to 0
BITS 16

jmp 0x7c0:start

start:
    ; ds * 16 + 0x7c00 ; If our program start from ox7c0
    ; DS = 0x7c0
    ; 0x7c00 + 0x7c00

    cli ; clear interruptsmov

        mov ax,0x7c0 ; setting up data segment
        mov ds,ax ; we can directly move ox7c0 directly into the data segment registor
        mov es,ax

        mov ax,0x00 ; Setting up stack segment
        mov ss,ax
        mov sp,0x7c00 ; setting up stack pointer to 0x7c00
    sti ; Enable interrupts
    mov si,message
    call print
    jmp $

print:
    mov bx,0

.loop:
    lodsb
    cmp al,0
    je .done
    call print_char
    jmp .loop
.done:
    ret

print_char:
    mov ah,0eh
    int 0x10
    ret

message: db 'Hello World from NoaraOS',0

times 510-($ - $$) db 0
dw 0xAA55