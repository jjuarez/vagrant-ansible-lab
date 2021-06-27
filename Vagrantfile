# -*- mode: ruby -*-
# vi: set ft=ruby :

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

  config.vm.define $CONFIG['vagrant']['name']

  config.vm.box         = $CONFIG['vagrant']['box']
  config.vm.box_version = $CONFIG['vagrant']['box_version']
  config.vm.hostname    = $CONFIG['vagrant']['name']

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provider :virtualbox do |vb|
    vb.name   = $CONFIG['vagrant']['name']
    vb.memory = $CONFIG['vbx']['memory']
    vb.cpus   = $CONFIG['vbx']['cpus']

    # Fixes some DNS issues on some networks
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.vm.provision :shell, name: "pre-ansible", path: "provision/shell/pre-ansible.sh", args: "#{$CONFIG['provision']['ansible']['version']}"
  config.vm.provision :ansible_local do |ansible|
    ansible.verbose            = $CONFIG['provision']['ansible']['verbose']
    ansible.config_file        = "provision/ansible/ansible.cfg"
    ansible.compatibility_mode = "2.0"
    ansible.playbook           = "provision/ansible/playbook.yml"
    ansible.galaxy_role_file   = "provision/ansible/requirements.yml"
    ansible.galaxy_roles_path  = "/etc/ansible/roles"
    ansible.galaxy_command     = "sudo ansible-galaxy install --role-file=%{role_file} --roles-path=%{roles_path} --force"
  end

  config.vm.post_up_message = $POST_MESSAGE
end
