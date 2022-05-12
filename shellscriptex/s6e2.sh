#!/bin/bash

read -p "Please enter a file extension: " EXT

FILES="*.$EXT"

read -p "Please enter a file prefix: (Press ENTER for date). " PREF

shopt -s nullglob

for FILE in $(find -name "$FILES")
do
  if [ -z "$PREF" ]
  then
    mv $(basename $FILE) "$(date +%F)-$(basename $FILE)"
  else
    mv $(basename $FILE) "${PREF}-$(basename $FILE)"
  fi
done
