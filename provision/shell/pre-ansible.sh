#!/usr/bin/env bash

set -eu -o pipefail

declare -r DEFAULT_ANSIBLE_VERSION="2.10.7"

#
# Package installation, for 2.9.x
#
install::package() {
  apt-get update -qq
  apt-get install -yqq software-properties-common
  add-apt-repository -yqq --update ppa:ansible/ansible
  apt-get install -y -qq ansible
}

#
# PIP installation
#
install::pip() {
  apt-get update -qq
  apt-get install -yqq python3-pip

  pip3 install ansible=="${ANSIBLE_VERSION}"
}

#
# ::main::
#
ANSIBLE_VERSION="${1:-${DEFAULT_ANSIBLE_VERSION}}"
#install::package
install::pip
