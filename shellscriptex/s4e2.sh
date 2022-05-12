#!/bin/bash
function file_count() {
  for CURR in $@
  do
    local COUNT=$(find $CURR -maxdepth 1 -type f | wc -l)
    echo -e "${CURR}: \v$COUNT"
  done
}
file_count /etc /var /usr/bin
