#dcr : docker compose rebuild/restart
sh docker-compose-down.sh
sh docker-image-rm-myNginx.sh
sh docker-compose-up-bg.sh