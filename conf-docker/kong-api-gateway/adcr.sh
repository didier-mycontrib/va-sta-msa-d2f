#adcr : absolute docker compose rebuild/restart (with absolute path)
PWD=`pwd`
cd /base/conf-docker/kong-api-gateway
sh dcr.sh
cd $PWD