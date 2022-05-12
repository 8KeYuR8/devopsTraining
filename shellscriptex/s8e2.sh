#!/bin/bash

logit() {
  for NUM in $@
  do
    echo "$NUM"
    logger -i -t randomly -p user.info "$NUM"
  done
}

logit $RANDOM $RANDOM $RANDOM
