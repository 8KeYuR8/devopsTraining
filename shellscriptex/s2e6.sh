#!/bin/bash

read -p "Enter file or directory name - " FORD

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
