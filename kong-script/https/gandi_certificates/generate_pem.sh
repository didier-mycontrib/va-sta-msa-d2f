cat www.d-defrance.fr.crt > certificate.crt
openssl x509 -inform PEM -in certificate.crt > www.d-defrance.fr.pem
cat www.d-defrance.fr.pem gandi-intermediate-septembre2024.pem UserTrustRootCa-2038.pem > certificate.pem  
cp certificate.pem ./temp/certificate.pem