# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## [Unreleased]

## [0.3.0] - 2023-02-17
### Added
- The private network is now configurable from outside the `Vagrantfile`

### Changed
- Updates the `Node.js` version to 18 releases
- Updates `ansible` to the version `7.2.0`
- From `pipenv` back to plain `pip`

### Removed
- The support for npm gobal packages

### Fixed


## [0.2.1] - 2021-09-24
### Added

### Changed
- Updates ansible to 4.2.X

### Removed

### Fixed


## [0.2.0] - 2021-06-27
### Added
- Mainly we supports ansible 4
- Adds some key configurations for the ansible provisioning in the external configuration
- Adds de feature of making configurable the ansible version in the `provision/shell/pre-ansible.sh` script
- Adds some development tools in the external virtual-evn: yamllint and flake8
- Adds support for NTP

### Changed
- Adds some useful options to the `provision/ansible/ansible.cfg`
- Back to the roles configuration in the playbook after some atempts to use collections
- Splits the virtual-env packages into development and "production"

### Removed
- The old support for Travis-Ci in the `base` role

### Fixed


## [0.1.0] - 2021-06-26
### Added
- Adds actually everything in the project...

### Changed

### Removed

### Fixed

[Unreleased]: https://github.com/olivierlacan/keep-a-changelog/compare/v0.3.0...HEAD
[0.3.0]: https://github.com/olivierlacan/keep-a-changelog/compare/v0.2.0...v0.3.0
[0.2.1]: https://github.com/olivierlacan/keep-a-changelog/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/olivierlacan/keep-a-changelog/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/olivierlacan/keep-a-changelog/releases/tag/v0.0.1
