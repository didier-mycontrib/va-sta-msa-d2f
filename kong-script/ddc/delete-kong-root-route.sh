#delete special root route (index.html)
export HOSTNAME=`hostname`


APP_NAME=root

SERVICE_NAME=root-frontend-service

#1. delete each routes by name
#2. delete service by id or name

curl -X DELETE  http://${HOSTNAME}:8001/services/${SERVICE_NAME}/routes/${APP_NAME}-route
curl -X DELETE  http://${HOSTNAME}:8001/services/${SERVICE_NAME}

