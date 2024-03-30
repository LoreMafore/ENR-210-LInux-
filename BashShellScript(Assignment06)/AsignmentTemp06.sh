#!/bin/bash

for i in {0..7}; do
    type=$(cat "/sys/class/thermal/thermal_zone$i/type")
    temp=$(cat "/sys/class/thermal/thermal_zone$i/temp")
    
    if [ $temp -gt 200 ]; then
	    celsius=$(echo "$temp/1000" | bc)
    fi
    
    echo "Sensor type $i: $type"
    echo "Temperature $i: $celsius°C"
    echo ""
done
