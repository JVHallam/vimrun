# I'm going to read a good chunk of the help.txt files.
* TODO:
* go through all of the remaining commands in the help index.txt file
* go through specific pages and read those
* create notes
* create flash cards
* create vimrun


* Can't find good stuff on vimscript:
    *   for i in list
            echo s
            continue
            break
        endfor

    *   while x < 5
        endwhile

    * a is not b
    * a is b

    * regexp expressions
        "hello" =~ '/x/'
        "hello" !~ '/x/'

    *   let longlist = mylist + [5, 6]
        let mylist += [7, 8]

        let alist = [1, 2, 3]
        let alist = add(alist, 4)
    *   call map(files, "bufname(v:val)")  " use v:val for value
        call filter(files, 'v:val != ""')

        let colors = {
          \ "apple": "red",
          \ "banana": "yellow"
        }

        echo colors["a"]
        echo get(colors, "apple")

        remove(colors, "apple")
        " :help E715
        if has_key(dict, 'foo')
        if empty(dict)
        keys(dict)
        len(dict)
        max(dict)
        min(dict)
        count(dict, 'x')
        string(dict)
        map(dict, '<>> " . v:val')

        let extend(s:fruits, { ... })

        augroup filetypedetect
          au! BufNewFile,BufRead *.json setf javascript
        augroup END

        au Filetype markdown setlocal spell

* index file length : 1700 lines

* special command sections
    * window commands
        * index 518

        * |CTRL-W_=|	CTRL-W =	   make all windows the same height & width
|CTRL-W_H|	CTRL-W H	   move current window to the far left
|CTRL-W_J|	CTRL-W J	   move current window to the very bottom
|CTRL-W_K|	CTRL-W K	   move current window to the very top
|CTRL-W_L|	CTRL-W L	   move current window to the far right
|CTRL-W_n|	CTRL-W n	   open new window, N lines high
|CTRL-W_o|	CTRL-W o	   close all but current window (like |:only|)

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
|:!|		:!		filter lines or execute an external command
|:!!|		:!!		repeat last ":!" command
|:&|		:&		repeat last ":substitute"
|:star|		:*		execute contents of a register
|:@|		:@		execute contents of a register
|:@@|		:@@		repeat the previous ":@"
|:<|		:<		shift lines one 'shiftwidth' left
|:=|		:=		print the cursor line number
|:>|		:>		shift lines one 'shiftwidth' right
|:Next|		:N[ext]		go to previous file in the argument list
|:append|	:a[ppend]	append text
|:abbreviate|	:ab[breviate]	enter abbreviation
    * ab main int main( int argc, char** argv){<cr>}
|:abclear|	:abc[lear]	remove all abbreviations
|:all|		:al[l]		open a window for each file in the argument
|:amenu|	:am[enu]	enter new menu item for all modes
|:args|		:ar[gs]		print the argument list
|:argadd|	:arga[dd]	add items to the argument list
|:argdelete|	:argd[elete]	delete items from the argument list
|:argedit|	:arge[dit]	add item to the argument list and edit it
|:argdo|	:argdo		do a command on all items in the argument list
|:ball|		:ba[ll]		open a window for each buffer in the buffer list
|:badd|		:bad[d]		add buffer to the buffer list
|:bdelete|	:bd[elete]	remove a buffer from the buffer list
|:breakadd|	:breaka[dd]	add a debugger breakpoint
|:breakdel|	:breakd[el]	delete a debugger breakpoint
|:breaklist|	:breakl[ist]	list debugger breakpoints
|:change|	:c[hange]	replace a line or series of lines
|:cabbrev|	:ca[bbrev]	like ":abbreviate" but for Command-line mode
|:cabclear|	:cabc[lear]	clear all abbreviations for Command-line mode
|:caddfile|	:caddf[ile]	add error message to current quickfix list
|:catch|	:cat[ch]	part of a :try command

* Errors are a thing, idk what they are though
|:cNext|	:cN[ext]	go to previous error
|:cc|		:cc		go to specific error
|:cdo|		:cdo		execute command in each valid error list entry
|:cfdo|		:cfd[o]		execute command in each file in error list
|:chistory|	:chi[story]	list the error lists
|:clist|	:cl[ist]	list all errors


|:command|	:com[mand]	create user-defined command

|:delfunction|	:delf[unction]	delete a user function
|:diffupdate|	:dif[fupdate]	update 'diff' buffers
|:diffget|	:diffg[et]	remove differences in current buffer
|:diffoff|	:diffo[ff]	switch off diff mode
|:diffpatch|	:diffp[atch]	apply a patch and show differences
|:diffput|	:diffpu[t]	remove differences in other buffer
|:diffsplit|	:diffs[plit]	show differences with another file
|:diffthis|	:diffthis	make current window a diff window
|:endif|	:en[dif]	end previous :if
|:endfor|	:endfo[r]	end previous :for
|:endfunction|	:endf[unction]	end of a user function



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
