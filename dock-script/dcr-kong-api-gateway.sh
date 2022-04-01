#adcr : absolute docker compose rebuild/restart (with absolute path)
sh /base/conf-docker/kong-api-gateway/adcr.sh
cp /base/conf-docker/kong-api-gateway/docker-compose-after-first-start.yml  /base/conf-docker/kong-api-gateway/docker-compose.yml
echo "waiting 30s before reinit-vps-gateway-access.sh"
sleep 30
sh /base/dock-script/reinit-vps-gateway-access.sh