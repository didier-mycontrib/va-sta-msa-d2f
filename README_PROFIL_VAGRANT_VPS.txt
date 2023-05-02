NB: ce projet (va-sta-msa-d2f) comporte une configuration "docker + kong_api_gateway" cohérente
pour les parties frontend_angular + backend nodeJs_express_mongoDB du site web de d-defrance.fr
===============================================================================================
2 profiles (contextes d'exécution) différents:

* profil "vagrant / VM_linux_sous_windows" pour tests d'intégration (pré-production)
  NB: vagrant doit être démarré en tant qu'administrateur pour pouvoir crééer des liens symboliques
* profil "VPS" pour production simple sur une seule VM hébergée sur le cloud

===============================================================================================
Dans un contexte/profile "vagrant" , le fichier principal "Vagrantfile" sera exploité au minimum pour ressembler à l'env de prod.
Au sein de la VM gérée par vagrant 
   - $HOME vaudra /home/vagrant
   - le chemin de base sera /vagrant
   - via un lien symbolique construit via la commande
          ln -s /vagrant va-sta-msa-d2f
     lancee au sein de /home/vagrant
     le chemin de base  pourra etre exprimé via $HOME/va-sta-msa-d2f
- via un lien symbolique construit via la commande
          ln -s /vagrant /base
     le chemin de base  pourra etre exprimé via /base


===============================================================================================
Dans un contexte/profile "VPS" :
  -  le fichier  "Vagrantfile" (et les .bat d'accompagnement) seront ignorés .
  - $HOME vaudra /home/ubuntu
  - le chemin de base sera /home/ubuntu/va-sta-msa-d2f (suite à git clone https://github.com/didier-mycontrib/va-sta-msa-d2f (dans /home/ubuntu))
    et ce chemin de base  pourra etre exprimé via $HOME/va-sta-msa-d2f
  - via un lien symbolique construit via la commande
          sudo ln -s /home/ubuntu/va-sta-msa-d2f /base
     (apres git clone ..../va-sta-msa-d2f dans  $HOME=/home/ubuntu)
     le chemin de base  pourra etre exprimé via /base

  NB: /base est pratique pour chemins absolus dans crontab
  
--------------
Ancien Jenkins plus activé (trop gourmand et pas indispensable):
URL console jenkins: http://www.d-defrance.fr:8998
apres
$HOME/va-sta-msa-d2f/web-script/enable-vps-jenkins.sh
avant
$HOME/va-sta-msa-d2f/web-script/disable-vps-jenkins.sh