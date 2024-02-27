#!/bin/bash

checkDefaults(){
	local GREEN='\e[0;32m'
	local NO_COLOR='\033[0m'
	printf "$GREEN --- default login configs ---"
	printf "$NO_COLOR \n"

	cat /etc/login.defs | egrep "^(PASS_MAX_DAYS|PASS_MIN_DAYS|LOGIN_RETRIES|LOGIN_TIMEOUT|DEFAULT_HOME|ENCRYPT_METHOD)" | awk '{printf "%s: ", $1; printf $2;printf "\n"}'
}

checkDefaults
