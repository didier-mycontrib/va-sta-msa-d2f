# move certificate .key .pem  to /var/certs
#NB: certificate.pem is www.d-defrance.pem with concatenation of gandi and root_ca pem
#sudo mkdir /var/certs
sudo mv ./certificate.key /var/certs
sudo cp ./certificate.pem /var/certs
#sudo chmod ...
#sudo chown ...
  