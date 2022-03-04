PWD=`pwd` 
export BASE=$HOME/va-sta-msa-d2f
cd $BASE
mkdir docker-contents
cd docker-contents
git clone https://github.com/didier-mycontrib/ddc-api
git clone https://github.com/didier-mycontrib/qcm-api
git clone https://github.com/didier-mycontrib/user-api
cd $PWD
