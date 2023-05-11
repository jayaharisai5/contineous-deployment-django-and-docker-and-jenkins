#!/bin/bash

if [-d "env"]
then
    echo "Python virtual env exist"
else
    python3 -m venv venv
fi


echo $PWD
source env/bin/activate