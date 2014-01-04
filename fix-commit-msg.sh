#!/bin/bash

x=0
while read line; do
  if [ $x -eq 0 ]; then
    if [ -z "$line" ]; then
        echo "No commit message"
    else
        echo "$line"
    fi
    x=1
  else
    echo "$line"
  fi
done
