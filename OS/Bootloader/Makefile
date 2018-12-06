hello_world.bin: hello_world.asm
	nasm -f bin hello_world.asm -o hello_world.bin
	qemu-system-x86_64 hello_world.bin


my_operating_system.bin: my_operating_system.asm
	nasm -f bin my_operating_system.asm -o my_operating_system.bin
	qemu-system-x86_64 my_operating_system.bin

clean:
	rm hello_world.bin
	rm my_operating_system.bin