Attention: besoin de reconfigurer le firewall docker apres redémarrage du conteneur myNginx ou kong-gateway
----> reinit-vps-gateway-access.sh 


============
jenkins pas sur cette machine (VPS linux) mais sur autre ordinateur (ex: dev)

=====
dcr is for "docker container restart"
====
NB: after a new delivery of docker image
1) cd va-sta-msa-d2f/conf-docker/…
2) sh docker-compose-down.sh
3) sh  docker-image-pull-....sh
4) sh docker-compose-up-bg.sh

or adcr (absolute_path dcr)