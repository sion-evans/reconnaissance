# Host Discovery

Miscellaneous scripts focused around network reconnaissance.

## ARP (Address Resolution Protocol)

`arp-scan -l`

`netdiscover`

`netdiscover -p`

## DNS (Domain Name System)

### Name server(s)
`host -t ns <domain>`

### Mail Exchanger Record(s)
`host -t mx <domain>`

### Zone Transfer (aka AXFR)
`host -l <domain> <name-server>`
