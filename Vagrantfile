# Require YAML module
require 'yaml'

# Read YAML file with box details
configuration = YAML.load_file('config.yaml')

Vagrant.configure(2) do |config|
    config.vm.box = configuration["box"]

    config.vm.network "private_network", ip: "10.10.10.150"

    config.vm.provider "virtualbox" do |vb|
        vb.memory = configuration["ram"]
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end

    config.vm.provision :shell, :path => "vagrant/install.sh"
    config.vm.provision :shell, :path => "vagrant/scripts/php.sh"
    config.vm.provision :shell, :path => "vagrant/scripts/zephir.sh"
    config.vm.provision :shell, :path => "vagrant/scripts/phalcon.sh"
    config.vm.provision :shell, :path => "vagrant/scripts/nginx.sh"
end
