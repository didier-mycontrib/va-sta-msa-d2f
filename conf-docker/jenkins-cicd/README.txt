URL jenkins console: localhost:8998 (:8080 habituellement et en interne dans container docker)
plugins sélectionnés : git et pipeline
admin/admin (by default)
==============
http://www.d-defrance.fr:8998
apres
$HOME/va-sta-msa-d2f/web-script/enable-vps-jenkins.sh
avant
$HOME/va-sta-msa-d2f/web-script/disable-vps-jenkins.sh
===============
Jenkinsfile = default pipeline file in scm/git
H/2 * * * * 
for every 2 mn
==============
backend-ddc
pipeline from scm/git : https://github.com/didier-mycontrib/ddc-api , branch */main
=============
backend-qcm
pipeline from scm/git : https://github.com/didier-mycontrib/qcm-api , branch */main
=============
backend-user
pipeline from scm/git : https://github.com/didier-mycontrib/user-api, branch */main
=============
ddc-app
pipeline from scm/git : https://github.com/didier-mycontrib/ddc-app, branch */main
====
qcm-app
pipeline from scm/git : https://github.com/didier-mycontrib/qcm-app, branch */main
====

Apres quelques tests
====================

===> ne pas activer jenkins en production (un simple crontab suffit)
     peaufiner ulterieurement jenkins pour la pre-prod et l'intégration continue