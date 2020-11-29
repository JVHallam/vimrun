# What's going on:
* We load up a page
* Page has an exercise on it
* when i hit down, it gives solution
* when i hit right, the next one loads
* ( optional ) when i hit left, the previous one loads
* ( optional ) when i hit up, the exercise is skipped, and moved along in the process

* to do:
    * I could load the entire application state ( the exercise rotation ) into a variable
    * Modularise the setup and loading code
    * have the state be updated on exercise load
    * re-design the algorithm? - no, it's a pretty solid algo idea
        * if each filename is unique, which it should well be, then it shouldn't be a problem to use the names like keys
    * have hint set a flag, that's activated on advance
    * close on the final one
    * maybe put ( 1 / x ) at the top
