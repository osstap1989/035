#!/bin/bash
wget http://yoko.ukrtux.com:8899/versions.txt
repeat=$(sort versions.txt | uniq -c | sort -nr | head -n1)

echo $repeat
