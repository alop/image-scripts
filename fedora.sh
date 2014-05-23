#!/bin/bash

export ELEMENTS_PATH=tripleo-image-elements/elements
  diskimage-builder/bin/disk-image-create vm fedora heat-cfntools -a amd64 -o fedora-20--image
  mv fedora-20-image.qcow2 /vagrant/
