FROM nginx:1.29

#adding ping and curl command for debug via docker run -it .... /bin/bash
#RUN apt-get update && apt-get install -y iputils-ping && apt-get install -y curl

#copy angular app :
COPY ddc-app/ /usr/share/nginx/html/ddc-app/
COPY tp-app/ /usr/share/nginx/html/tp-app/
#COPY qcm-app/ /usr/share/nginx/html/qcm-app/
COPY index.html /usr/share/nginx/html

#copy docker-nginx.conf for reverse-proxy 
COPY docker-nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
