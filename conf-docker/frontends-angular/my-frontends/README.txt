NB: 
- à l'interieur du conteneur docker "frontends-angular" , 
       le répertoire virtuel /usr/src/app/frontend-contents/ddc-app sera associé 
                  au volume /base/local-git-repositories/ddc-app/dist/ddc-app
        (pour actualisation dynamique après création/démarrage du conteneur docker)

       le répertoire virtuel /usr/src/app/frontend-contents/qcm-app sera associé 
                  au volume /base/local-git-repositories/qcm-app/dist/qcm-app
        (pour actualisation dynamique après création/démarrage du conteneur docker)
-----

//NB le repertoire frontends-content doit normalement
//comporter des copies des applications angulars 
//generée par ng build --prod (ex: my-app ou resa-app)
//avec dans index.html base href="." plutot que base href="/"