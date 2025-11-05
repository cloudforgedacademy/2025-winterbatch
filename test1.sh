#!/bin/bash
# Script name: test1.sh

# Ask for user's name
echo "Enter your name:"
read name

# Ask for user's age
echo "Enter your age:"
read age

# Check if age is 18 or older
if [ "$age" -ge 18 ]; then
    echo "You are eligible to vote, $name!"
else
    echo "Sorry $name, you are not old enough to vote."
fi

