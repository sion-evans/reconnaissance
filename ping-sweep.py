#!/usr/bin/python

import subprocess
from subprocess import *

nrange = "10.11.1."

for i in range(0, 255):
	address = nrange + str(i)
	res = subprocess.call(['ping', '-c', '1', address])
	if res == 0:
		print(address, 'is up.')
	elif res == 2:
		print(address, 'is down.')
	else:
		print(address, 'has failed.')
