#!/bin/bash

case "$1" in
    start|START)
        ls
        ;;
    stop|STOP)
        ls --all
        ;;
    *)
        echo "Usage: $0 [start|stop]" ; exit 1
        ;;
esac

read -p "Enter y or n: " ANSWER
case "$ANSWER" in
    [yY]|[yY][eE][sS])
        echo "You answered yes."
        ;;
    [nN]|[nN][oO])
        echo "You answered no."
        ;;
    *)
        echo "Invalid answer."
        ;;
esac