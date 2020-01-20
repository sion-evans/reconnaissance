#!/bin/bash

for ip in $(seq 0 255); do
	ping -c 1 10.11.1.$ip | grep 'bytes from' | cut -f 4 -d ' ' | tr -d ':'
done
