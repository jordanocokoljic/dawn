#!/usr/bin/env sh

awk '{ system("./generate.sh \"" $1 "\" \"" $2 "\" \"" $3 "\"") }' './generate.txt'
