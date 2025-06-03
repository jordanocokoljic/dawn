#!/usr/bin/env sh

mkdir -p '.helix.dawntmp'
curl -L -o '.helix.dawntmp/helix.tar.xz' 'https://github.com/helix-editor/helix/releases/download/25.01.1/helix-25.01.1-x86_64-linux.tar.xz'

rm -rf '/usr/local/helix'
tar -C '.helix.dawntmp' -xf '.helix.dawntmp/helix.tar.xz'
mv '.helix.dawntmp/helix-25.01.1-x86_64-linux' '/usr/local/helix'

mkdir -p "$HOME/.config/helix"
rm -rf "$HOME/.config/helix/runtime"
mv '/usr/local/helix/runtime/' "$HOME/.config/helix/runtime"

rm -rf '.helix.dawntmp'

echo 'Please ensure that /usr/local/helix is in PATH'
