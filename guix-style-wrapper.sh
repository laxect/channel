#!/usr/bin/env bash

T=/tmp/`date -Iseconds -u`.scm
cp "$@" $T
guix style -f $T
cat $T
rm $T || true
