#!/bin/bash

list=($(find ~/mons -name '*.png'))
rand=$[ $RANDOM % ${#list[@]} ]
filename=${list[$rand]}

/Users/cbuckner/ascii/img2txt/img2txt.py $filename --ansi --maxLen=65 --targetAspect=.5
