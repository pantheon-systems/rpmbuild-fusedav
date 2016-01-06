FROM quay.io/getpantheon/rpmbuild-fedora:22

RUN yum makecache fast
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

# Install vanila curl into /root/curl-7.46.0 Fusedav will use this to build against
RUN curl -o curl-7.46.0.tar.bz2 -L https://github.com/bagder/curl/releases/download/curl-7_46_0/curl-7.46.0.tar.bz2

RUN tar -xjvf curl-7.46.0.tar.bz2
WORKDIR curl-7.46.0
RUN ./configure
RUN make
