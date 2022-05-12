#!/bin/bash

shopt -s nullglob

for FILE in $(find -name "*.jpg")
do
  mv $(basename $FILE) "$(date +%F)-$(basename $FILE)"
done
