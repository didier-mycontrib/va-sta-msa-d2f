# A ameliorer :      
sudo mkdir -p /var/my-docker-volumes/keycloak/data
sudo chmod ag+w  /var/my-docker-volumes/keycloak/data

#adcr : absolute docker compose rebuild/restart (with absolute path)
sh /base/conf-docker/keycloak/adcr.sh

