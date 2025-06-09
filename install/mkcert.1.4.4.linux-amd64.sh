#!/usr/bin/env sh

mkdir -p '.mkcert.dawntmp'
curl -L -o '.mkcert.dawntmp/mkcert' 'https://github.com/FiloSottile/mkcert/releases/download/v1.4.4/mkcert-v1.4.4-linux-amd64'
chmod +x '.mkcert.dawntmp/mkcert'

rm -rf '/usr/local/mkcert'
mkdir '/usr/local/mkcert'
mv '.mkcert.dawntmp/mkcert' '/usr/local/mkcert'

rm -rf '.mkcert.dawntmp'

echo 'Please ensure that /usr/local/mkcert is in PATH'
