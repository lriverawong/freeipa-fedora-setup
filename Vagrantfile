# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  # Box Settings
  # config.vm.box = "ubuntu/trusty64"
  config.vm.box = "fedora/29-cloud-base"

  # Provider Settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 1
  end

  # Vagrant's "change host name" sets the short host name.  Before
  # we repair /etc/hosts (see below) let's reset /etc/hostname to
  # the *full* host name
  #
  config.vm.provision "shell",
    inline: "hostname --fqdn > /etc/hostname && hostname -F /etc/hostname"

  # Vagrant's "change host name" capability for Fedora maps hostname
  # to loopback.  We must repair /etc/hosts
  #
  config.vm.provision "shell",
    inline: "sed -ri 's/127\.0\.0\.1\s.*/127.0.0.1 localhost localhost.localdomain/' /etc/hosts"

  config.vm.define "server" do |server|
    server.vm.network "private_network", ip: "192.168.100.10"
    server.vm.hostname = "server.ipademo.local"
    server.vm.provision "shell", path: "bootstrap.sh"
  end

  config.vm.define "client" do |client|
    client.vm.network "private_network", ip: "192.168.100.11"
    client.vm.hostname = "client.ipademo.local"
    client.vm.provision "shell", path: "bootstrap.sh"
  end

  # Folder Settings
  config.vm.synced_folder ".", "/vagrant"
  
end