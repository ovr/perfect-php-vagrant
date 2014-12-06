
Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.network "private_network", ip: "10.10.10.150"

    config.vm.provider "virtualbox" do |vb|
        vb.memory = 1024
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end

    config.vm.provision :shell do |shell|
        shell.path = "vagrant/install.sh"
    end
end
