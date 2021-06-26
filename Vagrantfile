# -*- mode: ruby -*-
# vi: set ft=ruby :
#
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'config'

$CONFIG=Config.load()
$POST_MESSAGE = <<MESSAGE_EOF
 -------------------------------------------------------------------
  Your Ansible-BOX is up and running...
 -------------------------------------------------------------------
MESSAGE_EOF


Vagrant.configure("2") do |config|
  config.vm.define "ansible-box"

  config.vm.box         = $CONFIG['vagrant']['box']
  config.vm.box_version = $CONFIG['vagrant']['box_version']
  config.vm.hostname    = "ansible-box"

# config.vm.network "forwarded_port", guest: 3001, host: 3001, host_ip: "127.0.0.1"
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provider :virtualbox do |vb|
    vb.name   = "devbox"
    vb.memory = $CONFIG['vbx']['memory']
    vb.cpus   = $CONFIG['vbx']['cpus']

    # Fixes some DNS issues on some networks
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.vm.provision :shell, name: "ansible", path: "provision/scripts/ansible.sh"

  config.vm.provision :ansible_local do |ansible|
    ansible.verbose           = false
    ansible.playbook          = "playbook.yml"
    ansible.install_mode      = :default
    ansible.config_file       = "ansible.cfg"
    ansible.galaxy_role_file  = "requirements.yml"
    ansible.galaxy_roles_path = "/etc/ansible/roles"
    ansible.galaxy_command    = "sudo ansible-galaxy install --role-file=%{role_file} --roles-path=%{roles_path} --force"
  end

  # Post-provision message
  config.vm.post_up_message = $POST_MESSAGE
end
