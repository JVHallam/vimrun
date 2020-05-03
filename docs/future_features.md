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

* Queue based practise ( first super basic SRS approach ):
	* Create a temp execution directory?
	* Inside is a file for each directory type ( movement, deletion, etc. )
    * Inside is a list of all exercises
	* It takes the top, say, 5 exercises from each
	* It removes them from the top and puts them on the bottom
    * :1,5 d
	* It also uses those exercises to run
    * This happens within the .vimscript, passing these to the constructor function thingy

	* This way, we can have an extremely basic SRS system, that could super easily be expanded
    * Have a script for updating the files

	* Could also have it randomise the order. That'd be cool.
	* let next exercise = rand() % 50, then 49, 48, etc.

* Basic queue growth:
  * The file that contains the queue, starts off with only 5.
  * Every time vimrun is ran, it adds 2 more that aren't already in the list, to the top
  * Then executes like normal

* Periodically growing the queue?
  * This could be done with a psuedo spiral, right?
  * There has to be a way of implementing the spiral i can visualise, but not describe
	
* file browsing exercise:
	* In one tab, you have the list of commands to do
	* In another tab, you have the file browser
	* You move through setup directory and do things to files, like renaming and what not
