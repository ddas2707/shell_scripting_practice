#!/bin/bash

#Practice for conditions 

echo "How much does Jetha loves daya in %: "

read percentage

if [[ $percentage -ge 90 ]];
then 
	echo "Jetha is Loyal"
#elif [[ $percentage -ge 45 ]];
#	echo "Jetha is not Loyal"
else
	echo "Jetha is definitely cheating"
fi
