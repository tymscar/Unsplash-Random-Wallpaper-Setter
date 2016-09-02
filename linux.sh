#!/bin/bash

#This is a script that changes your wallpaper every X seconds to a random picture from unsplash.it
#Thank you unsplash and unsplash.it!
#Script written by Tymscar. http://www.github.com/tymscar

while true; do
    #Deleting any old wallpaper downloaded by this app in the past
    rm wallpaperRandomUnsplash.jpg

    # Downloading picture
    wget https://unsplash.it/1920/1080/?random >/dev/null 2>&1

    # Converting picture
    mv ./index.html?random ./wallpaperRandomUnsplash.jpg

    # Setting wallpaper
    feh --bg-scale wallpaperRandomUnsplash.jpg

    sleep 600 
done
