#!/bin/bash

# Update the linux
sudo apt-get update
sudo apt-get upgrade

sudo apt install python3-venv libpq-dev nginx curl

# Create virtual environment
if [-d "env"]
then
    echo "Python virtual env exist"
else
    sudo apt install python3.10-venv
    python3 -m venv venv
fi

echo $PWD
source venv/bin/activate

pip3 install -r requirements.txt
python3 ./demo/manage.py makemigrations
python3 ./demo/manage.py migrate

sudo ufw allow 8000

gunicorn --bind 0.0.0.0:8000 myproject.wsgi
