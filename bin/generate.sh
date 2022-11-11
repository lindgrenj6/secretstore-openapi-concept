#!/usr/bin/env bash

if [[ -z $1 ]]; then
    echo "need an argument to generate such as go/ruby/python"
    exit 1
fi

docker run --rm \
    -v $PWD:/local openapitools/openapi-generator-cli generate \
    -i /local/openapi.yaml \
    -g $1 \
    -o /local/out/$1
