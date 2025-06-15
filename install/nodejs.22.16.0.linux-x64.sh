#!/usr/bin/env sh

mkdir -p '.nodejs.dawntmp'
curl -L -o '.nodejs.dawntmp/nodejs.tar.xz' 'https://nodejs.org/dist/v22.16.0/node-v22.16.0-linux-x64.tar.xz'

rm -rf '/usr/local/nodejs'
tar -C '.nodejs.dawntmp' -xf '.nodejs.dawntmp/nodejs.tar.xz'
mv '.nodejs.dawntmp/node-v22.16.0-linux-x64' '/usr/local/nodejs'

rm -rf '.nodejs.dawntmp'

echo 'Please ensure that /usr/local/nodejs/bin is in PATH'
