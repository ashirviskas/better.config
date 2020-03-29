#!/bin/zsh

me="$(basename "$0")";
#echo $me;
running=$(COLUMNS=9000 ps -ef | grep "$me" | wc -l);
#echo $running;
[[ $running > 3 ]] && exit;

while true
do
    ping -c1 1.1.1.1 &>/dev/null\
        && echo "rgb 00ff00ff" > /tmp/ckbpipe$1\
        || echo "rgb ff0000ff" > /tmp/ckbpipe$1;
    sleep 0.3;
done;
