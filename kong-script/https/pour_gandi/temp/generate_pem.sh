openssl rsa -in certificate.key -text > keyfile.pem
openssl x509 -inform PEM -in certificate.crt > certfile.pem
  