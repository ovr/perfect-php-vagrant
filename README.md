My Vagrant Development Box
==========================

* PHP 5.6
* Nginx (Web server)
* [Zephir Language](https://github.com/phalcon/zephir) (Compiled high level language aimed to the creation of C-extensions for PHP)
* [Phalcon 2](https://github.com/phalcon/cphalcon/tree/2.0.0) (Framework for PHP on Zephir)
* [Lynx](https://github.com/lynx/lynx) (ORM/DBAL for PHP on Zephir)
* [Composer](https://getcomposer.org/) (Dependency Manager for PHP)

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
