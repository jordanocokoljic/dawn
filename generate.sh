#!/usr/bin/env sh

toolchain="$1"
version="$2"
architecture="$3"

file="./install/$toolchain.$version.$architecture.sh"
mkdir -p "$(dirname "$file")"
sed -e "s/@tmp/.$toolchain.dawntmp/g" -e "s/@version/$version/g" -e "s/@arch/$architecture/g" "./src/$toolchain.txt" > "$file"
chmod +x "$file"
