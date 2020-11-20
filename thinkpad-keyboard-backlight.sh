#!/bin/sh
# Enables keyboard backlight on Thinkpad laptops.

# Directory containing current brightness and maximum brightness values.
DIR=/sys/class/leds/tpacpi\:\:kbd_backlight

MIN=0
MAX=$(cat $DIR/max_brightness)
VAL=$(cat $DIR/brightness)

# If value is maximum brightness, turn backlight off. Else increment brightness by one.
if [ "$VAL" -eq $MAX ]; then
	VAL=$MIN
else
	VAL=$((VAL+1))
fi

echo $VAL > $DIR/brightness
