#!/bin/bash

checkLoginLog(){
	local GREEN='\e[0;32m'
	local NO_COLOR='\033[0m'
	printf "$GREEN --- login logs ---"
	printf "$NO_COLOR \n"

	sudo cat /var/log/auth.log
}

checkLoginLog
