#!/bin/bash

dirname="/tmp/vimrun$RANDOM"
mkdir $dirname;
cp resources/vimrun/* $dirname/;
time vim $dirname/* -c "tab all";
