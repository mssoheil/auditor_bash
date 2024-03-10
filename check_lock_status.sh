#!/bin/bash

checkUserLockStatus(){
	local GREEN='\e[0;32m'
	local NO_COLOR='\033[0m'
	printf "$GREEN --- user $1 lock status ---"
	printf "$NO_COLOR \n"

	sudo passwd -S $1
}

checkUserLockStatus $1



