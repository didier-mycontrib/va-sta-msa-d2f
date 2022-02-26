#env variables to export (used in sub script):
export HOSTNAME=`hostname`
export HOST1=www.d-defrance.fr
export HOST2=d-defrance.fr
export HOST3=$HOSTNAME
#deleting kong service and route (for re-create it or ...)
sh _delete-kong-api-service-public-private.sh res-api
sh _delete-kong-api-service-public-private.sh news-api
sh _delete-kong-api-service-public-private.sh qcm-api
sh _delete-kong-api-service-public-private.sh user-api

sh _delete-kong-frontend-route.sh ddc-app
sh _delete-kong-frontend-route.sh qcm-app
sh _delete-kong-root-route.sh

 
