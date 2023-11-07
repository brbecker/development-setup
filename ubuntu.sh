#!/bin/sh

set -e

echo "Enter your sudo password:"
sudo apt-get update
sudo apt-get upgrade --assume-yes
sudo install ansible-core --assume-yes
