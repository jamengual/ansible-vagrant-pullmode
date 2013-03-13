#env bash
trap 'exit 1' 0 1 2 5 15

withsudo="sudo"

#Color definition
BLACK="\033[0;30m"
BLUE="\033[0;34m"
GREEN="\033[0;32m"
CYAN="\033[0;36m"
RED="\033[0;31m\]"    
PURPLE="\033[0;35m"    
BROWN="\033[0;33m"    
LIGHT_GREY="\033[0;37m"    
DARK_GREY="\033[1;30m"    
LIGHT_BLUE="\033[1;34m"    
LIGHT_GREEN="\033[1;32m"    
LIGHT_CYAN="\033[1;36m"    
LIGHT_RED="\033[1;31m"    
LIGHT_PURPLE="\033[1;35m"    
YELLOW="\033[1;33m"    
WHITE="\033[1;37m"    
NO_COLOUR="\033[0m"

## Checking if python is installed
echo "Checking if python is installed...."
ispython=`which python`
if [[ -z $ispython ]];then
  echo -e "$LIGHT_RED Python is not installed please install python 2.4+ $NO_COLOUR"
else
  ## Checking if pip can be used
  ispip=`which pip`
  if [[ -n $ispip ]]; then
    echo "Installing python modules using pip"
    command="pip install"
  else
    echo "Installing python modules using easy_install"
    command="easy_install"
  fi
  ## Installing required modules
  echo "Installing PyYAML..."
  $withsudo $command PyYAML
  echo "Installing jinja2..."
  $withsudo $command jinja2
  echo "Installing paramiko..."
  $withsudo $command paramiko
  echo "Installing TKinter"
  $withsudo $command GTKUtils 
  #echo "Installing EasyGui"
  #$withsudo $command easygui

  ## Checking if git is installed
  isgit=`which git`
  if [[ -n $isgit ]]; then
    ## Making sure there is no old installs
    rm -rf /ansible-vagrant-pullmode
    mkdir ansible-vagrant-pullmode && cd ansible-vagrant-pullmode
    echo "Cloning ansible-vagrant-pullmode repo"
    git clone -b master https://github.com/jamengual/ansible-vagrant-pullmode.git ~/ansible-vagrant-pullmode 
    ## installing ansible
    echo "localhost" > ~/ansible_hosts
    export ANSIBLE_HOSTS=~/ansible_hosts
    git clone git://github.com/ansible/ansible.git ~/ansible 
    source ~/ansible/hacking/env-setup
    echo "Running ansible and vagrant playbook"
    cd ~/ansible-vagrant/ && ansible-playbook --connection=local dev-install.yml
    echo "Removing Ansible installation"
    rm -rf ../ansible-vagrant-pullmode
  else
    echo "Git is not installed, please install git"
    exit 1
  fi
fi
