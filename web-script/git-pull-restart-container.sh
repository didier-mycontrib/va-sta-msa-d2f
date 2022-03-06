PWD=`pwd` 
#export BASE=$HOME/va-sta-msa-d2f
export BASE=/base
cd $BASE/docker-contents/ddc-api
git pull > lastGitPullRes.txt 2>&1
ALREADYUPTODATE="Already up to date." 
ISUPTODATE=`grep -c "$ALREADYUPTODATE"  lastGitPullRes.txt`
if [ $ISUPTODATE -eq 1 ]; then
	echo "Already up to date."
else 
    echo "need to restart container"; sh $BASE/dock-script/dcr-backend-ddc.sh
fi
cd $PWD
