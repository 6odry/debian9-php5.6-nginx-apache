# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian9"
  config.vm.define "test_task"
  config.vm.network "forwarded_port", guest: 80, host: 8080 # Перенаправление порта 80 (Nginx) с гостевой машины на порт 8080 хостовой машины
  config.vm.network "forwarded_port", guest: 8888, host: 8888 # Перенаправление порта 8888 (Apache) без изменения порта
  

  # Определение провайдера, в данном случае VirtualBox
  config.vm.provider "virtualbox" do |vb|
    # Конфигурация CPU и RAM
    vb.name = "debian9"
    vb.cpus = 2
    vb.memory = "2048"  # 2 GB RAM (в МБ)
  end
  
  config.vm.provision "ansible" do |ansible|
    ansible.compatibility_mode = '2.0'
    if ENV['PLAYBOOK']
      ansible.playbook = ENV['PLAYBOOK']
    else
      ansible.playbook = "pb.yml" # По умолчанию используйте основной плейбук
    end
  end
end
