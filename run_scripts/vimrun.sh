#!/bin/bash

dirname="/tmp/vimrun$RANDOM"
mkdir $dirname;
vim -c "source resources/vimrun.vimscript"
mv *.vimrun $dirname
time vim $dirname/* -c "tab all";
