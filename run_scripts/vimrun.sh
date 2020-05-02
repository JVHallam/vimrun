#!/bin/bash

dirname="/tmp/vimrun$RANDOM"
mkdir $dirname;
vim -c "source resources/tabbed_allthings.vimscript"
mv *.vimrun $dirname
time vim $dirname/* -c "tab all";
