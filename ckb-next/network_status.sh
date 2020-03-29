#!/bin/sh

me="$(basename "$0")";
running=$(ps h -C "$me" | grep -wv $$ | wc -l);
[[ $running > 1 ]] && exit;

while true
do
    ping -c1 1.1.1.1 &>/dev/null\
        && echo "rgb 00ff00ff" > /tmp/ckbpipe$1\
        || echo "rgb ff0000ff" > /tmp/ckbpipe$1;
    sleep 0.3;
done;
