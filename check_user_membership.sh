#!/bin/bash

checkUserMembership(){
        local GREEN='\e[0;32m'
        local NO_COLOR='\033[0m'
        printf "$GREEN --- User $1 membership info ---"
        printf "$NO_COLOR \n"

        groups $1
}

checkUserMembership $1 
