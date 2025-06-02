#!/usr/bin/env sh

mkdir -p '.zls.dawntmp'
curl -L -o '.zls.dawntmp/zls.tar.xz' 'https://builds.zigtools.org/zls-linux-x86_64-0.14.0.tar.xz'

rm -rf '/usr/local/zls'
mkdir '/usr/local/zls'
tar -C '/usr/local/zls' -xf '.zls.dawntmp/zls.tar.xz'

rm -rf '.zls.dawntmp'

echo 'Please ensure that /usr/local/zls is in PATH'
