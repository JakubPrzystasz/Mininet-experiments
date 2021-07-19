#!/bin/bash

interfaces=$(ls -1 /sys/class/net)

for t in ${interfaces[@]}; do
	./measure.sh  $t "before" >> "./out/$t.dat" &
done