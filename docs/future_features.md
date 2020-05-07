# Essential
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

* file browsing exercise:
	* In one tab, you have the list of commands to do
	* In another tab, you have the file browser
	* You move through setup directory and do things to files, like renaming and what not

# Would be nice to have
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
