#!/bin/bash

if [-d "env"]
then
    echo "Python virtual env exist"
else
    sudo apt install python3.10-venv
    python3 -m venv venv
fi


echo $PWD
source env/bin/activate

