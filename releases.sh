#!/usr/bin/env sh
#######################################################################
# Get the releases for a pypi package using the API
# First argument is the pypi package name (e.g. ansible)
#######################################################################

if [ -z "$1" ]
then
    echo "You must specify a the pypi package name (e.g. ansible)"
    exit 1
fi

curl https://pypi.org/pypi/$1/json 2>/dev/null | jq -r '.releases | keys[]'