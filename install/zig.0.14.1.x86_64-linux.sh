#!/usr/bin/env sh

mkdir -p '.zig.dawntmp'
curl -L -o '.zig.dawntmp/zig.tar.xz' 'https://ziglang.org/download/0.14.1/zig-x86_64-linux-0.14.1.tar.xz'

rm -rf '/usr/local/zig'
tar -C '.zig.dawntmp' -xf '.zig.dawntmp/zig.tar.xz'
mv '.zig.dawntmp/zig-x86_64-linux-0.14.1' '/usr/local/zig'

rm -rf '.zig.dawntmp'

echo 'Please ensure that /usr/local/zig is in PATH'
