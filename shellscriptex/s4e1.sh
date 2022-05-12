#!/bin/bash
function file_count() {
  local COUNT=$(find $(pwd) -maxdepth 1 -type f | wc -l)
  echo "$COUNT"
}
file_count
