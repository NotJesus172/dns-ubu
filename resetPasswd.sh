#!/bin/bash

#   Pihole password reset prompt:
echo "Would you like to reset the pihole password? (y/n)"
read resetpwState
if [[ $resetpwState == "y" || $resetpwState == "Y" ]]; then
    #   Input new password:
    echo "Enter your new password."
    read PiHolePassword
    #   Reset pihole password:
    pihole -a -p $PiHolePassword
    echo "You have reset your pihole password to [$PiHolePassword]."
else
    echo "The pihole password was NOT reset at this time."
    echo "If you would like to reset it at a later time, return to this directory and run './resetPasswd.sh' to begin the reset."
fi
