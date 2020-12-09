#!/usr/bin/env bash

HOMEUSER_PATH=/home/$USERNAME
ICONPATH=$HOMEUSER_PATH/Pictures/foundryIcons

NukeX=/usr/share/applications/NukeXIcon.desktop
NukeStudio=/usr/share/applications/NukeStudio.desktop
NUKELINK=Nuke12.2
NUKEVERSION=Nuke12.2v3

touch $NukeX
echo "[Desktop Entry]" > $NukeX
echo "Terminal=true" >> $NukeX
echo "Version=1.0" >> $NukeX
echo "Type=Application" >> $NukeX
echo "Exec=$HOMEUSER_PATH/$NUKEVERSION/$NUKELINK --NukeX %f" >> $NukeX
echo "Name=NukeX" >> $NukeX
echo "Icon=$ICONPATH/nukeX.png" >> $NukeX

touch $NukeStudio
echo "[Desktop Entry]" > $NukeStudio
echo "Terminal=true" >> $NukeStudio
echo "Version=1.0" >> $NukeStudio
echo "Type=Application" >> $NukeStudio
echo "Exec=$HOMEUSER_PATH/$NUKEVERSION/$NUKELINK --studio %f" >> $NukeStudio
echo "Name=Nuke_Studio" >> $NukeStudio
echo "Icon=$ICONPATH/nukeStudio.png" >> $NukeStudio

Mari=/usr/share/applications/Mari.desktop
MARIVERSION=Mari4.6v4

touch $Mari
echo "[Desktop Entry]" > $Mari
echo "Terminal=true" >> $Mari
echo "Version=1.0" >> $Mari
echo "Type=Application" >> $Mari
echo "Exec=$HOMEUSER_PATH/$MARIVERSION/bin/$MARIVERSION %f" >> $Mari
echo "Name=Mari" >> $Mari
echo "Icon=$ICONPATH/mari.png" >> $Mari

Modo=/usr/share/applications/Modo.desktop
MODOVERSION=Modo14.2v1

touch $Modo
echo "[Desktop Entry]" > $Modo

echo "Version=1.0" >> $Modo
echo "Type=Application" >> $Modo
echo "Exec=$HOMEUSER_PATH/$MODOVERSION/modo %f" >> $Modo
echo "Name=Modo" >> $Modo
echo "Icon=$ICONPATH/modo.png" >> $Modo

Katana=/usr/share/applications/Katana.desktop
KATANAVERSION=Katana4.0v1

touch $Katana
echo "[Desktop Entry]" > $Katana
echo "Terminal=true" >> $Katana
echo "Version=1.0" >> $Katana
echo "Type=Application" >> $Katana
echo "Name=Katana" >> $Katana
echo "Icon=$ICONPATH/katana.png" >> $Katana
echo "Exec=/opt/$KATANAVERSION/katana %f" >> $Katana

