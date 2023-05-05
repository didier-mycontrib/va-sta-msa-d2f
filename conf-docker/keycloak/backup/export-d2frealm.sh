echo "export keycloak d2frealm"
export KC_CONTAINER_NAME=keycloak
export REALM=d2frealm
export HOST_BKUP_DIR=/var/my-docker-volumes/keycloak/data/backup/${REALM}
sudo mkdir -p ${HOST_BKUP_DIR}
sudo chmod 777 ${HOST_BKUP_DIR}

#docker container exec -ti ${KC_CONTAINER_NAME} sh

docker exec  ${KC_CONTAINER_NAME} \
      /opt/keycloak/bin/kc.sh  export --dir /opt/keycloak/data/backup/${REALM} --realm ${REALM}
	  
echo "resultats normalement dans ${HOST_BKUP_DIR}"
ls -l ${HOST_BKUP_DIR}