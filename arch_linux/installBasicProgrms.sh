#!/bin/bash

echo "======================================"
echo "      Instalaing basic programs"
echo "======================================"

echo "instaling Xorg, X window"

pacman -Sy xorg-server xorg-xinit xorg-xprop

echo "coping xinitrc file"

cp /etc/X11/xinit/xinitrc ~/.xinitrc

echo "instaling window manager < qtile >"

pacman -Sy qtile

echo "instaling terminal simulator < alacritty >"

pacman -Sy alacritty

echo "instaling application laucher < rofi >"

pacman -Sy rofi

echo "instaling imager viewr and backgrond setter < nitrogen >"

pacman -Sy nitrogen

echo "instaling terminal file manager < vifm >"

pacman -Sy vifm

echo "instaling graphical file manager < nemo >"

pacman -Sy nemo

echo "instaling web broswer"

pacman -Sy firefox