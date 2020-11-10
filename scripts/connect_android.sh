#!/bin/bash
scrcpy -b 16M & (echo -n; sleep 2; echo -ne '\n') | sndcpy &
