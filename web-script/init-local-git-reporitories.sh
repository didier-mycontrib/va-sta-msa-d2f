PWD=`pwd` 
#BASE=$HOME/va-sta-msa-d2f
BASE=/base
cd $BASE
mkdir local-git-repositories
cd local-git-repositories
git clone https://github.com/didier-mycontrib/ddc-api
git clone https://github.com/didier-mycontrib/qcm-api
git clone https://github.com/didier-mycontrib/tp-api
git clone https://github.com/didier-mycontrib/user-api
git clone https://github.com/didier-mycontrib/ddc-app
git clone https://github.com/didier-mycontrib/qcm-app
git clone https://github.com/didier-mycontrib/tp-app
cd $PWD
