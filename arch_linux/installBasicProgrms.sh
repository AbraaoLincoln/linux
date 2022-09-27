#!/bin/bash

echo "======================================"
echo "      Instalaing basic programs"
echo "======================================"

echo "instaling Xorg, X window"

pacman -S --noconfirm xorg-server xorg-xinit xorg-xprop

echo "coping xinitrc file"

cp /etc/X11/xinit/xinitrc ~/.xinitrc

echo "instaling window manager < qtile >"

pacman -S --noconfirm qtile

echo "instaling terminal simulator < alacritty >"

pacman -S --noconfirm alacritty

echo "instaling application laucher < rofi >"

pacman -S --noconfirm rofi

echo "instaling imager viewr and backgrond setter < nitrogen >"

pacman -S --noconfirm nitrogen

echo "instaling terminal file manager < vifm >"

pacman -S --noconfirm vifm

echo "instaling graphical file manager < nemo >"

pacman -S --noconfirm nemo

echo "instaling web broswer"

pacman -S --noconfirm firefox

echo "install zip and unzip programs"

pacman -S -noconfirm zip unzip