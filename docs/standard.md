Vim2tor Stardards
===

## Key ideas
* Keep lines short
* NO EXPLANATIONS
* If an explanation is needed, create smaller exercises to explain the complex things
* Focus on replayability.
* Use whitespace as much as you can to draw divisions
* Per exercise block, try and have the action done 3 times or less.
* Create exercises with learning through daily repitition in mind
* Don't ask the user to think, ask them to do

## Standards list:
* There's only one command / chord / combo per section

      ( This is where the commands are )

* Section titles are the commands / combos that are to be done there
* Each file must be no more than 10 exercises long
* If something feels redundant, remove it
* The entire run should take no more than 5 - 10 minutes on repitition

## When words aren't needed.
* XXX   - useless block to be deleted
* |     - a position to be jumped to
* 0-9   - Use numbers to denote order. Not the alphabet.

## Exercise layout:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

           ( Command )


--> Line on which to the exercise
==> The end result we're trying to match

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


## Absolute do nots!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


           ( Command 1 )
           ( Command 2 )
           ( Command 3 )


==> This will cause the user NOT to think that these are seperate commands
    But are commands that must be executed together.
==> Therefore when trying to do command 3, they must do 1 and 2 first.
    It's happened to me, it's not good.


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


## Build tools and execution:
This ones a little less important, but still important to the spirit of the project.
The idea is that shell scripts are only using vim as the commandline tool.
No ls, no mv, no cp, no grep, just vim.
