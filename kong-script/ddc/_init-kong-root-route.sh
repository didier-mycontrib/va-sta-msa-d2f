#init special route for root (/index.html)

#env variables to export in parent script:
#HOSTNAME --> for admin
#HOST1 , HOST2 , HOST3 --> for route

SERVICE_NAME=root-frontend-service
# ROOT_URL as first argument of script (ex: http://my-frontends:8989/index.html)
ROOT_URL=$1
  
curl -i -X POST \
  --url http://${HOSTNAME}:8001/services \
  --data "name=${SERVICE_NAME}" \
  --data "url=${ROOT_URL}"
  
#adding a route to access frontend app behind kong
curl -i -X POST \
  --url http://${HOSTNAME}:8001/services/${SERVICE_NAME}/routes \
  --data "name=root-route" \
  --data "hosts[]=${HOST1}" \
  --data "hosts[]=${HOST2}" \
  --data "hosts[]=${HOST3}" \
  --data 'hosts[]=localhost' \
  --data "paths[]=/index.html" \
  --data "paths[]=/"
  
# curl http://${HOST_1_2_3}:80/index.html  
# curl http://localhost:80/index.html
