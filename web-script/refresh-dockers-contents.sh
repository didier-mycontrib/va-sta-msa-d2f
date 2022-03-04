PWD=`pwd` 
export BASE=$HOME/va-sta-msa-d2f
cd $BASE/docker-contents/ddc-api
git pull
cd $BASE/docker-contents/qcm-api
git pull
cd $BASE/docker-contents/user-api
git pull
cd $PWD
