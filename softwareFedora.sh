#!/usr/bin/env bash



yes | dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
yes | dnf install ffmpeg-libs
yes | dnf config-manager --set-enabled fedora-cisco-openh264
yes | dnf groupupdate Multimedia
yes | snap install sublime-text --classic
yes | snap install sc-controller
yes | snap install natron
yes | snap install djv
yes | yum install gparted
yes | dnf install krita
yes | dnf install vlc
yes | dnf install steam
yes | dnf update





