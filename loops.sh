#!/bin/bash

#This is for and while loop practice

for (( num=$2 ; num<=$3 ; num++ ));
do
	mkdir "$1$num"
done
