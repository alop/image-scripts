#!/bin/bash

unset DIB_RHSM_USER
unset DIB_RHSM_PASSWORD

DIB_CLOUD_IMAGES=${DIB_CLOUD_IMAGES:-http://cloud.fedoraproject.org}

export ELEMENTS_PATH=tripleo-image-elements/elements
  diskimage-builder/bin/disk-image-create vm fedora heat-cfntools -a amd64 -o fedora-20--image
  mv fedora-20-image.qcow2 /vagrant/
