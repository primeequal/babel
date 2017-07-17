#!/bin/bash

TAG=master-0
HOST_PORT=4000
CONTAINER_PORT=80

bash /vagrant/stop_platform.sh

COUNTER=0
gcloud container images list | tail -n +2 - | \
 while read x; do
     echo "Running docker image $x:$TAG" && gcloud docker -- run -d -p $(($HOST_PORT+$COUNTER)):$CONTAINER_PORT $x:$TAG
     COUNTER=$COUNTER+1
 done
