#!/bin/bash

DISPLNAME="DP3"

if [[ $1 != "" ]]; then
        DISPLNAME=$1
fi

echo "Going to rotate display $DISPLNAME"

if [[ $(xrandr | grep $DISPLNAME | awk '{print $3}') == "primary" ]]; then
        POSITION="{print \$5}"
else
        POSITION="{print \$4}"
fi
echo $POSITION

echo "Executing: xrandr | grep $DISPLNAME | awk '$POSITION'"
xrandr | grep $DISPLNAME | awk '$POSITION'

if [[ $(xrandr | grep $DISPLNAME | awk "$POSITION") == "left" ]]; then
        xrandr --output $DISPLNAME --rotate normal
        echo "xrandr --output $DISPLNAME --rotate normal"
else
        xrandr --output $DISPLNAME --rotate left
        echo "xrandr --output $DISPLNAME --rotate left"
fi
