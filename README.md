[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<br />

<p align="center">
  <a href="https://github.com/jjuarez/vagrant-ansible-lab">
    <img src="docs/images/vagrant-logo-hashicorp.svg" alt="Vagrant Logo" width="300" height="100">
  </a>

  <h3 align="center">Vagrant Ansible LAB</h3>

  <p align="center">
    An Quick lab using Vagrant and ansible local!
    <br />
    <a href="https://github.com/jjuarez/vagrant-ansible-local/docs"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/jjuarez/vagrnt-ansible-local/issues">Report Bug</a>
    ·
    <a href="https://github.com/jjuarez/vagrant-ansible-local/issues">Request Feature</a>
  </p>
</p>

<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

## 📘 About The Project

[![asciicast](https://asciinema.org/a/422439.png)](https://asciinema.org/a/422439)

This project is just a lab to expermiment with the ansible local provider onver Vagrant VMs, and may to use it as some kind of template for other projects


### 🛠 Built With

The project in strongly based on these following tools:

  * [Vagrant](https://www.vagrantup.com)
  * [Docker](https://www.docker.com)
  * [ansible](https://www.ansible.com/)
  * [Galaxy](https://galaxy.ansible.com/)
  * [Ubuntu](https://ubuntu.com/)
  * [bash](https://www.gnu.org/software/bash/)


## 🛫 Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.


### Prerequisites

To work with this project you need to have installed [Vagrant](https://vagrantup.com) an its default providers, as you might know these are [VirtualBox](https://www.virtualbox.org/) and [Docker](https://docker.com/) for this specific use case


### Installation

  1. Install the software pre-requisites
  2. Clone the repo
     ```shell
     git clone https://github.com/jjuarez/vagrant-ansible-lab.git
     ```
  3. Configure the resources to use for your Vitual Machine editing the configuration file `config/vm.yml`, here's and example of
     this configuration:

     ```yaml
     ---
     vagrant:
       box: "ubuntu/focal64"
       box_version: "20210610"
     vbx:
       memory: 4096
       cpus: 2
     ansible:
       # Some ansible realted configurations...
       ...
     ```

## 🔌 Usage

The example of use for this lab is extremely easy, just run the Virtual Machine
  ```shell
  vagrant up
  ```
### Configuration & Customization

You can change the list of [Galaxy](https://galaxy.ansible.com) modules, for this lab we're are using:

  * [geerlingguy/ntp](https://galaxy.ansible.com/geerlingguy/ntp)
  * [geerlingguy/nodejs](https://galaxy.ansible.com/geerlingguy/nodejs)
  * [geerlingguy/docker](https://galaxy.ansible.com/geerlingguy/docker)

...because the goal of this lab was to emulate one of my current work stacks, but feel free to use whatever you want making changes over [./requirements.yml](./requirements.yml) config file.

Additionaly this lab has a custom ansible role called [`base`](./roles/base) which responsability is to install all the stuff
needed by your box

It is highly recommended to be able to work with the ansible project from outside the virtual machine, for which a workbench based on [pyenv](https://github.com/pyenv/pyenv) + [pipenv](https://pipenv.pypa.io/en/latest/) is provided, the details of work with this kind of environments are out of the scope of this documentation, please see the docs for those projects, anyway here's a basic guide about how to start with these tools and the lab:
  ```shell
  # Select your pre-installed python interpreter, we recommend you to use 3.8
  $ cd vagrant-ansible-lab
  $ pyenv local 3.8.10
  ```

  ```shell
  # Prepare the environment outsite the VM to work
  $ cd vagrant-ansible-lab
  $ pip install pipenv
  $ pipenv install --dev
  $ pipenv shell
  ```

If you need additional details about how to play with ansible + Vagrant this project has [good documenation](https://www.vagrantup.com/docs/provisioning/ansible_intro)

## 🏘 Roadmap

See the [open issues](https://github.com/jjuarez/vagrant-ansible-lab/issues) for a list of proposed features (and known issues).


## 🥼Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

  1. Fork the Project
  2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
  3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
  4. Push to the Branch (`git push origin feature/AmazingFeature`)
  5. Open a Pull Request


## 🔖 License

Distributed under the MIT License. See [`LICENSE`](./LICENSE.txt) for more information.


## ✉️ Contact

Your Name - [@thejtoken](https://twitter.com/thejtoken) - javier.juarez@gmail.com
Project Link: [https://github.com/jjuarez/vagrant-ansible-lab](https://github.com/jjuarez/vagrant-ansible-lab)


[contributors-shield]: https://img.shields.io/github/contributors/jjuarez/vagrant-ansible-lab.svg?style=for-the-badge
[contributors-url]: https://github.com/jjuarez/vagrant-ansible-lab/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/jjuarez/vagrant-ansible-lab.svg?style=for-the-badge
[forks-url]: https://github.com/jjuarez/vagrant-ansible-lab/network/members
[stars-shield]: https://img.shields.io/github/stars/jjuarez/vagrant-ansible-lab.svg?style=for-the-badge
[stars-url]: https://github.com/jjuarez/vagrant-ansible-lab/stargazers
[issues-shield]: https://img.shields.io/github/issues/jjuarez/vagrant-ansible-lab.svg?style=for-the-badge
[issues-url]: https://github.com/jjuarez/vagrant-ansible-lab/issues
[license-shield]: https://img.shields.io/github/license/jjuarez/vagrant-ansible.lab.svg?style=for-the-badge
[license-url]: https://github.com/jjuarez/vagrant-ansible-lab/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/javierjuarez/
[product-screenshot]: docs/images/screenshot.png

