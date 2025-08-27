#adcr : absolute docker compose rebuild/restart (with absolute path)
PWD=`pwd`
cd /base/conf-docker/qcm-app-ssr
sh dcr.sh
cd $PWD