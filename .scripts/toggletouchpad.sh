#!/bin/bash

STATUS="$(xinput list-props 14 | grep 'Device Enabled' | awk '{ print $4}')"
if [ "$STATUS" != 0 ]
then
	xinput set-prop 14 150 0
else
	xinput set-prop 14 150 1
fi
