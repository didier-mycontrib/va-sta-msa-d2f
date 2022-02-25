#deleting kong service and route (for re-create it or ...)
sh delete-kong-api-service-public-private.sh res-api
sh delete-kong-api-service-public-private.sh news-api
sh delete-kong-api-service-public-private.sh qcm-api
sh delete-kong-api-service-public-private.sh user-api

sh delete-kong-frontend-route.sh ddc-app
sh delete-kong-frontend-route.sh qcm-app
sh delete-kong-root-route.sh

 
