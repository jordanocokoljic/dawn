#!/usr/bin/env sh

mkdir -p '.go.dawntmp'
curl -L -o '.go.dawntmp/go.tar.gz' 'https://go.dev/dl/go1.24.4.linux-amd64.tar.gz'

rm -rf '/usr/local/go'
tar -C '/usr/local' -xzf '.go.dawntmp/go.tar.gz'

rm -rf '.go.dawntmp'

echo 'Please ensure that /usr/local/go/bin is in PATH'
