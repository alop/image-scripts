#!/bin/bash

apt-get update
apt-get --yes --force-yes install git curl

git clone https://github.com/openstack/diskimage-builder.git
git clone https://github.com/openstack/tripleo-image-elements.git

export ELEMENTS_PATH=tripleo-image-elements/elements
diskimage-builder/bin/disk-image-create vm fedora heat-cfntools -a amd64 -o fedora-heat-cfntools
diskimage-builder/bin/disk-image-create vm ubuntu heat-cfntools -a amd64 -o ubuntu-heat-cfntools
