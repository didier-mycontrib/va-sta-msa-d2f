#Create a Certificate Signing Request (.CSR) from our key. 
#This will prompt you for details to include in the certificate, 
#it is important to set the "Common Name" to match the hostname i.e. xyz
#openssl req -new -key xyz.key -out xyz.csr

# Generate the certificate(.crt)
#openssl req -x509 -sha256 -days 365 -key xyz.key -in xyz.csr -out xyz.crt

openssl req -nodes -newkey rsa:2048 -sha256 -keyout myserver.key -out server.csr -utf8
