#adcr : absolute docker compose rebuild/restart (with absolute path)
sh /base/conf-docker/kong-api-gateway/first-start-init/adcr.sh 
echo "waiting 15s (kong database first start inititialisation)"
sleep 15
sh /base/conf-docker/kong-api-gateway/adcr.sh

echo "waiting 30s before reinit-vps-gateway-access.sh"
sleep 30
sh /base/dock-script/reinit-vps-gateway-access.sh