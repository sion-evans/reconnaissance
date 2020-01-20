#!/bin/bash

domain=$1

host -t ns $domain | cut -f 4 -d ' ' | sed -e 's/\.$//' | while read -r line ; do
    host -l $domain $line
done
