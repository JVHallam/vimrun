* Atomic file structure
	* Take each exercise
	* Put it into it's own file
	* The file start with the exercise name ( w, x ), for example
	* ends with the final line of the exercise
	* no additional white space, borders, etc.

	* for each exercise:
		* create a new file ( the exercise name, without :, ',', etc. )
		* copy the exercise in
		* save it

* Queue based practise ( first super basic SRS approach ):
	* Break all the existing exercises into their own files
	* have a directory for each type of file ( movement, deletion, etc. )
	* Create a temp execution directory?
	* Inside is a file for each directory type ( movement, deletion, etc. )

	* It takes the top, say, 5 exercises from each
	* It removes them from the top and puts them on the bottom
	* It also uses those 25 for vimrun exercises

	* This way, we can have an extremely basic SRS system, that could super easily be expanded

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
