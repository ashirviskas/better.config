#!/bin/zsh

while true
do
    typeset -i temp=`cat /sys/class/hwmon/hwmon1/temp1_input`;
    temp=$temp/1000;
    #echo $temp;
    case $temp in
    <0-50>)
        echo "rgb 00ffffff" > /tmp/ckbpipe$1
    ;;
    <51-75>)
        echo "rgb ffff00ff" > /tmp/ckbpipe$1
    ;;
    <76-120>)
        echo "rgb ff0000ff" > /tmp/ckbpipe$1
    ;;
    esac
    sleep 0.05;
done;
