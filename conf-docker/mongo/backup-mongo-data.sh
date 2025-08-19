#sauvegarde des données de mongo après arrêt du container:
sudo rm -rf /var/my-docker-volumes/mongo/data/db/diagnostic.data
sudo tar -Pcvf /var/my-backups/mongo_data_db.tar   /var/my-docker-volumes/mongo/data/db
#pour vérifier le contenu de l'archive: tar -tf /var/my-backups/mongo_data_db.tar