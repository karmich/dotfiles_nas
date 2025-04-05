#!/usr/bin/env bash

FIREFOX=firefox
STEAM=com.valvesoftware.Steam
PHPSTORM=phpstorm
MC=mc

FLATPAK_RUN=flatpak --user run

COMMAND=$(echo -e  "$FIREFOX\n$STEAM\nPHPSTORM\nMC" | wofi --show dmenu)

if [ -z "$COMMAND"]
then
	exit 1
fi

if [ "$COMMAND" == "$STEAM" ]
then
	exec $FLATPAK_RUN $COMMAND
fi

exec $(which "$COMMAND")
