* Bulk up practises:
    * Any exercise that has multiple lines in it, split them out into multiple exercises
        * movement:
            * line number can be split
        * insertion
            * A
            * o || O => can have 2 more exercises made out of this

            * Yp -> the lines needs swapping round

        * deletion:
            * d,w -> needs splitting

        * special:
            * Marco
            * search
                * Can definitely be broken down WAY FURTHER

    * For each section, i need to have 33 ( 2^5 ) exercises, for the SRS system i want to implement
    * Implement the XXX and --- idea, to show how things move, without text
        * deletion, definitely needs an example of this

    * Current count:
        * replacement : 18 -> +15 required
        * Deletion : 16 -> +17 required
        * insertion : 5 -> +28 required
        * movement : 5 -> +28 required
        * special : 4 -> +29 required
        * exit : Should stay as 1

* Cleanup the commands_to_add file:
    * There is no standard to the current layout
    * Re-arrange the file to match the current directory structure
    * Reformat it into a markdown file. 

* Fix the initial setup:
    * If the number of lines in the temp file != the number of files in the directory:
        * Clean out the file
        * Update it to contain everything

* SRS:
    * The script should pick 5 / 10 ( or so ) files to be used
    * multiplier * 2^n-1, where:
        * multiplier = ( Excercise count / 2^n )
        * n is the exercise number ( 0,1,2,3,etc. )
        * rounded up to the next int

    * So, you pick 5 exercises, with a total of 16 exercises total:
        * multiplier = 16 / 2^5 => 16 / 32 => 0.5
        * 2^0 * 0.5 => 0.5 => 1
        * 2^1 * 0.5 => 1
        * 2^2 * 0.5 => 2
        * 2^3 * 0.5 => 4
        * 2^4 * 0.5 => 8

    * Then, if the results match, shimy the next ones up by one

    * If the number of exercises in the file = the number of exercises total, remove the final line from the file

    * :echo pow( 2, 0 ) => 1
	
* file browsing exercise:
	* In one tab, you have the list of commands to do
	* In another tab, you have the file browser
	* You move through setup directory and do things to files, like renaming and what not
