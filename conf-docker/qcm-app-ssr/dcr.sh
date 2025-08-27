#dcr : docker compose rebuild/restart
sh docker-compose-down.sh
sh docker-image-pull-frontend.sh
sh docker-compose-up-bg.sh