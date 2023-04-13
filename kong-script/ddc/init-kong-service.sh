#env variables to export (used in sub script):
export HOSTNAME=`hostname`
export HOST1=www.d-defrance.fr
export HOST2=d-defrance.fr
export HOST3=$HOSTNAME

API_SERVICE_URL=http://backend-qcm-api.api.host:8230/qcm-api
sh _init-kong-api-service-public-private.sh qcm-api $API_SERVICE_URL
# curl http://localhost:80/qcm-api/public/qcm
  
####### NB: ddc-api = news-api + res-api  
  
API_SERVICE_URL=http://backend-ddc-api.api.host:8231/news-api
sh _init-kong-api-service-public-private.sh news-api $API_SERVICE_URL
API_SERVICE_URL=http://backend-ddc-api.api.host:8231/res-api
sh _init-kong-api-service-public-private.sh res-api $API_SERVICE_URL
# curl http://localhost:80/res-api/public/ressource
# curl http://localhost:80/news-api/public/publication

API_SERVICE_URL=http://backend-user-api.api.host:8232/user-api
sh _init-kong-api-service-public-private.sh user-api $API_SERVICE_URL
# curl http://localhost:80/user-api/private/user
 
FRONTEND_URL=http://my-frontends:8888/qcm-app
sh _init-kong-frontend-route.sh qcm-app $FRONTEND_URL
# curl http://localhost:80/qcm-app/index.html

FRONTEND_URL=http://my-frontends:8888/ddc-app
sh _init-kong-frontend-route.sh ddc-app $FRONTEND_URL
# curl http://localhost:80/ddc-app/index.html

#NB http://keycloakauth:8989/keycloak URL required --http-relative-path=/keycloak option in keycloak


KEYCLOAK_URL=http://keycloakauth:8989/keycloak
sh _init-kong-keycloak-route.sh $KEYCLOAK_URL
# curl http://localhost:80/keycloak

ROOT_URL=http://my-frontends:8888/index.html
sh _init-kong-root-route.sh $ROOT_URL
# curl http://localhost:80/index.html
