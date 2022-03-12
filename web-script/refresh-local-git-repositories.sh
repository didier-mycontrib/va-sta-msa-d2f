PWD=`pwd` 
#BASE=$HOME/va-sta-msa-d2f
BASE=/base
cd $BASE/local-git-repositories/ddc-api
git pull
cd $BASE/local-git-repositories/qcm-api
git pull
cd $BASE/local-git-repositories/user-api
git pull
cd $BASE/local-git-repositories/ddc-app
git pull
cd $BASE/local-git-repositories/qcm-app
git pull
cd $PWD
