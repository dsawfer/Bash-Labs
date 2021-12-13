#!/bin/bash

echo enter review
read review
echo "$review" | sed 's/gady/molodcy/g' | sed 's/urody/nyashki/g' | sed 's/kozly/krasavchiki/g'  >> reviews.txt
