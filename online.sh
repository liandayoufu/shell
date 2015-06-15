#!/bin/bash
# find out the hosts that current online
# author bob

segment=192.168.0.
for i in `seq 1 255`; do
	{ ping -c 2 $segment$i &> /dev/null
		if [ $? -eq 0 ]; then
			echo $segment$i UP
		fi
	}&
done
wait

