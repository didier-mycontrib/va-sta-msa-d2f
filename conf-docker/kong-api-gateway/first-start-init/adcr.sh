#adcr : absolute docker compose rebuild/restart (with absolute path)
PWD=`pwd`
cd /base/conf-docker/kong-api-gateway/first-start-init
sh dcr.sh
cd $PWD