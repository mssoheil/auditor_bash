#!/bin/bash

checkSensitiveFilesPermissions(){
        local GREEN='\e[0;32m'
        local NO_COLOR='\033[0m'
        printf "$GREEN --- Sensitive files permissions ---"
        printf "$NO_COLOR \n"

        sudo ls -l "/home/$1/.bashrc"
	sudo ls -l ~/.profile
	sudo ls -l /etc/bash.bashrc
	sudo ls -l /etc/profile
	sudo ls -l /etc/passwd
	sudo ls -l /etc/shadow
	sudo ls -l /etc/group
	sudo ls -l /etc/gshadow
	sudo ls -l /etc/pam.d
}

checkSensitiveFilesPermissions $1 
