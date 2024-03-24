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

checkForExistance(){
	bash ./check_user_existance.sh $1
	local result=$?

	if [[ $result != 1 ]]; then
		exit 2
	fi
}

checkPasswordPolicies(){
	bash ./check_password_policies.sh
}

checkLastLoginInfo(){
	bash ./last_login_info.sh $1
}

checkUserLockStatus(){
	bash ./check_lock_status.sh $1
}

checkLoginLog(){
	bash ./check_login_log.sh
}

checkUserAccountExpirationInfo(){
	bash ./check_user_account_expiration.sh $1
}

checkGroupMembership(){
	bash ./check_user_membership.sh $1
}

checkUserSudoPrivileges(){
	bash ./check_user_sudo_privileges.sh $1
}

checkHomeDirectoryPermissions(){
	bash ./check_home_directory_permission.sh $1
}

checkNetworkServices(){
	bash ./check_network_services.sh $1
}

checkForExistance $userId
checkPasswordPolicies
checkLastLoginInfo $userId
checkUserLockStatus $userId
checkLoginLog
checkUserAccountExpirationInfo $userId
checkGroupMembership $userId
checkUserSudoPrivileges $userId
checkHomeDirectoryPermissions $userId
checkNetworkServices $userId

