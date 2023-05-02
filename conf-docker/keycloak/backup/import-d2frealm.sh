echo "import keycloak d2frealm"
export KC_CONTAINER_NAME=keycloak
export REALM=d2frealm

#docker container exec -ti ${KC_CONTAINER_NAME} sh

docker exec  ${KC_CONTAINER_NAME} \
      /opt/keycloak/bin/kc.sh  import --dir /opt/keycloak/data/backup/${REALM} --override true
	  