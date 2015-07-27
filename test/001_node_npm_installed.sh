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

docker run planitar/dev-nodejs \
  node --version

docker run planitar/dev-nodejs \
  npm --version

docker run planitar/dev-nodejs \
  node -e 'console.log(1+1)' | grep -q ^2$
