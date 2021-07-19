#!/bin/bash

ip=$(expr $1 + 1)
iperf -c 10.0.0."$ip" -p 5566 -t 3600
