pip3 install -r requirements.txt
python3 ./demo/manage.py makemigrations
python3 ./demo/manage.py migrate

sudo ufw allow 8000