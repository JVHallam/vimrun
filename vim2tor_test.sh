#!/bin/bash

filename="/tmp/vim2tor$RANDOM"
secondFileName="/tmp/vim2tor_second$RANDOM";
cp base_file_vim2tor.txt $filename;
cp second_tab_base_file.txt $secondFileName; 
vi $filename $secondFileName -c "tab all";
