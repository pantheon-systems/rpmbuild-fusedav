#!/bin/sh
# `build ... -f` requires docker >= 1.5.x

BUILD_VERSIONS=${BUILD_VERSIONS:-22 28}
echo "==> Running builds for these version(s): $BUILD_VERSIONS"
echo

image_base_name="quay.io/getpantheon/rpmbuild-fusedav"
for i in $BUILD_VERSIONS; do
    full_image_name="${image_base_name}:${i}"

    echo "==> Building $dockerfile ($full_image_name)"
    docker build -t "$full_image_name" "./$i"
    docker push "$full_image_name"
done
