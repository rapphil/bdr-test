#!/bin/bash

hosts="postgres01 postgres02 postgres03"

for host in $hosts; do
	cat ~/.ssh/id_rsa.pub | vagrant ssh $host -c 'cat >> ~/.ssh/authorized_keys'
done
