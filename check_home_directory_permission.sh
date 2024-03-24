#!/bin/bash

checkHomeDirectoryPermissions(){
        local GREEN='\e[0;32m'
        local NO_COLOR='\033[0m'
        printf "$GREEN --- User $1 home directory permissions ---"
        printf "$NO_COLOR \n"

        ls -ld "/home/$1"
}

checkHomeDirectoryPermissions $1



