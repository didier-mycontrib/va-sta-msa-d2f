NB: 
- Au sein du répertoire va-sta-msa-d2f/conf-docker/frontends-angular 
      my-frontends sera un lien symbolique vers va-sta-msa-d2f/frontend-contents (alias /base/frontend-contents)
- à l'interieur du conteneur docker "frontends-angular" , 
       le répertoire virtuel /usr/src/app/frontend-contents sera associé 
                  au volume /base/frontend-contents (pour actualisation dynamique après création/démarrage du conteneur docker)
- et
    sudo ln -s /base/local-git-repositories/ddc-app/dist/ddc-app /base/frontend-contents/ddc-app 
    sudo ln -s /base/local-git-repositories/qcm-app/dist/qcm-app /base/frontend-contents/qcm-app 
-----

//NB le repertoire frontends-content doit normalement
//comporter des copies des applications angulars 
//generée par ng build --prod (ex: my-app ou resa-app)
//avec dans index.html base href="." plutot que base href="/"