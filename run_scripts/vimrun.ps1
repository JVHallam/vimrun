$TempDirectory = "$($env:TEMP)\vimrun"
mkdir $TempDirectory;
vim resources/* "+tab all" "+tabdo exec 'write' '$($TempDirectory)/' . expand('%:t')" "+qall";
vim "$($TempDirectory)/*" "+tab all";
