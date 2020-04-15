$TempDirectory = "test"
ls resources | foreach -process { cat "resources/$($_.Name)" > "$($TempDirectory)/$($_.Name)" };
vim "$($TempDirectory)/*" -c "tab all";

<#
## What this script should do
* Open all the resources files
* Save them to a new directory
	* Grab the files name
	* Save that file to a new directory
* close the original files
* Open the copies

OR

* Just make sure that the user is editing the copies instead of the originals

#>
