#! /bin/bash

# To display the execution of the commands in the console
# set -x

# Function to check the Return Code of an operation.
# If operation fails, code=1, then a message is printed to console 
# and the script is exited.
# The first argument is the return code and the second argument is the message
# printed to the user in the console.
operationCheck(){
    if [[ $1 -ne 0 ]]; then
        echo $2
        exit 1
    fi
}


# Removing the existing init.vim file from the local directory
rm /media/sf_Carleton_Univeristy/GitHub/My-Linux-World/nvim/init.vim

# Checking if removing the existing init.vim was a success
operationCheck $? "Failed to remove the existing init.vim from the local directory."


# Copying my init.vim file to the local GitHub directory
cp /home/ghassanarnouk/.config/nvim/init.vim /media/sf_Carleton_Univeristy/GitHub/My-Linux-World/nvim/init.vim

# Checking if copying init.vim file was a success
operationCheck $? "Failed to copy init.vim to the desired directory."
