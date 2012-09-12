# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "Ubuntu12.04"
  # config.vm.box_url = "http://domain.com/path/to/above.box"
  #$config.vm.boot_mode = :gui

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  config.vm.network :hostonly, "192.168.33.10"

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  config.vm.forward_port 80, 8888
  #config.vm.forward_port 22, 2222 
  #config.vm.forward_port 443, 443 
  
  # Enable share folder with the system
  config.vm.share_folder "v-data", "/vagrant_data", "~/vagrant_data"

end
