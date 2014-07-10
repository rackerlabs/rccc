# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  ## Box config

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "rccc"
  config.vm.provider "virtualbox" do |v|
    v.name = "rccc"
    v.memory = 4096
    v.cpus = 1
  end

  ## Network config

  config.vm.network :private_network, ip: "192.168.22.10"

  ## Provision config

  config.vm.provision :shell, path: "java/bootstrap.sh", privileged: false
  config.vm.provision :shell, path: "python/bootstrap.sh", privileged: false
  config.vm.provision :shell, path: "ruby/bootstrap.sh", privileged: false
end
