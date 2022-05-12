#!/bin/bash

FORD=${1}

if [ -f $FORD ]
then
  echo "It is a regular file"
  exit 0
elif [ -d $FORD ]
then
  echo "It is a directory"
  exit 1
else
  echo "It is some other type of file"
  exit 2
fi
