$Project=$args[0];
$dirname = "$($env:TEMP)\$($Project)"

if( !(Test-Path $dirname) ){
	mkdir $dirname;
}
else{
	rm "$($dirname)/*";
}
# vim "resources/$($Project)/*" "+tab all" "+tabdo exec 'write' '$($dirname)/' . expand('%:t')" "+qall";
# vim "$($dirname)/*" "+tab all"; 

vim -c "source resources/tabbed_allthings.vimscript"
mv output* $dirname
vim $dirname/* -c "tab all";
