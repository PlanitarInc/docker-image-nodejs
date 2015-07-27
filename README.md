This repository contains directives to build the planitar nodejs dev image.

The image contains the following dev packages installed by default:
 - `node`, `npm`

Inherits from `planitar/dev-base`:
 - `build-essential`, `gpg`
 - debian build tools: `pbuilder`, `debhelper`, `cdbs`
 - `git`

# Instructions

Build:

```shell
make build
```

Push new image to registry:

```shell
make push
```

Clean:

```shell
make clean
```
