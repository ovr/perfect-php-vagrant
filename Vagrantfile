
Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.network "private_network", ip: "10.10.10.150"

    config.vm.provider "virtualbox" do |vb|
        vb.memory = 1024
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end

    config.vm.provision :shell, :path => "vagrant/install.sh"
    config.vm.provision :shell, :path => "vagrant/scripts/php.sh"
    config.vm.provision :shell, :path => "vagrant/scripts/zephir.sh"
    config.vm.provision :shell, :path => "vagrant/scripts/phalcon.sh"
    config.vm.provision :shell, :path => "vagrant/scripts/nginx.sh"
end
