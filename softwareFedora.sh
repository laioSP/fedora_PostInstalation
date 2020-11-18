#!/usr/bin/env bash

yes | dnf install gnome-tweak-tool
yes | snap install snap-store
yes | snap install sublime-text --classic
yes | snap install sc-controller
yes | snap install natron
yes | snap install djv
yes | dnf install krita
yes | dnf install vlc
dnf install -y steam
wget https://zoom.us/client/latest/zoom_x86_64.rpm
yes | dnf localinstall zoom_x86_64.rpm
yes | dnf update
