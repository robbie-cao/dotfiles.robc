#!/bin/bash

function exip() { lynx --dump http://ipecho.net/plain; }

prev_ip=0

if [ -e ip_addr ]; then
    prev_ip=`cat ip_addr`
else
    echo "0.0.0.0" > ip_addr
fi

curr_ip=`exip`

echo $prev_ip
echo $curr_ip

if [ $prev_ip != $curr_ip ]; then
    mail -s "New IP: $curr_ip" robbie.cao@gmail.com robbie_cao@muabaobao.com yfwang@muabaobao.com < ip_addr
    echo $curr_ip > ip_addr
fi


