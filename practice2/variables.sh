#!/bin/bash

<< dhrubSection 
This is the ignore section 
That is multiline comment 
Feeling Excited
If u want to end the block write the name of the block
dhrubSection

read -p "Username daal re bhai " username 

echo "Such mai, tune yeh $username username daala, sahi h"

sudo useradd -m $username

echo "New user added"
