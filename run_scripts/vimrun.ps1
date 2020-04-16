$TempDirectory = "$($env:TEMP)\vimrun"
if( !(Test-Path $TempDirectory) ){
	mkdir $TempDirectory;
}
vim resources/* "+tab all" "+tabdo exec 'write' '$($TempDirectory)/' . expand('%:t')" "+qall";
vim "$($TempDirectory)/*" "+tab all";
