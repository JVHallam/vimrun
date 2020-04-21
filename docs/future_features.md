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
	* Once the above queue system is in place
	* Add another stage to it, with 3 queues
	* One to three new exercises get added a day to queue one
	* 0 - exercises to be done, 1 - Brand new, 2 - Daily, 3 - every other day, 4 - final queue
	* It's taken from 0 to 1, and you practise it,
	* Every time you practise it, it's moved up one
	* Space this out, so that you're practising each one a little at a time.
	* Relies on the queue system from above being implemented
	
* file browsing exercise:
	* In one tab, you have the list of commands to do
	* In another tab, you have the file browser
	* You move through setup directory and do things to files, like renaming and what not
