" State
let g:exercises = []
let g:currIndex = -1
let g:currFile = v:null
let g:exercisePath = "contents/exercise/"
let g:hintPath = "contents/hint/"
let g:scriptPath = "contents/vimscript/"



" Read the hint file into the current file
function AppendHint( hintPath )
    if( filereadable(a:hintPath) )
        let hint = readfile( a:hintPath )
        call append( line("$"), hint )
    else
        echo "Hint file does not exist : " . a:hintPath
    endif
endfunction

"This is what should be mapped to the right key
function Hint()
    echo "Delivering hint"
    call AppendHint( g:currFile[1] )
endfunction

function EmptyFile()
    :%! echo ""
    call deletebufline(bufnr(), 1, line("$"))
endfunction

function Source()
    echo g:currFile[2]
    call SourceFile( g:currFile[2] )
endfunction

function SourceFile( filePath )
    if( filereadable( a:filePath ) )
        execute "source " . a:filePath
    else
        echo "No file to be sourced" . a:filePath
    endif
endfunction

function CloseApp()
    echo "All done"
    :q!
endfunction

" Value array are the lines to be added into the current file
function SetupFile( templatePath )
    let values = readfile( a:templatePath )
    call append( 0, values )
endfunction

function Advance()
    echo "Advancing"
    let g:currIndex = g:currIndex + 1

    if( g:currIndex >= len( g:exercises ) )
        call CloseApp()
        return
    endif

    let g:currFile = g:exercises[g:currIndex]
    echo g:currFile

    call EmptyFile()

    call SetupFile( g:currFile[0] )

    " Dump the current exercise into the current file
    call Source()
endfunction

function Init()
    " get a list of just the file names, not the full path
    let a = globpath(g:exercisePath , "*")
    let a = a->split("\n")
    let b = a->map({ index, value -> value->substitute("exercise\\", "", "") })
    let b = b->map({ index, value -> value->substitute("contents\\", "", "") })
    let g:exercises = b

    let g:exercises = b->map({ index, value -> [g:exercisePath . value, g:hintPath . value, g:scriptPath . value] })
endfunction

call Init()
echo g:exercises

nnoremap <down> :call Hint()<cr>
nnoremap <right> :call Advance()<cr>
