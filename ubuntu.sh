#!/bin/bash

export ELEMENTS_PATH=tripleo-image-elements/elements

for RELEASE in precise saucy trusty
  do
    export DIB_RELEASE=${RELEASE}
    diskimage-builder/bin/disk-image-create vm ubuntu heat-cfntools -a amd64 -o ${RELEASE}-image
  mv ${RELEASE}-image.qcow2 /vagrant/
done
