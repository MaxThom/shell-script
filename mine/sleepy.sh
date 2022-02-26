#!/bin/bash

MY_SHELL="bash"
ANOTHER_SHELL="sh"
echo "I am $MY_SHELL"

if [ "$MY_SHELL" = "$ANOTHER_SHELL" ]
then
    echo "I am $MY_SHELL"
else
    echo "I am $ANOTHER_SHELL"
fi

COLORS="red green blue"

for COLOR in $COLORS
do
    echo "COLOR: $COLOR"
done


read -p "Enter input: " USER
echo "Hi $USER !"

HOSTNAME=$(hostname)
echo "$HOSTNAME"