* Atomic file structure
	* Each exercise could be it's own tiny little file
	* Have a file that contains a:
		* List of pages
			* Containing a list of exercises
			* A page name?

	* Have a script that :
		* Takes the above file
		* Combines everything into their new files
		* Then uses those for the actions

	* Why:
		* I want to be able to add an SRS system
		* This is the first step for that
	
* Queue based practise ( first super basic SRS approach ):
	* Have a file that contains the names of all exercises
	* It takes the top, say, 50 exercises
	* It removes them from the top and puts them on the bottom
	* It also uses those 50 for vimrun exercises
	* This way, we can have an extremely basic SRS system, that could super easily be expanded
	* Once the Atomic file structure thing has been implemented, this would be dope
	* Could also have it randomise the order. That'd be cool.
	* let next exercise = rand() % 50, then 49, 48, etc.

* Periodically growing the queue?
	* There needs to be a way to slowly grow the queue
	* By slowly growing the queue:
		* More cards get added over time
		* Practise session between older cards get longer
		* However, newer cards wouldn't get practised often enough to stick
	* The queue would have to me more of a spiral, then a circular queue
	* There needs to be a way to space out the practise sessions, prioritising newer cards
	
* file browsing exercise:
	* In one tab, you have the list of commands to do
	* In another tab, you have the file browser
	* You move through setup directory and do things to files, like renaming and what not
