#!/usr/bin/env bash

yes | dnf install gnome-tweak-tool
yes | snap install snap-store
yes | snap install sublime-text --classic
yes | snap install sc-controller
yes | snap install natron
yes | dnf install krita
yes | dnf install discord
dnf install -y vlc
dnf install -y steam
if ls | grep zoom
then
	yes | dnf localinstall zoom_x86_64.rpm
else
	wget https://zoom.us/client/latest/zoom_x86_64.rpm
	yes | dnf localinstall zoom_x86_64.rpm
fi
yes | dnf localinstall zoom_x86_64.rpm
yes | dnf install php-pear php-devel gcc
yes | dnf install ImageMagick ImageMagick-devel ImageMagick-perl
yes | dnf install GraphicsMagick GraphicsMagick-devel GraphicsMagick-perl
yes | dnf update



