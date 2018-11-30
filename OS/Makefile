run: insane-calc-os.bin
	qemu-system-x86_64 insane-calc-os.bin

insane-calc-os.bin: insane-calc-os.asm
	nasm -f bin insane-calc-os.asm -o insane-calc-os.bin
