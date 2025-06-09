#!/bin/bash

function is_able(){
read -p "Enter username: " username
echo "You entered $username"

if [[ $username == "Dhrub" ]]; then
	echo "is able to crack anything"
else
	echo "is not able"
fi
}
is_able
