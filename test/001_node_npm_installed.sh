#!/bin/bash

set -e

cleanup() {
  true
}
report() {
  true
}
trap report ERR
trap cleanup EXIT

docker run --rm planitar/dev-nodejs \
  node --version

docker run --rm planitar/dev-nodejs \
  npm --version

docker run --rm planitar/dev-nodejs \
  node -e 'console.log(1+1)' | grep -q ^2$
