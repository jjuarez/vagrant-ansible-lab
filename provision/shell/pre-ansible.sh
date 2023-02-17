#!/usr/bin/env bash

set -eu -o pipefail

declare -r DEFAULT_ANSIBLE_VERSION="7.2.0"
ANSIBLE_VERSION="${1:-${DEFAULT_ANSIBLE_VERSION}}"

#
# PIP installation
#
pip::install() {
  apt-get update -qq
  apt-get install -yqq python3-pip

  pip3 install ansible=="${ANSIBLE_VERSION}"
}

pip::update() {
  pip install --upgrade pip
}

#
# ::main::
#
pip::install
pip::update
