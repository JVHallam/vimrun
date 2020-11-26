" Hint appends the solution to the current file

" State
let g:test = [ [ "first.txt", "hint.txt" ], [ "second.txt", "second_hint.txt" ] ]
let g:currIndex = -1
let g:currFile = g:test[0]

" Read the hint file into the current file
function AppendHint( hintPath )
    let hint = readfile( a:hintPath )
    call append( line("$"), hint )
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

function CloseApp()
    echo "We're all out of cum at " . g:currIndex
endfunction

" Value array are the lines to be added into the current file
function SetupFile( templatePath )
    let values = readfile( a:templatePath )
    call append( 0, values )
endfunction

function Advance()
    " Load the next buffer?
    " Fuck off, is it just bnext?
    " Need to find a more elegant solution than bnext
    " Due to the fact that bnext doesn't 
    echo "Advancing"
    let g:currIndex = g:currIndex + 1

    if( g:currIndex >= len( g:test ) )
        call CloseApp()
        return
    endif

    let g:currFile = g:test[g:currIndex]
    echo g:currFile

    call EmptyFile()

    call SetupFile( g:currFile[0] )

    " Dump the current exercise into the current file
endfunction

nnoremap <down> :call Hint()<cr>
nnoremap <right> :call Advance()<cr>
