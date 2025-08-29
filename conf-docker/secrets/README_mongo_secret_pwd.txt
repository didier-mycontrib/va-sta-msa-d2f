.mongo_secret_pwd file of this directory
should not be in git repository (should be in .gitignore)
----
this file should contain the root password of mongoDB for production
it may be create via 
echo xyz > .mongo_secret_pwd
or 
read p ; echo $p >  .mongo_secret_pwd
read 
and chmod ??? .mongo_secret_pwd
------
Une fois le mot de passe choisi/configuré dans le fichier secrets/.mongo_secret_pwd
il faudra redémarrer dans l'ordre:
 1a) le conteneur "mongo" et si pas premier démarrage alors  selon étape
 1b) vérifier ou changer la valeur du password mongo pour l'utilisateur "root"
     selon mode opératoire plus bas
 2) tous les conteneurs "backend-..." utilisant mongo
    à savoir backend-tp , backend-qcm et backend-ddc
--------------------------------------------------------
pour vérifier la prise en compte du mot de passe:
lancer le script conf-docker/mongo/docker-container-exec-sh.sh 
et tenir compte des commentaires en fin de script

#Attention, la propriété MONGO_INITDB_ROOT_PASSWORD_FILE 
#de mongo/docker n'est là que pour fixer la valeur initiale  (au premier démarrage)
#pas de changement dynamique/automatique  àprès un redémarrage

#si besoin de changer un password déja en place
# mongosh -u root -p ancien_password
#  use admin
#  db.changeUserPassword("root","new-pwd")
#  exit