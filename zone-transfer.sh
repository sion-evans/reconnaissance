#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: $0 <domain>"
	exit 1
fi

host -t ns $1 | cut -f 4 -d ' ' | sed -e 's/\.$//' | while read -r line ; do
    host -l $1 $line
done
