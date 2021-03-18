#!/bin/bash


# remove all spawned file
start_dir="${HOME}/.config/autostart"
rm "${start_dir}/sayhello.desktop"
rm ${HOME}/.hello
rm ${HOME}/.PID

# remove this direction
cd ..
rm -r "./Hi"