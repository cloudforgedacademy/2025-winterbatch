#!/bin/bash
# Script Name: user_check.sh
# Description: Checks if a user is eligible to vote based on age.

# Ask for user's name
echo "Please enter your name:"
read name

# Ask for user's age
echo "Please enter your age:"
read age

# Check if age is 18 or older
if [ "$age" -ge 18 ]; then
	    echo "You are eligible to vote, $name!"
    else
	        echo "Sorry $name, you are not old enough to vote."
fi

