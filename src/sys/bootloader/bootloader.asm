bits 16
org 0x7C00
mov si, 0

main_loop:
  mov ah, 0x0E
  mov al, [message + si]
  int 0x10

  inc si
  cmp byte [message + si], 0
  jne main_loop

hang:
  hlt
  jmp hang

message: db "hai", 0

times 510 -($-$$) db 0
dw 0xAA55
