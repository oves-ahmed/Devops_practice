#!/bin/bash
#
# Author: Shehzad Shaikh
# Initial Released Date: 4th May 2024
# Version: 0.0.1
# Description: Cost Optimization Framework
#


# Define variables
ROOT_USER_ID="0"
LOGGED_IN_USERID="$(id -u)"

# Main program execution
echo "INFO: Validate if script is executed with sudo privileges."

# Sanity check
if [[ $LOGGED_IN_USERID -eq $ROOT_USER_ID ]]; then 
  echo "INFO: Script is executed with sudo privilege"
  echo echo "Current logged in userid: $LOGGED_IN_USERID"
else
  echo "ERROR: Please re-run the script with sudo privileges"
  echo echo "Current logged in userid: $LOGGED_IN_USERID"
  exit 1
fi