#!/bin/bash

for name in $(cat subdomain-list.txt); do
	host $name.google.com | grep "has address" | cut -d " " -f1,4
done
