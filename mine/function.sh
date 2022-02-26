#!/bin/bash

function hello() {
    echo "Hello ${1}!"

    for NAME in $@
    do
        echo "Hola ${NAME}!"
    done
    now
}

now() {
    echo "It's $(date +%r)"
    return 1
}

hello Max Jose Charlotte Edwina

now
echo $?

backup_file() {
    if [ -f $1 ]
    then
        local BACK="/tmp/$(basename ${1}).$(date +%F).$$"
        echo "Backing up $1 to $BACK"
        cp $1 $BACK
    else
        return 1
    fi
}

backup_file /etc/hosts
if [ $? -eq 0 ]
then
    echo "Backup suceeded :)"
else
    echo "Backup failed :("
fi