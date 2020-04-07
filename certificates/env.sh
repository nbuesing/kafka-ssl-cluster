#!/bin/bash

# certificate needed, brokers certificate should be based on hostname of the cerificate
declare -a MACHINES=("root" "broker-1" "broker-2" "broker-3" "broker-4" "jumphost")

# location to create certificates
CERTS=../cluster/certs

# the password of the root authority certificate
CA_PASSWORD=ca_secret

# the password if the intermediate certificate
INTERMEDIATE_PASSWORD=int_secret

# the password of the broker certificate and the keystore
# keystore password and key password must be the same
BROKER_PASSWORD=dev_cluster_secret


## Make the CERTS directory and ensure that it wasn't removed above

if [ "${CERTS}" == "" ]; then
  echo "CERTS environment variable is missing"
  exit
fi
mkdir -p ${CERTS}

