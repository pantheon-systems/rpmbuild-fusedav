rpmbuild-fusedav
================
Container for building fusedav in with all supporting dev libs

Docker images
-------------

Images built from this repo are available from quay.io with the fedora version as
the tag, eg:

- `quay.io/getpantheon/rpmbuild-fusedav:20`
- `quay.io/getpantheon/rpmbuild-fusedav:22`
- ... etc ...

Updating Containers
-------------------

Before you are able to push to quay.io, you need to login with `docker login quay.io`, this
will authenticate you and save your creds to `~/.dockercfg`. If you do not have an account
on quay.io or access to the getpantheon org on quay.io, ask for help in the
#infrastructure channel on Slack.

- Running `build.sh` will attempt to build all versions and push them to quay.io.

- If you only want to build a specific version or versions, set the `BUILD_VERSIONS` env
variable, eg:

    BUILD_VERSIONS="19" ./build.sh

    BUILD_VERSIONS="20 22" ./build.sh

