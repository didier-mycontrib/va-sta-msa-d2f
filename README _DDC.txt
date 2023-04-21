Test interne :
==============
frontends-angular:

curl http://localhost:8888/ddc-app/
curl http://localhost:8888/ddc-app/index.html
curl http://localhost:8888/qcm-app/
curl http://localhost:8888/qcm-app/index.html
--> angular app (ok sauf parties WS)

curl http://localhost:8230/qcm-api/public/qcm
--> json qcm list
    http://localhost:8230/qcm-api/private/reinit

NB: ddc-api = news-api + res-api

curl http://localhost:8231/res-api/public/ressource
     http://localhost:8231/res-api/private/reinit
     http://localhost:8231/news-api/public/publication
     http://localhost:8231/news-api/private/reinit
--> json ressource or publication list from ddc-api

curl http://localhost:8232/user-api/private/user
     http://localhost:8232/user-api/private/reinit
--> json user list 




via kong-api:
===========

curl http://localhost:80/res-api/public/ressource
curl http://localhost:80/news-api/public/publication
curl http://localhost:80/user-api/private/user
curl http://localhost:80/qcm-api/public/qcm
curl http://xyz.mycompany.fun:80/qcm-api/public/qcm


curl http://localhost:80/ddc-app/index.html
curl http://xyz.mycompany.fun:80/ddc-app/index.html
--> angular app via kong (ok with WS call)

============
avec 127.0.0.1   localhost   www.d-defrance.fr dans C:\Windows\System32\drivers\etc\hosts


http://www.d-defrance.fr:80/res-api/public/ressource
http://www.d-defrance.fr:80/news-api/public/publication
http://www.d-defrance.fr:80/qcm-api/public/qcm
http://www.d-defrance.fr:80/user-api/private/user

http://www.d-defrance.fr:80/ddc-app/index.html
http://www.d-defrance.fr:80/qcm-app/index.html

http://www.d-defrance.fr:80/index.html

http://www.d-defrance.fr:80/keycloak/realms/master/.well-known/openid-configuration
https://localhost:443/keycloak/realms/master/.well-known/openid-configuration 


