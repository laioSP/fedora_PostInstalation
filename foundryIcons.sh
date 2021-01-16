#!/usr/bin/env bash

HOMEUSER_PATH=/home/$USERNAME
ICONPATH=$HOMEUSER_PATH/Pictures/foundryIcons

function nukeXIcon() {

	NukeX=/usr/share/applications/NukeXIcon.desktop
	NUKEVERSION=$(ls $HOMEUSER_PATH | grep -i "nuke*")
	NUKELINK=$(ls $HOMEUSER_PATH/$NUKEVERSION | grep  "Nuke1")

	touch $NukeX
	echo "[Desktop Entry]" > $NukeX
	echo "Terminal=true" >> $NukeX
	echo "Version=1.0" >> $NukeX
	echo "Type=Application" >> $NukeX
	echo "Exec=$HOMEUSER_PATH/$NUKEVERSION/$NUKELINK --NukeX %f" >> $NukeX
	echo "Name=NukeX" >> $NukeX
	echo "Icon=$ICONPATH/nukeX.png" >> $NukeX
	echo "NukeX icon was created"
}

function nukeStudioIcon() {

	NukeStudio=/usr/share/applications/NukeStudio.desktop
	NUKEVERSION=$(ls $HOMEUSER_PATH | grep -i "nuke*")
	NUKELINK=$(ls $HOMEUSER_PATH/$NUKEVERSION | grep  "Nuke1")

	touch $NukeStudio
	echo "[Desktop Entry]" > $NukeStudio
	echo "Terminal=true" >> $NukeStudio
	echo "Version=1.0" >> $NukeStudio
	echo "Type=Application" >> $NukeStudio
	echo "Exec=$HOMEUSER_PATH/$NUKEVERSION/$NUKELINK --studio %f" >> $NukeStudio
	echo "Name=Nuke_Studio" >> $NukeStudio
	echo "Icon=$ICONPATH/nukeStudio.png" >> $NukeStudio
	echo "NukeStudio icon was created"
}

function mariIcon() {

	Mari=/usr/share/applications/Mari.desktop
	MARIVERSION=$( ls $HOMEUSER_PATH | grep -i "mari")

	touch $Mari
	echo "[Desktop Entry]" > $Mari
	echo "Terminal=true" >> $Mari
	echo "Version=1.0" >> $Mari
	echo "Type=Application" >> $Mari
	echo "Exec=$HOMEUSER_PATH/$MARIVERSION/bin/$MARIVERSION %f" >> $Mari
	echo "Name=Mari" >> $Mari
	echo "Icon=$ICONPATH/mari.png" >> $Mari
	echo "Mari icon was created"
}

function modoIcon() {

	Modo=/usr/share/applications/Modo.desktop
	MODOVERSION=$( ls $HOMEUSER_PATH | grep -i "modo")

	touch $Modo
	echo "[Desktop Entry]" > $Modo

	echo "Version=1.0" >> $Modo
	echo "Type=Application" >> $Modo
	echo "Exec=$HOMEUSER_PATH/$MODOVERSION/modo %f" >> $Modo
	echo "Name=Modo" >> $Modo
	echo "Icon=$ICONPATH/modo.png" >> $Modo
	echo "Modo icon was created"
}

function katanaIcon() {

	Katana=/usr/share/applications/Katana.desktop
	KATANAVERSION=$( ls /opt | grep -i "katana")

	touch $Katana
	echo "[Desktop Entry]" > $Katana
	echo "Terminal=true" >> $Katana
	echo "Version=1.0" >> $Katana
	echo "Type=Application" >> $Katana
	echo "Name=Katana" >> $Katana
	echo "Icon=$ICONPATH/katana.png" >> $Katana
	echo "Exec=/opt/$KATANAVERSION/katana %f" >> $Katana
	echo "Katana icon was created"	
}

if [ -d $ICONPATH ]
then
	echo -e "\nthis script only work if the images in the folder $ICONPATH have the following names: \n\nnukeX.png \nnukeStudio.png \nmodo.png \nkatana.png \nmari.png\n"
	echo -e "------------------------------------------------------\n"
	currentFiles=$(ls $ICONPATH )
	for x in $currentFiles
	do
		if [ $x == "nukeX.png" ]; then nukeXIcon; fi;
		if [ $x == "nukeStudio.png" ]; then nukeStudioIcon; fi;
		if [ $x == "modo.png" ]; then modoIcon; fi;
		if [ $x == "mari.png" ]; then mariIcon; fi;
		if [ $x == "katana.png" ]; then katanaIcon; fi;
	done
	echo -e "\n------------------------------------------------------\n"
else
	mkdir -m777 $ICONPATH
	echo -e "\nThe folder $ICONPATH was created. In this folder, add your four png icon images."
	echo -e "Each file should be named as: \n\nnukeX.png \nnukeStudio.png \nmodo.png \nkatana.png \nmari.png \nAfter that, run this script again"

fi
