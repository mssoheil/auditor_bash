#!/bin/bash

checkNetworkServices(){
        local GREEN='\e[0;32m'
        local NO_COLOR='\033[0m'
        printf "$GREEN --- User $1 network services ---"
        printf "$NO_COLOR \n"

        sudo lsof -i -n -P | grep $1
}

checkNetworkServices $1

