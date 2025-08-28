#adcr : absolute docker compose rebuild/restart (with absolute path)
PWD=`pwd`
cd /base/conf-docker/myNginx
sh dcr-rebuild.sh
cd $PWD