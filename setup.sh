#!/bin/bash

clear

mkdir -p ~/Scripts/
cp ./alias ~/Scripts/alias

# Add a line to source the alias file in .bashrc if it is not already present
if ! grep -Fxq "source ~/Scripts/alias" ~/.bashrc
then
    echo "source ~/Scripts/alias" >> ~/.bashrc
fi


source ~/.bashrc
echo "Setup completed. 'alias' file appended & sourced from ~/Scripts/."
