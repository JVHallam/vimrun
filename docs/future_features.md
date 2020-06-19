# Essential
* Requirements before I move onto the next run:
    * I want each exercise group ( other than exit ) to have 32+ exercises

        * Go through the flash cards and any that don't already have an exercise, make one

        * Go through the general doc and see if any of the un-carded information could become cards
            * then make them exercises

        * Go through any of the links in the doc and see if the above can be done for them too

* Vimscript:
    * You can source a file, then run the functions that are in it from the commandline.
    * This will allow me to use vimscript, source the generated file, then manually call the functions
    * You can call alot of vimscript functions from the commandline, using the "call" command
    * getcurpos -> get's the cursor position
    * There's literally no reason that i shouldn't add in some base level vimscript stuff
    

# Would be nice to have
* file browsing exercise:
	* In one tab, you have the list of commands to do
	* In another tab, you have the file browser
	* You move through setup directory and do things to files, like renaming and what not

    * Tabs, Buffers, Windows, all would be nice to put together in the same set of exercises.

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
