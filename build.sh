#!/usr/bin/env sh
#######################################################################
# Build, test and push the images
# Creates a version for all numbered versions that the Docker hub api
# returns
#######################################################################
version=1.0.0
set -eux

# Ignore any versions that aren't numbered, and build and push 
docker run leonyork/docker-tags:1.0.0-curl-7.67.0 curlimages/curl \
        | grep -E '^[0-9.]+$' \
        | xargs -I{CURL_VERSION} -n1 \
        sh build-image.sh {CURL_VERSION} $version-curl-{CURL_VERSION}

#Push the latest version
sh build-image.sh latest latest