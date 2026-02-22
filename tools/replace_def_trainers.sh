#!/usr/bin/env bash

for file in $(find scripts -name "*.asm"); do
  python tools/def_trainers_sub.py "$file"
done
