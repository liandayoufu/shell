#!/bin/bash
# The purpost is to check if there is syntax error in a shell script.

check() {
	read -p "Please provider the file u want to check ->: " file
	if [ -f $file ]; then
		bash -n $file &> /dev/null
		if [ $? -ne 0 ]; then
			read -p "$file has syntax error.(Type q|Q to exit or Type vim to modify" choice
			case $choice in
				q | Q)
				exit 0 ;;
				*)
				vim $file ;;
			esac
		else
			echo "Syntax OK"
		fi
	else
		echo "$file does not exist."
	fi
}

check 
