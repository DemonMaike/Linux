#!/bin/bash

# test vailidate of input data

invalid_input () {
	echo "Invalid input $REPLY" >&2
	exit 1
}

read -p "Enter a single item > "

# None input is not valid
[[ -z $REPLY ]] && invalid_input

# many input elements is not valid
(( $(echo $REPLY | wc -w) > 1 )) && invalid_input

# Is the name entered correctly?
if [[ $REPLY =~ ^[-[:alnum:]\._]+$ ]]; then
	echo "'$REPLY' is a valid filename."
	if [[ -e $REPLY ]]; then
		echo "And file '$REPLY' exists."
	else
		echo "However, file '$REPLY' does not exist."
	fi
	# Is the input number float?
	if [[ $REPLY =~ ^-?[[:digit:]]*\.[[:digit:]]+$ ]]; then
		echo "'$REPLY' is a floating point number."
	else
		echo "'$REPLY' is not a floating point number."
	fi

	#Is input data integer?
	if [[ $REPLY =~ ^-?[[:digit:]]+$ ]]; then
		echo " '$REPLY' is an integer."
	else
		echo " '$REPLY' is not an integer."
	fi
else
	echo "The stirng '$REPLY' is not a valid filename."
fi
