#!/bin/bash

case "$1" in
  start|START|Start)
    /tmp/sleep-walking-server &
    ;;
  stop|STOP|Stop)
    kill $(cat /tmp/sleep-walking-server.pid)
    ;;
  *)
    echo "Usage s7e1.sh start|stop" ; exit 1
    ;;
esac
