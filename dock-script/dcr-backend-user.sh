PWD=`pwd` 
export BASE=$HOME/va-sta-msa-d2f
cd $BASE/conf-docker/backend-user
#dcr : docker compose rebuild/restart
sh ./dcr.sh
cd $PWD
