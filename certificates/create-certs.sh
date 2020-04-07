#!/bin/bash

BASE=$(dirname "$0")

cd ${BASE}

. ./env.sh

for i in ${MACHINES[@]}; do
  ${BASE}/create-cert.sh ${i}
done

