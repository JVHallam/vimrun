# Deletion

# Exit

# Insertion

# Movement
* marks, setting and moving 
    * ma => mark a, `a => go to a, ]' next, [' previous
    * ma -> 'a

* folds:
    * zj move to the next fold
    * zk previous fold
    * [z ]z moving between folds
    * zR open all folds

# Replacement
* regex based search and replace:
    * :s/\v(capturegroup)/This is the group -> \1/g
    * \0 means the entire match
    * \1 only means the capture group
    * I could definitely use knowing this

* Regex based lookaheads
    * https://vim.fandom.com/wiki/Regex_lookahead_and_lookbehind

" this is a penis "

# Special
* More macros!
    * 10,15%norm @a:
* :1,5 execution
* :1,5j => join lines 1,5

* :g
    * :g/match
        * show all lines that hit this match
    * :g/match/v/second_match/p
        * show all lines that match match but don't match second match

    * :g/match/d
        * delete all lines that match match
        

* CTRL + P => autocomplete previous word

* :set spell => set spelllang=en_gb => ]s, [s, z=
* registers => "a
            => ""
            => "0
            => "+

* indentation
    * =G
    * the =aw{ or something like that

# Commandline and vimscript:
* globpath(".", "*")
* split( string )
* declaring functions
* calling functions
* if statements
* ex-mode?  -> shift + q
* read
* write
* vimgrep
* : tabdo
* : bufdo

* vimscript:
    * echo vimscript allows you to run some vimscript
    * call Cursor(2,0) will actually move you to that line
    * let a = globpath("*", "."), also lets you call vimscript functions
    * let a = 1 == 1 ? 1 : 0, yes, that's a ternary statement


# Buffer commands:
* :buffer
* this could be added to the filemanagement vimrun in the future
