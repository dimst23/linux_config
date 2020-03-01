#!/usr/bin/env bash

set -e

PROPS1=$(xinput | awk '/Elantech Touchpad/ {gsub(/id=/, ""); print $6;}')
PROPS2=$(xinput | awk '/ETD2303:00 04F3:3083 Touchpad/ {gsub(/id=/, ""); print $6;}')

SCROLL=$(xinput list-props 16 | awk '/Natural Scrolling Enabled\s\(/ {gsub(/[(]|[)]:/, ""); print $5}')
TAPPING=$(xinput list-props 16 | awk '/Tapping Enabled\s\(/ {gsub(/[(]|[)]:/, ""); print $4}')

xinput set-prop $PROPS1 $SCROLL 1
xinput set-prop $PROPS1 $TAPPING 1

xinput set-prop $PROPS2 $SCROLL 1
xinput set-prop $PROPS2 $TAPPING 1
