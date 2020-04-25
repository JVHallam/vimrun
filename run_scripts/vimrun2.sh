#!/bin/bash

dirname="/tmp/vimrun$RANDOM"
mkdir $dirname;
# vim output.txt -c "source resources/allthings.vimscript"
vim output.txt -c "source resources/tabbed_allthings.vimscript"
mv output.txt $dirname
time vim $dirname/* -c "tab all";
