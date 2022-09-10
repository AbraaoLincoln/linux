#!/bin/bash

# Create new user accounts

if [[ "${UID}" -ne 0 ]]; then
    echo "To execute this script you need to be root"
    exit 1
fi

read -p "Enter username: " USERNAME

read -p "Enter the name of who gonna be usaing this acount: " COMMENT

read -p "Enter the initial password: " PASSWORD

useradd -c "${COMMENT}" -m "${USERNAME}"

if [[ "${?}" -ne 0 ]]; then
    echo "The user account was not create"
    exit 1
fi

echo "${PASSWORD}" | passwd --stdin "${USERNAME}"

passwd -e "${USERNAME}"

if [[ "${?}" -ne 0 ]]; then
    echo "The password was not create"
    exit 1
fi

echo "New user create succefully"

echo "User name: ${USERNAME}"

echo "Password: ${PASSWORD}"

echo "Host: ${HOSTNAME}"

exit 0