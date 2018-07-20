
#!/bin/bash

# A script that is used to compile C program quickls.
# Checks:
	# Check file exists before compiling [X]
	# if $2 is not speficied use $1 but remove extenstion ".c" []
	# get status code [] 
	# if statement exit code greater than 0. []

# Varibles
FILE=$1

# Check if $1 value was passed.
if [ -z "$1" ]
then
	echo "No file name was passed"
else

if [ -e "$FILE" ]
then
	#Debug code for checking file exists.
	# echo -e "File: \e[4m\e[32m$FILE \e[0mexists"

# Check if $2 is empty
if [ -z "$2" ]
then
	# When $2 is empty get file name and remove extenstion.
	echo -e "\e[1m\e[31mSecond parameter was missing \e[0m"
else
	echo -e "\e[1n\e[32mCompiling C program\e[0m"
	gcc $1 -o $2
fi

else
	echo -e "File: \e[1m\e[31m$FILE \e[0mdoes not exist"

fi
fi
