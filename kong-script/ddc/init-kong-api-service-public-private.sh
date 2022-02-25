#init services and routes with /public and /private conventions
export HOSTNAME=`hostname`
export HOST1=www.d-defrance.fr
export HOST2=d-defrance.fr
export HOST3=$HOSTNAME

# API_NAME as first argument of script (ex: xyz-api)
API_NAME=$1
# SERVICE_NAME as  ${API_NAME}-service
SERVICE_NAME=${API_NAME}-service
# SERVICE_URL as second argument of script (ex: http://backend-xyz.api.host:8230/xyz-api)
SERVICE_URL=$2

echo "*** Init Kong service=${SERVICE_NAME} for api=${API_NAME} with url=${SERVICE_URL}"


curl -i -X POST \
  --url http://${HOSTNAME}:8001/services \
  --data "name=public-${SERVICE_NAME}" \
  --data "url=${SERVICE_URL}/public"

curl -i -X POST \
  --url http://${HOSTNAME}:8001/services \
  --data "name=private-${SERVICE_NAME}" \
  --data "url=${SERVICE_URL}/private"
  
#adding a route to access public service 
curl -i -X POST \
  --url http://${HOSTNAME}:8001/services/public-${SERVICE_NAME}/routes \
  --data "name=public-${API_NAME}-route" \
  --data "hosts[]=${HOST1}" \
  --data "hosts[]=${HOST2}" \
  --data "hosts[]=${HOST3}" \
  --data 'hosts[]=localhost' \
  --data "paths[]=/${API_NAME}/public"
# curl http://${HOST_1_2_3}:80/${API_NAME}/public/xyz
# curl http://localhost:80/${API_NAME}/public/xyz
  


  
#adding a route to access private service 
curl -i -X POST \
  --url http://${HOSTNAME}:8001/services/private-${SERVICE_NAME}/routes \
  --data "name=private-${API_NAME}-route" \
  --data "hosts[]=${HOST1}" \
  --data "hosts[]=${HOST2}" \
  --data "hosts[]=${HOST3}" \
  --data 'hosts[]=localhost' \
  --data "paths[]=/${API_NAME}/private" 
  
