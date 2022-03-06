#adcr : absolute docker compose rebuild/restart (with absolute path)
PWD=`pwd`
cd /base/conf-docker/frontends-angular
sh dcr.sh
cd $PWD