# Essential
* Requirements before I move onto the next run:
    * I want each exercise group ( other than exit ) to have 32+ exercises
        * Go through all of the exising exercises
            * Break them down if need be

        * Go through the "commands_to_add.md" list
            * Add any that might bulk up the existing low count groups

        * Go through the flash cards and any that don't already have an exercise, make one

        * Go through the general doc and see if any of the un-carded information could become cards
            * then make them exercises

        * Go through any of the links in the doc and see if the above can be done for them too

        * If an exercise group can't really break the 32 mark by a significant margin ( 1/2 the exercises )
          Merge them into the another group 

        * If an exercise group is way over the 32 mark, split it down into a new tab?

        * If there's alot, try and add in a vimscript tab, that'd be pretty cool, but not essential
    
    * Each exercise needs to feel like it meets the current criteria
        * One action / chord / meaningful group of movements per group exercise

# Would be nice to have
* file browsing exercise:
	* In one tab, you have the list of commands to do
	* In another tab, you have the file browser
	* You move through setup directory and do things to files, like renaming and what not

* Syncronising sessions:
    * Upon running vimrun
        * SFTP into the server
        * grab the file
        * compare the 2 ( check if the current is later than the server )
        * Either get the latest from the server or do nothing
        * create the next session
        * put that version to the server

    * Wouldn't be hard, just store the server path in a session variable
    * I think you can do ftp inside of vim?
