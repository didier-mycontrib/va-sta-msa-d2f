#init kong route for accessing keycloak with http or https

#env variables to export in parent script:
#HOSTNAME --> for admin
#HOST1 , HOST2 , HOST3 --> for route

SERVICE_NAME=keycloak-service
# ROOT_URL as first argument of script (ex: http://keycloakauth:8989/keycloak)
KEYCLOAK_URL=$1
  
curl -i -X POST \
  --url http://${HOSTNAME}:8001/services \
  --data "name=${SERVICE_NAME}" \
  --data "url=${KEYCLOAK_URL}"
  
#adding a route to access keycloak realms behind kong
curl -i -X POST \
  --url http://${HOSTNAME}:8001/services/${SERVICE_NAME}/routes \
  --data "name=keycloak-route" \
  --data "hosts[]=${HOST1}" \
  --data "hosts[]=${HOST2}" \
  --data "hosts[]=${HOST3}" \
  --data 'hosts[]=localhost' \
  --data "paths[]=/keycloak" 
  
# curl http://${HOST_1_2_3}:80/keycloak  
# curl http://localhost:80/keycloak
