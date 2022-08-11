#!/usr/bin/env bash

T=/tmp/`date +%M%S%N -u`.scm
cat > $T
guix style -f $T
cat $T
rm $T || true
