Test interne :
==============
frontends-angular:

curl http://localhost:8989/ddc-app/
curl http://localhost:8989/ddc-app/index.html
curl http://localhost:8989/qcm-app/
curl http://localhost:8989/qcm-app/index.html
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

curl http://localhost:1337
--> konga (open source kong gui)



via kong-api:
===========

curl http://localhost:8000/res-api/public/ressource
curl http://localhost:8000/news-api/public/publication
curl http://localhost:8000/user-api/private/user
curl http://localhost:8000/qcm-api/public/qcm
curl http://xyz.mycompany.fun:8000/qcm-api/public/qcm


curl http://localhost:8000/ddc-app/index.html
curl http://xyz.mycompany.fun:8000/ddc-app/index.html
--> angular app via kong (ok with WS call)

============
avec 127.0.0.1   localhost   xyz.mycompany.fun dans C:\Windows\System32\drivers\etc\hosts

http://xyz.mycompany.fun:8000/ddc-app/index.html
http://xyz.mycompany.fun:1337
http://xyz.mycompany.fun:8000/qcm-api/public/qcm


possible en plus de 

http://localhost:8000/resa-app/index.html
http://localhost:1337 (konga gui/dashbord) with username=admin , pwd=adminpwd for example
dans (konga gui/dashbord) , default/direct connection (from konga docker container to kong-gateway container)
has this URL : http://kong-gateway:8001 -no need of expose :8001 in Vagrantfile)