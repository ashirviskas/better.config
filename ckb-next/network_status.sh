#!/bin/zsh

while true
do
    ping -c1 1.1.1.1 &>/dev/null\
        && echo "rgb 00ff00ff" > /tmp/ckbpipe$1\
        || echo "rgb ff0000ff" > /tmp/ckbpipe$1;
    sleep 0.3;
done;
