package=Rahat-OSes
case "$1" in
	-h|--help|-man)
		echo "$package - A collection of OSes made by me"
		echo " "
		echo "SYNOPSIS"
		echo "	$package [options]|[argument] [argument 2]"
		echo " "
		echo "options:"
		echo "	-h, --help                show brief help"
		echo " "
		echo "arguments:"
		echo "	NIDOS"
		echo "		Runs the NIDOS kernal. As You have told us to run this only."
		echo "	INSANE_KERNELS"
		echo "		(ADDITIONAL) My custom kernels"
		echo "		hello-boot - runs a helloworld bootloader os."
		echo "		myos-boot - runs a os with ---"
		echo "		insane-calc runs a calculator os. Completely done in asm without any bootstrapper."
		echo "	WYOOS"
		echo "		(ADDITIONAL) A Complete os with c and assembly only."
		;;
	NIDOS)
		cd NIDOS
		make
		cd ..
		;;
	INSANE_KERNELS)
		cd OS
		shift
		case "$1" in
			hello-boot)
				cd Bootloader
				make hello_world.bin
				cd ..
				;;
			myos-boot)
				cd Bootloader
				make my_operating_system.bin
				cd ..
				;;
			insane-calc)
				make
				;;
		esac
		cd ..
		;;
	WYOOS)
		cd wyoos
		make
		cd ..
		;;
	*)
		echo "Unknown flag or argument!!!"
		exit 1
		;;
esac
