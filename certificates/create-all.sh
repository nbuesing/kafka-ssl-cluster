#!/bin/bash

BASE=$(dirname "$0")
cd ${BASE}

./create-ca.sh
[ $? -eq 1 ] && echo "unable to create CA certificate" && exit

./create-intermediate.sh
[ $? -eq 1 ] && echo "unable to create intermediate certifcate" && exit

./create-certs.sh
# having issues / false positives [ $? -eq 1 ] && echo "unable to create host certificates" && exit

./create-keystore.sh
[ $? -eq 1 ] && echo "unable to create keystores" && exit
