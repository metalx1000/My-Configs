#!/bin/bash

function ip(){
  ifconfig|grep -v '127.0.0.1'|grep 'inet '|awk '{print $2}'
}

while [ 1 ]
do
    clear
    #echo "$(ip)$(date)"|tr '\n' '|'
    echo -n "$(ip)"
    sleep 1
done
