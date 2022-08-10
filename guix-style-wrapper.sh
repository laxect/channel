#!/usr/bin/env bash

T=/tmp/`date +%M%S%N -u`.scm
cp "$@" $T
guix style -f $T
cat $T
rm $T || true
