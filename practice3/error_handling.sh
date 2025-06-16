#!/bin/bash


create_directory(){
	mkdir demo1
}

if ! create_directory; then
	echo "The code donot works as the directory is already existed"
	exit 1
fi
echo "This line should work only for the first time"
