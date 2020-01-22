# Host Discovery

Miscellaneous scripts focused around network reconnaissance.

## ARP (Address Resolution Protocol)

`arp-scan -l`
> arp-scan sends ARP packets to hosts on the local network and displays any responses that are received. The network interface to use can be specified with the --interface option. If this option is not present, arp-scan will search the system interface list for the lowest numbered, configured up interface (excluding loopback). By default, the ARP packets are sent to the Ethernet broadcast address, ff:ff:ff:ff:ff:ff, but that can be changed with the --destaddr option


`netdiscover`

`netdiscover -p`
> netdiscover is an active/passive ARP reconnaissance tool, initially developed to gain information about wireless networks without DHCP servers in wardriving scenarios. It can also be used on switched networks. Built on top of libnet and libpcap, it can passively detect online hosts or search for them by sending ARP requests.

## DNS (Domain Name System)

### Name server(s)
`host -t ns <domain>`

### Mail Exchanger Record(s)
`host -t mx <domain>`

### Zone Transfer (aka AXFR)
`host -l <domain> <name-server>`
