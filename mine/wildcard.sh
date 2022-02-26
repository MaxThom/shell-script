#!/bin/bash

for FILE in $(pwd)/www/*.html
do
    echo "Copying $FILE"
    cp $FILE $(pwd)/www/$(basename $FILE).backup
done

