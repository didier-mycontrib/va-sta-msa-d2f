echo "import keycloak sandboxrealm"
export KC_CONTAINER_NAME=keycloak
export REALM=sandboxrealm

#docker container exec -ti ${KC_CONTAINER_NAME} sh

docker exec  ${KC_CONTAINER_NAME} \
      /opt/keycloak/bin/kc.sh  import --dir /opt/keycloak/data/backup/${REALM} --override true
	  