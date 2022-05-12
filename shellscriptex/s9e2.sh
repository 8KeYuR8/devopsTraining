#!/bin/bash

read -p "How many lines of /etc/passwd would you like to see? " NUM

while [ $NUM -gt "0" ] && read LINE
do
  echo "$LINE"
  ((NUM--))
done < /etc/passwd
