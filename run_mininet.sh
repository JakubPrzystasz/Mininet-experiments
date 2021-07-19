#!/bin/bash
sudo mn -c
sudo mn --custom ./topo.py --topo mytopo --mac --arp --controller none --switch ovs,protocol=OpenFlow13
sudo mn -c
