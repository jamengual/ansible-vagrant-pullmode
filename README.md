ansible-vagrant pull mode integration
======================================

Ansible playbooks for vagrant in pull mode

This script/playbook for ansible allow developers to configure their own dev environment on they local machines using Vagrant and Ansible to match the configurations of the production environment or similar.

Please note that this script was build using bash so if you are a windows user you will not be able to use this script and you will have to get a copy of the dev enviroment from someone else and install it on your windows copy of virtual box.

Before using this script make sure you have all the minimum requeriments pre installed.

Requeriments :
```
1.- Virtualbox latest version https://www.virtualbox.org/wiki/Downloads

2.- Vagrant latets version http://downloads.vagrantup.com

3.- Python 2.x, pip or setuptools required.

4.- A vagrant package linux system ready to use ( please refeer to http://docs-v1.vagrantup.com/v1/docs/getting-started/packaging.html) and hosted somewhere elsei(so that the install script can download it ).

5.- Upload the vagrant_dev_install.sh script to a webserver 
```

To run the script simply call from your terminal :
```
curl http://yourserver/vagrant_dev_install.sh |bash
```

The process takes about 10 minutes depending on your internet connection speed and computer speed, after this you will have to add the following entries on your host table (/etc/hosts):
```
127.0.0.1 dev.projectname dev.drupal
```

Note : If you already have this line in your host table, add this two entries at the end of line.

After that you will be able to access phpmyadmin to import the db dump at :
```
http://phpmyadmin.projectname:8888 (user:root, pass:root )
```

and after uploading the db you can see the site at :
```
http://dev.projectname:8888
```

  This Process will setup a virtual machine in you computer, basically is a server that can consume lots of resources so make sure you are not using all the memory and cpu on your computer while using the dev enviroment otherwise you will see slow response on the refresh of each page.

  To stop the virtual machine for running you can run :
```
  cd ~/Projectname
  vagrant halt
```

  That will shutdown the virtual machine gracefully after 10 second aprox.

  If you want to add more memory or CPU to the virtual machine then you can take a look at the vagrantup.com documentation on how to do that.

  To connect to the VM mysql instance from your local machine you need to use mysql command with the following options :
```
  mysql -P 3366 -u root -p -h localhost --protocol=tcp
```

  That way mysql client will connect using tcp to the VM otherwise the default is socket and if you have your own mysql server running you will connect to your mysql instance.
