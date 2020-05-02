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
