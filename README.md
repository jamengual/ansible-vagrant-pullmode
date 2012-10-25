ansible-vagrant pull mode integration
======================================

Ansible Playbooks for Vagrant dev environments

This script/playbook for ansible allow developers to configure their own dev environment on they local machines using Vagrant and Ansible to match the configuration of the production environment.

Please note that this script was build using bash so if you are a windows user you will not be able to use this script and you will have to get a copy of the dev enviroment from someone else and install it on your windows copy of virtual box.

Before using this script make sure you have all the requeriments pre installed.

Requeriments :

1.- Virtualbox latest version https://www.virtualbox.org/wiki/Downloads

2.- Vagrant latets version http://downloads.vagrantup.com

3.- Python 2.x, pip or setuptools required.

To run the script simply call from your terminal :

curl http://files.amengual.cl/ansible-vagrant/meedan_dev_install.sh |bash -c

Blablabla....