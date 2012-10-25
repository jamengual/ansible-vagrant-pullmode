ansible-vagrant pull mode integration
======================================

Ansible Playbooks for Vagrant dev environments

This script/playbook for ansible allow developers to configure their own dev environment on they local machines using Vagrant and Ansible to match the configuration of the production environment.

Please note that this script was build using bash so if you are a windows user you will not be able to use this script and you will have to get a copy of the dev enviroment from someone else and install it on your windows copy of virtual box.

Before using this script make sure you have all the requeriments pre installed.

Requeriments :
```
1.- Virtualbox latest version https://www.virtualbox.org/wiki/Downloads

2.- Vagrant latets version http://downloads.vagrantup.com

3.- Python 2.x, pip or setuptools required.
```

To run the script simply call from your terminal :
```
curl -uusername http://files.amengual.cl/ansible-vagrant/meedan_dev_install.sh |bash -c
```

Note : Use the credentials provided.

The process takes about 10 minutes depending on your internet connection speed and computer speed, after this you will have to add the following entries on your host table (/etc/hosts):
```
127.0.0.1 checkdesk phpmyadmin.checkdesk
```

Note : If you already have this line in your host table, add this two entries at the end of line.

After that you will be able to access phpmyadmin to import the db dump at :
```
http://phpmyadmin.checkdesk:8888
```

and after uploading the db you can see the site at :
```
http://checkdesk:8888
```

  This Process will setup a virtual machine in you computer, basically is a server that can consume lots of resources so make sure you are not using all the memory and cu on your computer while using the dev enviroment otherwise you will see slow response on the refresh of each page.

  To stop the virtual machine for running you can run :
```
  cd ~/CheckDesk
  vagrant halt
```

  That will shutdown the virtual machine gracefully after 10 second aprox.

  If you want to add more memory or CPU to the virtual machine then you can take a look at the vagrantup.com documentation on how to change those settings and cutomize your config file.

