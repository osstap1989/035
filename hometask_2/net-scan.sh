#!/bin/bash
for i in $(seq 0 255); do nc -v -n -z -w 1 192.168.0.$i 80 2>&1; done | grep succeeded
for y in $(seq 21 29);do nc -v -n -z -w 1 192.168.0.$y 443 2>&1; done | grep succeeded

exit 0
