#!/bin/bash

checkUserLockStatus(){

	GREEN='\e[0;32m'
	NO_COLOR='\033[0m'
	printf "$GREEN --- user $1 lock status ---"
	printf "$NO_COLOR \n"

	sudo passwd -S $1
}

checkUserLockStatus



