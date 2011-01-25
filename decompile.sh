#!/bin/bash

[ -d src/ ] || mkdir src

for x in *.scpt; do
    osadecompile $x > src/${x/.scpt/}.applescript
done
