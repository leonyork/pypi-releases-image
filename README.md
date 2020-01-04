# Pypi releases

Images for getting the release versions for pypi packages.

## Build

```docker build --build-arg CURL_VERSION=7.67.0 -t leonyork/pypi-releases .```

## Test

```docker run leonyork/pypi-releases curlimages/curl```