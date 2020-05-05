$dirname = "$($env:TEMP)\vimrun"

if( !(Test-Path $dirname) ){
	mkdir $dirname;
}
else{
	rm "$($dirname)/*";
}

vim -c "source resources/tabbed_allthings.vimscript"
mv *.vimrun $dirname
vim $dirname/* -c "tab all";
