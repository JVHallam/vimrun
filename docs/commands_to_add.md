# Deletion

# Insertion

# Movement
* [{ And ]} to move between squiggly braces
* [( and ]) to move between circle braces

* [[ and ]] are worth understanding, i don't know wtf they do

# Tags:
* Setup documentation
* Create tags
* Have an exercise for creating tags
* Use tags to jump to parts of your documentation
* Learn how tags work, then apply this shit

* Text objects and their parents.
vatat -> Highlight the current tag, then highlight the parent tag

<grandparent>
    <parent>
            <child>
                    This is my child
            </child>	
    </parent>
</grandparent>

( grand ( parent ( child ) close ) close )

{ grand { parent { child } close } close }

this. is. some. sentences. that. keep. going. on.

Paragraphs work too.

words too.

# Replacement
CTRL + D,
CTRL + T, 

# Special
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
