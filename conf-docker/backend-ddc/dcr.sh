#dcr : docker compose rebuild/restart
sh docker-compose-down.sh
sh docker-image-pull-backend.sh
sh docker-compose-up-bg.sh