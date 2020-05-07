# File managment:
* the script runs
* creates the vimrun/temp directory, if not already exist
* foreach directory in modular_vimrun:
    * create a file in vimrun/temp, named after that directory, if not already exist
        * file that new file, with the names of all files

    * then pick N exercises, based on the exponential queue system, from those temp files

    * concat them into a single file

    * output the file into the root vimrun directory

* The external scripts ( .sh, .ps1 ) handles moving those outputted files into the temp directories and opening them in vim

# The queue system and exponential selection
* All exercises are pushed into a queue
* queues are stored in the vimrun/temp directory
* Every vimrun.vimscript file is ran:
    * The exercise at end is put to the top
    * N exercises are selected
    * if i = every value from 0 to N - 1
        * index of the selected exercise = ( 2^i * multipler ) - 1
        * Where multipler = totalExercisesAvailable / 2^wantedExerciseCount
        * multiplier should be a value, such that, when 2^N - 1 * multiplier, the outcome is always 1/2 the total exercises available count
