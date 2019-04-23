#!/bin/sh

set -e -x

docker build --pull \
  --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
  --build-arg VCS_REF=`git rev-parse --short HEAD` \
  -t skilldlabs/docker-drupal-check:last .


docker build --pull \
  --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
  --build-arg VCS_REF=`git rev-parse --short HEAD` \
  -t skilldlabs/docker-drupal-check:7.2-cli-alpine php-7.2-cli-alpine
