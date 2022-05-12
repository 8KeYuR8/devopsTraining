#!/bin/bash

while true
do
  echo "1) Disk usage"
  echo "2) System uptime"
  echo "3) Logged users"
  echo "q) Quit"
  read -p "Enter your choice: " CH
  case "$CH" in
    1)
      df -h
      echo ""
      ;;
    2)
      uptime
      echo ""
      ;;
    3)
      who
      echo ""
      ;;
    q|Q)
      echo "Goodbye!"
      echo ""
      break
      ;;
    *)
      echo "Invalid option"
      echo ""
      ;;
  esac
done
