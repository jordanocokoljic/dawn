#!/usr/bin/env sh

version="$1"
arch="$2"
dir='install'
file="go$version.$arch.sh"

mkdir -p "$dir"
sed -e "s/<VERSION>/$version/g" -e "s/<ARCH>/$arch/g" ./godl.txt > "$dir/$file"
chmod +x "$dir/$file"
