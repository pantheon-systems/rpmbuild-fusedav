FROM quay.io/getpantheon/rpmbuild-fedora:28

# basic compiler and linker tools
RUN dnf install -y -d1 \
  git \
  jemalloc-devel  \
  automake        \
  autoconf        \
  pkgconfig       \
  fuse-devel      \
  systemd-devel   \
  glib2-devel     \
  leveldb-devel   \
  libattr-devel   \
  libcurl-devel   \
  libyaml-devel   \
  lynx            \
  make            \
  neon-devel      \
  uriparser-devel \
  dbus-devel

RUN dnf upgrade -y -d1 automake autoconf

WORKDIR /
