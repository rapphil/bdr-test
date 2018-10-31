#!/bin/bash

nodes="postgres01 postgres02 postgres03"


for node in $nodes; do
	ip=$(vagrant ssh "$node" -c 'ip addr show eth0' | grep inet | sed -n 's/.*inet \(.*\)\/.*/\1/p')
	echo $ip $node
done
