#!/bin/bash

ping -q -c2 $1 > /dev/null

if [ $? -eq 0 ]
then
	echo $i "Online"
else
	echo $i "Offline"
fi
