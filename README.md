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

## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

This project is just a lab to expermiment with the ansible local provider onver Vagrant VMs, and may to use it as some kind of template for other projects

### Built With

The project in strongly based on the following tools
* [Vagrant](https://www.vagrantup.com)
* [Docker](https://www.docker.com)
* [ansible](https://www.ansible.com/)
* [Ubuntu](https://ubuntu.com/)
* [bash](https://www.gnu.org/software/bash/)

## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

To work with this project you need to have installed [Vagrant](https://vagrantup.com) an its default providers, as you might know these are [VirtualBox](https://www.virtualbox.org/) and [Docker](https://docker.com/) for this specific use case
### Installation

2. Install the software pre-requisites
   
2. Clone the repo

   ```shell
   git clone https://github.com/jjuarez/vagrant-ansible-lab.git
   ```

3. Configure the resources to use for your Vitual Machine editing the configuration file `config/vm.yml`

## Usage

The example of use for this lab is extremely easy, just run the Virtual Machine

```shell
vagrant up
```

## Roadmap

See the [open issues](https://github.com/jjuarez/vagrant-ansible-lab/issues) for a list of proposed features (and known issues).

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See [`LICENSE`](./LICENSE.txt) for more information.

## Contact

Your Name - [@thejtoken](https://twitter.com/thejtoken) - email@example.com

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

