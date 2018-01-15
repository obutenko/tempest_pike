#!/bin/bash -xe

source /home/rally/kestonercv3

rally-manage db recreate
rally deployment create --fromenv --name=tempest
rally verify create-verifier --type tempest --name tempest-verifier --source /var/lib/tempest --version 17.2.0 --system-wide
rally verify configure-verifier --extend /var/lib/tempest.conf
