$Project=$args[0];
$dirname = "$($env:TEMP)\$($Project)"

if( !(Test-Path $dirname) ){
	mkdir $dirname;
}
else{
	rm "$($dirname)/*";
}

vim -c "source resources/tabbed_allthings.vimscript"
mv *.vimrun $dirname
vim $dirname/* -c "tab all";
