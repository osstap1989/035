# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_check_update = false
  config.vm.hostname = "hometask"  
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "public_network", ip: "192.168.1.100", 
    use_dhcp_assigned_default_route: true
  config.vm.define "hometask"
  config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = "1024"
  config.vm.provision "shell", path: "./install_apache.sh"
  end
end
