#!/bin/bash

PLUGIN_NAME="player-resize"

cd scripting
spcomp $PLUGIN_NAME.sp -o ../plugins/$PLUGIN_NAME.smx
