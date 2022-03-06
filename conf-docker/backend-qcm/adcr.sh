#adcr : absolute docker compose rebuild/restart (with absolute path)
PWD=`pwd`
cd /base/conf-docker/backend-qcm
sh dcr.sh
cd $PWD