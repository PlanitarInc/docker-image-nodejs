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
  node --version | grep -q '^v10\.'

docker run --rm planitar/dev-nodejs \
  npm --version | grep -q '^6\.'

docker run --rm planitar/dev-nodejs \
  node -e 'console.log(1+1)' | grep -q ^2$
