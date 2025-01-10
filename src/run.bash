if [ ! -d "./bin" ]; then 
  mkdir "bin"
fi

nasm -f bin ./sys/bootloader/bootloader.asm -o ./bin/bootloader.bin
qemu-system-x86_64 -drive format=raw,file=./bin/bootloader.bin
