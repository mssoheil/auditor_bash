#!/bin/bash


getLastLoginInfo() {

	local GREEN='\e[0;32m'
	local NO_COLOR='\033[0m'

	printf "$GREEN --- last login information ---"
	printf "$NO_COLOR \n"

	last $1
	printf "\n"

	who -b
	printf "\n"

	sudo lastb
}

getLastLoginInfo $1
