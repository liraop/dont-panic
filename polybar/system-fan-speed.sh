#!/bin/bash

speed=$(awk '/^speed:/ { print $2 }' /proc/acpi/ibm/fan)

if [ "$speed" != "" ]; then
    speed_round=$(echo "${speed} RPM")
    echo "# $speed_round"
else
   echo "#"
fi
