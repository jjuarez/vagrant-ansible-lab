#!/usr/bin/env bash

set -eu -o pipefail

apt-get update -qq &&
apt-get install -y -qq software-properties-common &&
add-apt-repository -y --update ppa:ansible/ansible
apt-get install -y -qq ansible
