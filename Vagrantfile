# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/centos-7.0-64-puppet-enterprise"
  config.vm.hostname = "edb-jenkins"
  config.vm.box_check_update = true
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "private_network", ip: "192.168.33.19"
  # config.vm.network "public_network"
  config.vm.synced_folder "./", "/home/vagrant/edb-jenkins"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = "1"
  end

  config.vm.provision "shell", inline: <<-SHELL
    yum install -y wget git lvm2 device-mapper-libs
    /opt/puppet/bin/gem install r10k && ln -s /opt/puppet/bin/r10k /usr/bin/r10k || true
    cp /home/vagrant/edb-jenkins/Puppetfile /tmp && cd /tmp && r10k puppetfile install --verbose
    firewall-cmd --zone=public --add-port=8080/tcp --permanent && firewall-cmd --zone=public --add-service=http --permanent && firewall-cmd --reload
  SHELL

  config.vm.provision "puppet" do |puppet|
    puppet.temp_dir = "/tmp"
    puppet.options = ['--modulepath=/tmp/modules', '--verbose']
    puppet.hiera_config_path = "hiera.yaml"
  end
end
