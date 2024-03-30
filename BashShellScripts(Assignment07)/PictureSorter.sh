#!/bin/bash

counter=0

for name in *.jpg; do
    ((counter++))

    new_filename="-${counter}.jpg"

    newname=$(echo "$name" | sed 's/image[0-9]\+-//')
    newname2=$(echo "$newname" | sed 's/.jpg/'$new_filename'/')

    mv $name $newname2

    echo "Renamed $name to $newname2"
done

