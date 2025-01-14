#!/bin/bash

set -e

pwd=$PWD
deps=$pwd/deps

cd "$deps/cache-decoder"

if [ -z "$SKIP_BUILD" ]; then
  yarn install --frozen-lockfile
  yarn build
  mv dist ../../site/cache-decoder
fi

cd "$pwd"
