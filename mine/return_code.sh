#!/bin/bash

ls /not/here
echo "$?" # return the error code of last command. 0 == success, 1-255 = error

HOST="google.com"
CMD=$(ping -c 1 $HOST) # if without the variable, print to display
RETURN_CODE=$?

if [ "$RETURN_CODE" -eq "0" ]
then
    echo "$HOST reachable."
else
    echo "$HOST not reachable."
fi

ping -c 1 $HOST && echo "$HOST reachable."