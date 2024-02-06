#!/bin/bash

echo "the user to check is $1"
foundUser=$(cat /etc/passwd | grep $1)

if [[ -n $foundUser ]];then
	echo "The user does exist"
        exit 1
else
	echo "The user does not exist"
	exit 2
fi
