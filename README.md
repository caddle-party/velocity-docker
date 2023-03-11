Velocity Docker
=============

Dockerized Velocity server.

Build will be triggered when tagging this repository. The tag should look like `<version>+<velocity-commit-sha>` e.g `3.2.5+b12d0cce1`.

Since Docker does not support having `+` in the image name, the resulting image can pulled from `ghcr.io/caddle-party/velocity:<version>-<build>` e.g `ghcr.io/caddle-party/velocity:3.2.0-b12d0cce`.

Building
--------

Just checkout the repository and run `./build.sh`. You need to provide the environment variables `$GHCR_TOKEN` and `$GHCR_USER` so `docker login` can succeed.


Future things
-------------

* Maybe we want to also push the resulting Maven artifacts to our repository. But currently there are no important changes to the API so we can ignore it for now.
