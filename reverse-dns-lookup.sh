#!/bin/bash

for ip in $(seq 1 255); do
	host 10.11.1.$ip | grep "has address" | cut -d " " -f1,4
done
