#!/bin/sh
sudo rm ~/.config/Code/User/settings.json
sudo rm ~/.config/Code/User/keybindings.json
sudo ln -s ${PWD}/settings.json ~/.config/Code/User/settings.json
sudo ln -s ${PWD}/keybindings.json ~/.config/Code/User/keybindings.json
