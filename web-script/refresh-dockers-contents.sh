PWD=`pwd` 
export BASE=$HOME/va-sta-msa-d2f
cd $BASE/docker-contents/ddc-api
git pull main
cd $BASE/docker-contents/qcm-api
git pull main
cd $BASE/docker-contents/user-api
git pull main
cd $PWD
