#!/bin/bash

apt-get update
apt-get --yes --force-yes install git curl qemu-utils

if [ ! -d diskimage-builder ]
  then
    git clone https://github.com/openstack/diskimage-builder.git
  else
    cd diskimage-builder
    git pull
fi
if [ ! -d tripleo-image-elements ]
  then
    git clone https://github.com/openstack/tripleo-image-elements.git
  else
    cd tripleo-image-elements
    git pull
fi
