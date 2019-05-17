#!/bin/bash
 
 
#Create an account on the local system
#Prompt to enter details

#.1 Ask for the user name

read -p 'Enter username: ' USER_NAME

#.2 Ask for real name
read -p 'Enter the real name : ' COMMENT

#.3 Ask for the password

read -p 'Enter the password : ' PASSWORD

#.4 Create the user

useradd -c "${COMMENT}" -m "${USER_NAME}"    # -m  to create home dir

#.5 Set tthe password

echo ${PASSWORD} | passwd --stdin  ${USER_NAME} # --stdin used to use as input the output of first part


#.6 Force the user to change the password the first time to log in

passwd -e ${USER_NAME}

