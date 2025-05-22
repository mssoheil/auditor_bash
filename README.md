# Auditor Bash Script

#### A collection of shell scripts designed to perform security audits on Linux systems. 

### Features
- Audit user accounts, sudo privileges, and group memberships
- Verify password policies and account expiration settings
- Inspect the home directory and sensitive file permissions
- Check login logs and lock statuses
- Review active network services
- Generate logs for review

### Usage
- Clone the repository
- Make the main script executable `chmod +x main.sh`
- Run the `./main.sh`

### Files
- main.sh - Executes all of the audit scripts
- check_home_directory_permission.sh - Checks permissions of user home directories
- check_lock_status.sh - Identifies locked user accounts
- check_login_log.sh - Prints the login logs
- check_network_services.sh - Lists active network services
- check_password_policies.sh - Prints system password policies
- check_sensitive_files_permissions.sh - Verifies permissions of sensitive system files
- check_user_account_expiration.sh - Checks for user account expiration
- check_user_existance.sh - Validates the existence of user accounts.
- check_user_membership.sh - Prints user group memberships
- check_user_sudo_privileges.sh - Identifies user with sudo privileges
- last_login_info.sh - Displays last login information for the user
- logging.sh - Handles logging of audit results in a log file
