#!/bin/sh

set -e

echo "Enter your sudo password:"
sudo apt-get update
sudo apt-get upgrade --assume-yes
sudo apt-get install ansible-core --assume-yes
