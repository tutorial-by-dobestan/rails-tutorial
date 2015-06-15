# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.hostname = "staging.railstutorial.com"
  config.vm.network "private_network", ip: "192.168.301.01"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "deploy/vagrant.yml"
  end
end
