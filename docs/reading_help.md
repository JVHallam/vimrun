# I'm going to read a good chunk of the help.txt files.
* TODO:
* go through all of the remaining commands in the help index.txt file
* go through specific pages and read those
* create notes
* create flash cards
* create vimrun

* index file length : 1700 lines

* special command sections
    * window commands
        * index 518

    * [ square bracket commands ]
        * 615

    * |g|		g{char}		   extended commands, see |g| below
        * 705
        * g, CTRL + G for a word count

    * z commands
        * 807

    * visual mode:
        * 888

    * command line editing:
        * 1002


    * Terminal job mode?
        * 1101

    * ex commands
        * 1124
        * This is the files SUPER LONG BOI, at like, 600 lines
        * this will come in handy later

* Things to research:
    * using regexes in the :s mode
    * :%s/\([^,]*\), \(.*\)/\2 \1/
    * using external commands !
        * can these use powershell instead of bat?

|usr_40.txt|  Make new commands
|usr_41.txt|  Write a Vim script
|usr_42.txt|  Add new menus
|usr_43.txt|  Using filetypes
|usr_44.txt|  Your own syntax highlighted
|usr_45.txt|  Select your language
|tips.txt|	various tips on using Vim
|diff.txt|	working with two to four versions of the same file
|autocmd.txt|	automatically executing commands on an event
|eval.txt|	expression evaluation, conditional commands
|testing.txt|	testing Vim and Vim scripts
* List of assertions
* VIM HAS TDD! DUDE!

|remote.txt|	using Vim as a server or client
|indent.txt|	automatic indenting for C and other languages
|syntax.txt|	syntax highlighting
|filetype.txt|	settings done specifically for a type of file
|textprop.txt|	Attaching properties to text for highlighting or other
|quickfix.txt|	commands for a quick edit-compile-fix cycle

# Quite useful sounding commands:
|i_CTRL-R|	CTRL-R {register}
				insert the contents of a register


|i_0_CTRL-D|	0 CTRL-D	delete all indent in the current line
|CTRL-Z|	CTRL-Z		   suspend program (or start new shell)

                normal mode
		CTRL-\ a - z	   reserved for extensions

|CTRL-^|	CTRL-^		   edit Nth alternate file (equivalent to
				   ":e #N")
|$|		$		1  cursor to the end of Nth next line
    * i still suffer with not using this one

|N%|		{count}%	1  go to N percentage in the file

|&|		&		2  repeat last :s

|''|		''		1  cursor to the first CHAR of the line where
				   the cursor was before the latest jump.

|'[|		'[		1  cursor to the first CHAR on the line of the
				   start of last operated text or start of put
				   text

|,|		,		1  repeat latest f, t, F or T in opposite
				   direction N times

|N:|		{count}:	   start entering an Ex command with range
				   from current line to N-1 lines down

|@:|		@:		   repeat the previous ":" command N times

|@@|		@@		2  repeat the previous @{a-z} N times

|ZZ|		ZZ		   store current file if modified, and exit
|ZQ|		ZQ		   exit current file always
|do|		do		2  same as ":diffget"
|dp|		dp		2  same as ":diffput"
|q:|		q:		   edit : command-line in command-line window
|q/|		q/		   edit / command-line in command-line window
|q?|		q?		   edit ? command-line in command-line window
|bar|		|		1  cursor to column N

|o_CTRL-V|	CTRL-V		force operator to work blockwise
    * CTRL - V, iw

# Text object i don't know
|v_aB|		aB		   "a Block" from "[{" to "]}" (with brackets)
|v_a[|		a[		   "a []" from '[' to the matching ']'
|v_ab|		ab		   "a block" from "[(" to "])" (with braces)
|v_a{|		a{		   same as aB
|v_a}|		a}		   same as aB

# General commands
|'<|		'<		1  cursor to the first CHAR of the line where
				   highlighted area starts/started in the


* i _ CTRL - a -> Re-insert previously inserted text
* i _ CTRL + c -> Same as escape
* i _ CTRL + e -> insert the character on the line below the cursor
* allows you to move around whilst in insert mode
    |i_CTRL-G_j|	CTRL-G CTRL-J	line down, to column where inserting started
    |i_CTRL-G_j|	CTRL-G j	line down, to column where inserting started
    |i_CTRL-G_j|	CTRL-G <Down>	line down, to column where inserting started
    |i_CTRL-G_k|	CTRL-G CTRL-K	line up, to column where inserting started
    |i_CTRL-G_k|	CTRL-G k	line up, to column where inserting started
    |i_CTRL-G_k|	CTRL-G <Up>	line up, to column where inserting started

|i_CTRL-O|	CTRL-O		execute a single command and return to insert
				mode

|i_CTRL-R|	CTRL-R {register}
				insert the contents of a register

|i_CTRL-[|	CTRL-[		same as <Esc>


		CTRL-\ a - z	reserved for extensions
|CTRL-B|	CTRL-B		1  scroll N screens Backwards
|CTRL-E|	CTRL-E		   scroll N lines upwards (N lines Extra)
|CTRL-Y|	CTRL-Y		   scroll N lines downwards

|CTRL-F|	CTRL-F		1  scroll N screens Forward
# commands i don't understand and should research
|i_CTRL-]|	CTRL-]		trigger abbreviation
|i_CTRL-X|	CTRL-X {mode}	enter CTRL-X sub mode, see |i_CTRL-X_index|
* help index.txt 153, 168

|<Tab>|		<Tab>		1  go to N newer entry in jump list
|CTRL-O|	CTRL-O		1  go to N older entry in jump list
* wtf is the jump list?

|CTRL-T|	CTRL-T		   jump to N older Tag in tag list
* wtf is the tag list?


|!|		!{motion}{filter}
				2  filter Nmove text through the {filter}
				   command

|K|		K		   lookup Keyword under the cursor with
				   'keywordprg'
