NB: ce projet (va-sta-msa-d2f) comporte une configuration "docker + kong_api_gateway" cohérente
pour les parties frontend_angular + backend nodeJs_express_mongoDB du site web de d-defrance.fr
===============================================================================================
2 profiles (contextes d'exécution) différents:

* profil "vagrant / VM_linux_sous_windows" pour tests d'intégration (pré-production)
* profil "VPS" pour production simple sur une seule VM hébergée sur le cloud

===============================================================================================
Dans un contexte/profile "vagrant" , le fichier principal "Vagrantfile" sera exploité à fond.
Au sein de la VM gérée par vagrant 
   - $HOME vaudra /home/vagrant
   - le chemin de base sera /vagrant
   - via un lien symbolique construit via la commande
          ln -s /vagrant va-sta-msa-d2f
     lancee au sein de /home/vagrant
     le chemin de base  pourra etre exprimé via $HOME/va-sta-msa-d2f


===============================================================================================
Dans un contexte/profile "VPS" :
  -  le fichier  "Vagrantfile" (et les .bat d'accompagnement) seront ignorés .
  - $HOME vaudra /home/ubuntu
  - le chemin de base sera /home/ubuntu/va-sta-msa-d2f
    et ce chemin de base  pourra etre exprimé via $HOME/va-sta-msa-d2f
  