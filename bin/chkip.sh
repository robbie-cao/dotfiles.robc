#!/bin/bash

function exip() { lynx --dump http://ipecho.net/plain; }

prev_ip=0
tmp_file=.ip_addr

if [ -e $tmp_file ]; then
    prev_ip=`cat $tmp_file`
else
    echo "0.0.0.0" > $tmp_file
fi

curr_ip=`exip`

echo $prev_ip
echo $curr_ip

if [ $prev_ip != $curr_ip ]; then
    mail -s "New IP: $curr_ip" robbie.cao@gmail.com < $tmp_file
    echo $curr_ip > $tmp_file
fi

