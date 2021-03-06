#!/usr/bin/env bash


yes | dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
yes | dnf config-manager --set-enabled fedora-cisco-openh264
yes | dnf install ffmpeg-libs
dnf -y install ffmpeg
dnf -y install ffmpeg-devel
yes | dnf groupupdate Multimedia

yes | dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
yes | dnf install lame\* --exclude=lame-devel
yes | dnf group upgrade --with-optional Multimedia
