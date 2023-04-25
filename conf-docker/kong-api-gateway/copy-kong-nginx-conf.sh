sudo mkdir -p /var/conf/kong
sudo mkdir -p /var/conf/kong/www
sudo cp ./my-web-index-kong-nginx-template.conf /var/conf/kong
sudo cp ./kong.conf /var/conf/kong
sudo cp ./index.html /var/conf/kong/www
  