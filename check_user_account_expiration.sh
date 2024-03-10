#!/bin/bash

checkUserAccountExpiration(){
	local GREEN='\e[0;32m'
	local NO_COLOR='\033[0m'
	printf "$GREEN --- User $1 expiration info ---"
	printf "$NO_COLOR \n"

	sudo chage -l $1
}

checkUserAccountExpiration $1
