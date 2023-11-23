#!/bin/sh
#
# Minimal steps to get ansible running in a fresh instance of Ubuntu.

set -ex

# Install ansible-core
sudo apt-get update
sudo apt-get install software-properties-common --assume-yes
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt-get install ansible-core --assume-yes

