# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/centos-7"
  config.vm.box_version = "201808.24.0"
  config.vm.box_check_update = false
  config.vbguest.auto_update = true

  config.vm.network :forwarded_port, guest: 3306, host: 3307
  config.vm.network :forwarded_port, guest: 6379, host: 6379
  config.vm.network :forwarded_port, guest: 8081, host: 8081 # redis-commander

  config.vm.provision :shell, preserve_order: true, path: "install.sh"
  config.vm.provision :shell, preserve_order: true, path: "redis/install_redis.sh"
  config.vm.provision :shell, preserve_order: true, path: "redis/install_nodejs8_and_redis_commander.sh"

end
