#!/bin/bash

apt-get update
apt-get --yes --force-yes install git wget qemu-utils kpartx zip qemu-kvm

mkdir packer
cd packer
wget https://dl.bintray.com/mitchellh/packer/0.6.0_linux_amd64.zip
unzip 0.6.0_linux_amd64.zip

export PATH=$PATH:~/packer
