openssl req -nodes -newkey rsa:2048 -sha256 -keyout myserver.key -out server.csr -utf8

2048bits nécessaire !!!! pour gandi et Sectigo

=================
Country Name:FR
State_Province: Normandie
Locality : Vernon
Organization Name: Didier Defrance Consultant
Common Name: www.d-defrance.fr
email: didier@d-defrance.fr

No challenge password

===============
NB: fichier myserver.key (clef privée) à déplacer en zone confidentielle !!!!


=================

NB: fichiers .pem
recupérés via firefox depuis url de type https://www.d-defrance.fr:8443/keycloak/realms/myrealm/.well-known/openid-configuration
puis "afficher le certificat" .

Validités:
www.d-defrance.fr est valable 1an du 5/4/2023 au 5/4/2024
certificat de Gandi est valable 10ans jusqu'au 11/09/2024
USERTrust RSA Certification Authority (Root_CA) : valable jusqu'au 18/01/2038

NB: cerficate.pem (www-d-defrance-fr-chain.pem) peut se reconstruire en concatenant certificate.crt , gandi-intermediate-septembre2024.pem et UserTrustRootCa-2038.pem
selon dates de validité !!!
