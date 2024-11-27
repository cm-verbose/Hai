# Hai

An attempt at making an operating system. To run the bootloader, you can run :

```bash
nasm -f bin ./sys/bootloader.asm -o ./bin/bootloader.bin
qemu-system-x86_64 -drive format=raw,file=./bin/bootloader.bin
```