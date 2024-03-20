#!/bin/bash

checkUserSudoPrevileges(){
        local GREEN='\e[0;32m'
        local NO_COLOR='\033[0m'
        printf "$GREEN --- User $1 sudo privileges ---"
        printf "$NO_COLOR \n"

        sudo -l -U $1
}

checkUserSudoPrevileges $1
