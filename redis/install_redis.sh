#!/bin/sh

# reference: https://www.softwarecollections.org/en/scls/rhscl/rh-redis32/

sudo yum -y install centos-release-scl
sudo yum-config-manager --enable rhel-server-rhscl-7-rpms
sudo yum -y install rh-redis32
scl enable rh-redis32 bash

service rh-redis32-redis start
