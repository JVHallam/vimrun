# Insert and replace
wtf am i trying to do with magic mode \v

# Movement
* [[ and ]] are worth understanding, i don't know wtf they do
* they jump to the next { on the first column. Kinda useless.

{

    {
{}
    }

}

# Tags:
* Setup documentation
* Create tags
* Have an exercise for creating tags
* Use tags to jump to parts of your documentation
* Learn how tags work, then apply this shit

# Replacement
CTRL + D,
CTRL + T, 

# Special
* gf:
    * maybe have an overview list of the files with the exercises in them
    * use gf to go to that file
    * buffer management to do w/e
    * instead of opening them all in tabs
    * make this a config option

* More macros!
    * 10,15%norm @a:

* Cleanup the existing macro exercise:
    * Break it into a pair of exercises, not one
    * Clean up the task ( remove the text )

* :1,5 execution
* :1,5j => join lines 1,5

* :g
    * :g/match
        * show all lines that hit this match
    * :g/match/v/second_match/p
        * show all lines that match match but don't match second match

    * :g/match/d
        * delete all lines that match match
        
* :set spell => set spelllang=en_gb => ]s, [s, z=

* indentation
    * =G
    * the =aw{ or something like that

* filetype indentation:
    * have a miss aligned block
    * filetype indent on
    * then update shit

# Commandline and vimscript:
* Mapping:
    * nnoremap:
        * :nnoremap <Up> :buffnext

* ex-mode?  -> shift + q
* read
* write
* : tabdo
* : bufdo

* Buffers, splits and tabs:
    * When running the script, have some additional files load into buffers
    * These files could be used for ":sview horizontal", ":split sb 3"
    * That way, i can practise a bit more buffer management

* piping commands:
    * /s/more stuff/morestuff/ more stuff/ etc.
    * %s/ match / `\0` /g
        * surround all matches with backticks

* vimscript:
    * Recursive sort
    * Take the sort function i already have and make it recursive

* Priority:

* Assertions!:
    * There should be assertions on the functions, not long ass descriptions.

* Control flow and operators and stuff

* Variables
let last  = mylist[-1]
let withoutLast = myList[0:-2]
let withoutFirst = myList[1:]
let myDict = { "key" : "value" }

* Functions

split("one two three)
split("one.two.three", ".")
add(mylist, value)
remove( list, ind )
remove( dict, key )
has_key( dict, "key" )
index( list, value ) -> like the .findIndex from js
count( dict, "x" ) -> Counts the occurence of a value
string(dict) -> Turns a dict into a string
let extend(s:fruits, { ... })
tolower("string")
toupper("string")

execute -> useful to have some practise with
normal G -> run normal mode commands, might be useful:

* I want custom commands in here
command! Save :set fo=want tw=80 nowrap

* filetype detection
augroup filetypedetect
  au! BufNewFile,BufRead *.json setf javascript
augroup END

au Filetype markdown setlocal spell

# Buffer commands:
* :buffer
* this could be added to the filemanagement vimrun in the future
