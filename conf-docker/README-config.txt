docker network create mynetwork (à préalablement lancer via script .sh)
----------------
docker-compose build
docker-compose up &
docker-compose down
----------------
nginx ne sera plus utilisé en front 
kong-gateway sera utilisé comme point d'entrée (:80/:8000 et :8001 en admin)
