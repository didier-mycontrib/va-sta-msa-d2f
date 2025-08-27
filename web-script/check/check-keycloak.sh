echo "************ direct keycloak local well known config  ***************"
curl http://localhost:8989/keycloak/realms/master/.well-known/openid-configuration
echo "************ via nginx/https keycloak well known config  ***************"
curl https://www.d-defrance.fr/keycloak/realms/master/.well-known/openid-configuration