# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.
  
  #configuration of hostmanager plugin 
  #(vagrant plugin install vagrant-hostmanager) :
  config.hostmanager.enabled = true
  #config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "hashicorp/bionic64"
  config.vm.hostname = "d2f2021"
  
  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.

  #NB: to allow symbolic links we must running vagrant as admin
  #NB: this config is also necessary for docker to follow symlinks on shared folders
  config.vm.provider "virtualbox" do |v|
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  end

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. 
  # NOTE: This will enable public access to the opened port
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 443, host: 443
  config.vm.network "forwarded_port", guest: 8443, host: 8443
  config.vm.network "forwarded_port", guest: 8888, host: 8888
  config.vm.network "forwarded_port", guest: 8989, host: 8989
  config.vm.network "forwarded_port", guest: 27017, host: 27018
  config.vm.network "forwarded_port", guest: 8230, host: 8230
  config.vm.network "forwarded_port", guest: 8231, host: 8231
  config.vm.network "forwarded_port", guest: 8232, host: 8232
  config.vm.network "forwarded_port", guest: 8998, host: 8998
  #80(80 en interne) pour des access http via kong-gateway
  #443 (443 en interne) pour des access https via kong-gateway
  #8998 (8998 en interne) pour des access à jenkins console (:8080 inside docker)
  #8888 (8888 en interne) pour des access directs au frontend ng-bs4-app ou resa-app angular
  #8989 (8989 en interne) pour des access directs à keycloak (en mode dev)
  #8001 (8001 en interne) pour des access à l'admin de kong (utilisé en interne par kong-gui)
  #pour des raisons de securité :8001 en démo seulement , loopback api conseillé en prod
  #27018 (27017 en interne) pour des access à mongodb server
  #8230,8231,8232 (idem en interne) pour des access directs aux backends qcm-api,ddc-api,...
  

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"
  #config.vm.network "private_network", type: "dhcp"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
     vb.memory = "2048"
  #    vb.memory = "4096"
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
  
  #config.vm.provision "shell", path: "xyz.sh"
  #Install the plugin: vagrant plugin install vagrant-docker-compose
  
  
  # pour que cette config "vagrant" soit au plus proche de la config "VPS de prod" , plus d'installation automatique de docker-ce et docker-compose
  # ici , mais scripts à lancer
  #config.vm.provision :docker
  #config.vm.provision :docker_compose
  
  # le réseau interne docker "mynetwork" sera utilisé pour communiquer entre les containers
  # pour que cette config "vagrant" soit au plus proche de la config "VPS de prod" , plus de config "docker-compose" automatique
  # ici , mais scripts à lancer

end
