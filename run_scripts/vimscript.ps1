$Project="vimscript";
$TempDirectory = "$($env:TEMP)\$($Project)"

if( !(Test-Path $TempDirectory) ){
	mkdir $TempDirectory;
}
else{
	rm "$($TempDirectory)/*";
}
vim "resources/$($Project)/*" "+tab all" "+tabdo exec 'write' '$($TempDirectory)/' . expand('%:t')" "+qall";
vim "$($TempDirectory)/*" "+tab all"; 
