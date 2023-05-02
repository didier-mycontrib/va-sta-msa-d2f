echo "export keycloak myrealm"
export KC_CONTAINER_NAME=keycloak
export REALM=myrealm

#docker container exec -ti ${KC_CONTAINER_NAME} sh

docker exec  ${KC_CONTAINER_NAME} \
      /opt/keycloak/bin/kc.sh  export --dir /opt/keycloak/data/backup/${REALM} --realm ${REALM}
	  
echo "resultats normalement dans /var/my-docker-volumes/keycloak/data/backup"
ls -l /var/my-docker-volumes/keycloak/data/backup