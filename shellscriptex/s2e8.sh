#!/bin/bash

for FORD in $@
do
  if [ -d $FORD ]
  then
    echo "It is a directory"
  elif [ -f $FORD ]
  then
    echo "It is a regular file"
  else
    echo "It is some other type of file"
  fi
  ls -l $FORD
done
