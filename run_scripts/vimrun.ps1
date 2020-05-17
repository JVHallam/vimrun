$dirname = "$($env:TEMP)\vimrun"

if( !(Test-Path $dirname) ){
	mkdir $dirname;
}
else{
	rm "$($dirname)/*";
}

vim -c "source resources/vimrun.vimscript"
mv *.vimrun $dirname

$startTime = Get-Date
vim $dirname/* -c "tab all";
$endTime = Get-Date

$timeTaken = $endTime - $startTime
echo "Time Taken : $($timeTaken.Minutes):$($timeTaken.Seconds)"
