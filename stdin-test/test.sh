#!/bin/bash
cat << ___ENDCAT | ./target/debug/stdin-test.exe
This text was uploaded through standard input on
`date`
___ENDCAT
