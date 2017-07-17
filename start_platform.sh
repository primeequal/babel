#!/bin/bash

TAG=master-0

gcloud container images list | tail -n +2 - | \
 while read x; do echo "gcloud docker -- pull $x:$TAG" && gcloud docker -- pull $x:$TAG; done
