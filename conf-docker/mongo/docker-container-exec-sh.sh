docker exec -it mongoDB sh
#cat /run/secrets/mongo_secret_pwd

# mongosh -u root -p root_or_othervalue
#   use qcm_db;
#   db.qcms.find();
#   exit
#exit

#Attention, la propriété MONGO_INITDB_ROOT_PASSWORD_FILE 
#de mongo/docker n'est là que pour fixer la valeur initiale  (au premier démarrage)
#pas de changement dynamique/automatique  àprès un redémarrage

#si besoin de changer un password déja en place
# mongosh -u root -p ancien_password
#  use admin
#  db.changeUserPassword("root","new-pwd")
#  exit


