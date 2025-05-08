#!/usr/bin/env sh

mkdir -p '.godltmp'
curl -L -o '.godltmp/go.tar.gz' 'https://go.dev/dl/go1.24.3.linux-amd64.tar.gz'

rm -rf '/usr/local/go'
tar -C '/usr/local' -xzf '.godltmp/go.tar.gz'

rm -rf '.godltmp'

echo 'Please ensure that /usr/local/go/bin is in PATH'
