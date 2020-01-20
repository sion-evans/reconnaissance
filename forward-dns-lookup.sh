#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: $0 <domain> <subdomain-list>"
	exit 1
fi

for name in $(cat $2); do
	host $name.$1 | grep "has address" | cut -d " " -f1,4
done
