#!/bin/bash

FORD=${1}

if [ -f $FORD ]
then
  echo "It is a regular file"
elif [ -d $FORD ]
then
  echo "It is a directory"
else
  echo "It is some other type of file"
fi

ls -l $FORD
