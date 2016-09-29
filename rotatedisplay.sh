#!/bin/bash

if [[ $(xrandr | grep DP3 | awk '{print $3}') == "primary" ]]; then
	if [[ $(xrandr | grep DP3 | awk '{print $5}') == "left" ]]; then
		xrandr --output DP3 --rotate normal
	else
		xrandr --output DP3 --rotate left
	fi
else
	if [[ $(xrandr | grep DP3 | awk '{print $4}') == "left" ]]; then
		xrandr --output DP3 --rotate normal
	else
		xrandr --output DP3 --rotate left
	fi
fi
