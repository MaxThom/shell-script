#!/bin/bash

set -x
echo "Bob"
set +x

set -e # exit on error
set -v # print everyline before execution


DEBUG=true # use this var as flag

if $DEBUG
then
    echo "debug on"
else
    echo "debug off"
fi

$DEBUG && echo "debug on"
$DEBUG || echo "debug off"


DEBUG="echo"
$DEBUG ls

DEBUG=""
$DEBUG ls