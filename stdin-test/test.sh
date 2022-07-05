#!/bin/bash
set -x

echo "Hello world!" | ./target/debug/stdin-test.exe

cat Cargo.toml | ./target/debug/stdin-test.exe

cat << ___ENDCAT | ./target/debug/stdin-test.exe
This text was uploaded through standard input on
`date`
___ENDCAT
