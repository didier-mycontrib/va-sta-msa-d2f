sudo mkdir -p /var/my-docker-volumes
sudo chmod 755 /var/my-docker-volumes

sudo mkdir -p /var/my-docker-volumes/keycloak/data
sudo chmod ag+w  /var/my-docker-volumes/keycloak/data 

sudo mkdir -p /var/my-docker-volumes/mongo/data/db
sudo chmod ag+w  /var/my-docker-volumes/keycloak/data 

sudo mkdir -p /var/my-docker-volumes/ddc-app-posts/images
sudo chmod ag+w /var/my-docker-volumes/ddc-app-posts
sudo chmod ag+w /var/my-docker-volumes/ddc-app-posts/images

sudo mkdir -p /var/my-docker-volumes/keycloak/data/backup
sudo chmod 755 /var/my-docker-volumes/keycloak/data/backup
sudo ln -s  /var/my-docker-volumes/keycloak/data/backup /base/conf-docker/keycloak/backup/backup-symlink

sudo mkdir -p /var/certs

#for tar backup of mongo data:
sudo mkdir -p /var/my-backups