FROM quay.io/getpantheon/rpmbuild-fedora:20

RUN yum makecache fast

# basic compiler and linker tools
RUN yum install -y -d1 \
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

RUN yum upgrade -y -d1 automake autoconf
