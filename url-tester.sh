#!/bin/sh

read -p "Enter URL: " url

if curl -s  --head "$url" > /dev/null; then 
    echo "$url is UPPP 🍻"
else
    echo "$url is DOWN!!! 😒"
fi