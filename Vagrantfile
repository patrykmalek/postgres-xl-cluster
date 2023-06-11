# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  # Konfiguracja 4 wirtualnych maszyn na potrzeby laboratorium AGH ASK
  config.vbguest.auto_update = false
  config.vbguest.iso_path = "/usr/share/virtualbox/VBoxGuestAdditions.iso"
  
  config.vm.define "node1" do |node1|
    node1.vm.box = "debian/buster64"
    node1.vm.hostname = "node1"
    node1.vm.network "private_network", ip: "10.0.0.101"
    node1.vm.network "forwarded_port", guest: 5432, host: 54321, id: "postgresql-1"
    node1.vm.network "forwarded_port", guest: 22, host: 2201, auto_correct: true, id: "ssh"
    node1.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
    # Skrypt instalujący PostgreSQL
    node1.vm.provision "shell", path: "postgres-install.sh"
    node1.vm.provision "shell", path: "etc-hosts.sh"
  end

  config.vm.define "node2" do |node2|
    node2.vm.box = "debian/buster64"
    node2.vm.hostname = "node2"
    node2.vm.network "private_network", ip: "10.0.0.102"
    node2.vm.network "forwarded_port", guest: 5432, host: 54322, id: "postgresql-2"
    node2.vm.network "forwarded_port", guest: 22, host: 2202, auto_correct: true, id: "ssh"
    node2.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
    # Skrypt instalujący PostgreSQL
    node2.vm.provision "shell", path: "postgres-install.sh"
    node2.vm.provision "shell", path: "etc-hosts.sh"
  end

  config.vm.define "node3" do |node3|
    node3.vm.box = "debian/buster64"
    node3.vm.hostname = "node3"
    node3.vm.network "private_network", ip: "10.0.0.103"
    node3.vm.network "forwarded_port", guest: 5432, host: 54323, id: "postgresql-3"
    node3.vm.network "forwarded_port", guest: 22, host: 2203, auto_correct: true, id: "ssh"
    node3.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
    # Skrypt instalujący PostgreSQL
    node3.vm.provision "shell", path: "postgres-install.sh"
    node3.vm.provision "shell", path: "etc-hosts.sh"
  end

  config.vm.define "node4" do |node4|
    node4.vm.box = "debian/buster64"
    node4.vm.hostname = "node4"
    node4.vm.network "private_network", ip: "10.0.0.104"
    node4.vm.network "forwarded_port", guest: 5432, host: 54324, id: "postgresql-4"
    node4.vm.network "forwarded_port", guest: 22, host: 2204, auto_correct: true, id: "ssh"
    node4.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
    # Skrypt instalujący PostgreSQL
    node4.vm.provision "shell", path: "postgres-install.sh"
    node4.vm.provision "shell", path: "etc-hosts.sh"
  end

  config.vm.define "node5" do |node5|
    node5.vm.box = "debian/buster64"
    node5.vm.hostname = "node5"
    node5.vm.network "private_network", ip: "10.0.0.105"
    node5.vm.network "forwarded_port", guest: 5432, host: 54325, id: "postgresql-5"
    node5.vm.network "forwarded_port", guest: 22, host: 2205, auto_correct: true, id: "ssh"
    node5.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
    # Skrypt instalujący PostgreSQL
    node5.vm.provision "shell", path: "postgres-install.sh"
    node5.vm.provision "shell", path: "etc-hosts.sh"
  end

end