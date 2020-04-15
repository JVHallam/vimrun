$TempDirectory = "test"
vim resources/* "+tab all" "+tabdo exec 'write' '$($TempDirectory)/' . expand('%:t')" "+qall";
vim "$($TempDirectory)/*" "+tab all";
