sudo wget -O /usr/local/bin/ufw-docker \
  https://github.com/chaifeng/ufw-docker/raw/master/ufw-docker
sudo chmod +x /usr/local/bin/ufw-docker

sudo ufw-docker install
sudo systemctl restart ufw
sudo ufw status numbered
sudo ufw allow ssh
sudo ufw allow http
sudo ufw enable
sudo ufw status numbered
sudo systemctl enable ufw 

sudo ufw-docker status
sudo ufw-docker check
