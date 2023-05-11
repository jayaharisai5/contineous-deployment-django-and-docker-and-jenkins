sudo chown gunicorn.socket
sudo chown gunicorn.service

sudo journalctl -u gunicorn.socket

sudo systemctl start gunicorn.socket
sudo systemctl enable gunicorn.socket

sudo systemctl daemon-reload

curl --unix-socket /run/gunicorn.sock localhost

sudo ln -s /var/lib/jenkins/workspace/demo deployment/demo /etc/nginx/sites-enabled/

sudo systemctl restart nginx

sudo nginx -t

sudo ufw delete allow 8000
sudo ufw allow 'Nginx Full'

sudo tail -F /var/log/nginx/error.log


sudo chown ubuntu:ubuntu /var/lib/jenkins/workspace/demo deployment/demo/static
sudo chown ubuntu:ubuntu /var/lib/jenkins/workspace/demo deployment/demo/db.sqlite3
sudo chown ubuntu:ubuntu /var/lib/jenkins/workspace/demo deployment/demo