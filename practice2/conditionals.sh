#!/bin/bash


echo "This is just for fun"

<< disclaimer 
Jetha ka loyalty test kr rhe
disclaimer

read -p "Jetha dil se kisko chahta h?: " username

if [[ $username == "dayaben" ]];
then
	echo "Jetha is loyal"
else
	echo "Jetha is not Loyal"
fi
