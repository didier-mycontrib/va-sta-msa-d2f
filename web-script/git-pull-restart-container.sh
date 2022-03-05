PWD=`pwd` 
export BASE=$HOME/va-sta-msa-d2f
cd $BASE/docker-contents/ddc-api
git pull 1>&1 | grep "Already up-to-date."
if [ ! $? -eq 0 ]; then
	echo "Already up-to-date."
else 
    echo "need to restart container"; sh $BASE/dock-script/dcr-backend-ddc.sh
fi
cd $PWD
