# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

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

[Unreleased]: https://github.com/olivierlacan/keep-a-changelog/compare/v0.2.0...HEAD
[0.2.0]: https://github.com/olivierlacan/keep-a-changelog/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/olivierlacan/keep-a-changelog/releases/tag/v0.0.1
