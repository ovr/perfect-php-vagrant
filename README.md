My Vagrant Development Box
==========================

* php
* nginx
* [Zephir](https://github.com/phalcon/zephir)
* [Phalcon 2](https://github.com/phalcon/cphalcon/tree/2.0.0)
* [Lynx](https://github.com/lynx/lynx)

## Getting Started

1. Download and install [VirtualBox](https://www.virtualbox.org/)
2. Download and install [Vagrant](http://www.vagrantup.com/)
3. Install project

Dont forget to install vagrant

```
vagrant plugin install vagrant-hostmanager
```

## Installation

```bash
git clone https://github.com/ovr/my-vagrant.git
cd my-vagrant
nano config.yaml
vagrant up
```

Weight when installation will be finished and open `http://servername/` to see info about server

## Vagrant

To stop and reinstall machine please run

```bash
vagrant halt && vagrant destroy -f && vagrant up
```

License
-------

This project is open-sourced software licensed under the MIT License. See the LICENSE file for more information.
