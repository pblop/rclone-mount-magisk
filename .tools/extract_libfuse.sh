#!/usr/bin/env bash

version="3.15.1"
declare -A archs=(
  ["aarch64"]="arm64"
  ["arm"]="arm"
  ["i686"]="x86"
  ["x86_64"]="x64"
)

for dl_arch in "${!archs[@]}"
do
  local_arch="${archs[$dl_arch]}"
  echo "Downloading $dl_arch -> $local_arch"
  curl "https://packages.termux.dev/apt/termux-root/pool/stable/libf/libfuse3/libfuse3_${version}_${dl_arch}.deb" \
    | tar --to-stdout --extract data.tar.xz \
    | tar --to-stdout --extract data/data/com.termux/files/usr/bin/fusermount3 \
    > "common/binary/${local_arch}/fusermount3"
done
