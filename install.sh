#!/bin/bash


# Setup to starting program
start_dir="${HOME}/.config/autostart"
if [ ! -e ${start_dir} ]; then
	mkdir ${start_dir}
fi

cp "./sayhello.desktop" ${start_dir}

# copy hello script to ~ // don't worry, it's hidden
cp "./hello.sh" ${HOME}/.hello