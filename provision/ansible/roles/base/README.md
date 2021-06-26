base
=========

A quick test of the local ansible with Vagrant

Requirements
------------

Having a proper installation of Vagrant and Virtual Box

Role Variables
--------------

- `base_package_list`: The list of packages to install by de module

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:
```yaml
---
- name: The playbook for the Ansible-BOX
  hosts: all
  become: true
  roles:
    - base
  vars:
    base_package_list:
      - gcc
      - make
```

License
-------

MIT

Author Information
------------------

Javier Juarez Martinez, I'm a SRE engineer at IBM Research, working in the Quantum project.
