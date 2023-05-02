#dcr : docker compose rebuild/restart
sh docker-compose-down.sh
#sh docker-image-rm-myNginx.sh not necessarry if docker-compose up with build option
sh docker-compose-up-bg.sh