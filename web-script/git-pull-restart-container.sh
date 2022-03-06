PWD=`pwd` 
export BASE=$HOME/va-sta-msa-d2f
cd $BASE/docker-contents/ddc-api
ALREADYUPTODATE="Already up-to-date."
GITPULLRESULT=`git pull 2>&1`
if [ "${ALREADYUPTODATE}" = "${GITPULLRESULT}" ]; then
	echo "Already up-to-date."
else 
    echo "need to restart container"; 
	#sh $BASE/dock-script/dcr-backend-ddc.sh
fi
cd $PWD
