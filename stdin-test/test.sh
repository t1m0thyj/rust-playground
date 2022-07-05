#!/bin/bash
set -x

dd if=/dev/urandom of=testfile bs=1024 count=1024
trap "rm testfile" EXIT

echo "Hello world!" | ./target/debug/stdin-test.exe

cat testfile | ./target/debug/stdin-test.exe

cat << ___ENDCAT | ./target/debug/stdin-test.exe
This text was uploaded through standard input on
`date`
___ENDCAT
