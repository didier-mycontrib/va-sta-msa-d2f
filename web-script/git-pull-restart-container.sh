PWD=`pwd` 
export BASE=$HOME/va-sta-msa-d2f
cd $BASE/docker-contents/ddc-api
git pull 1>&1 | grep "Already up-to-date."
if [ ! $? -eq 0 ]; then
	echo "need to restart container"
else 
    echo "Already up-to-date."
fi
cd $PWD
