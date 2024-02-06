#!/bin/bash

# get user
# check for existance
# check password policies
# check last login information
# check account lock status
# check for abnormal activity such as irregular login times or locations
# check account expiry
# check group membership
# check for sudo privileges
# check for network services
# user home directory permissions
# check whether the account is using ssh key authentication instead of password
# check for permission of sensitive files
# save logs to a file

read -p "enter userId: " userId

echo "you entered $userId"

checkForExistance(){
	bash ./check_user_existance.sh $1
	local result=$?

	if [[ $result != 1 ]]; then
		exit 2
	fi

}

checkForExistance $userId

echo "existance check finished"



