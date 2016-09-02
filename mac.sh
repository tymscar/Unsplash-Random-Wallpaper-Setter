#!/bin/bash

#This is a script that changes your wallpaper every X seconds to a random picture from unsplash.it
#Thank you unsplash and unsplash.it!
#Script written by Tymscar. http://www.github.com/tymscar

while true; do
    # Downloading picture
    wget https://unsplash.it/1920/1080/?random >/dev/null 2>&1

    # Creating folder
    mkdir ~/folder$RANDOM

    # Converting picture
    mv index.html?random ~/folder*/
    cd ~/folder*/
    mv ./index.html?random ./pic.jpg

    # Setting wallpaper
    osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'$(pwd)'/pic.jpg"'

    # Removing unused folder
    cd ..
    rm -r folder*
    sleep 600
done
