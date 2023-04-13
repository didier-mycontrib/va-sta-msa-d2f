#dcr : docker compose rebuild/restart
# sudo mkdir -p /var/my-docker-volumes/keycloak/data
# sudo chmod ag+w  /var/my-docker-volumes/keycloak/data
sh docker-compose-down.sh
sh docker-compose-up-bg.sh