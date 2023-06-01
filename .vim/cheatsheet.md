# vim cheatsheet

## file navigation

`:e {file}`	| select and edit file, supports tab completion
`:b {buf}`	| select and edit buffer, supports tab completion
`:bd`		| delete current buffer

## custom 

`<c-n>`		| open netrw in window
`<c-p>`		| start find
`<c-s>`		| open terminal in window

## netrw

`cd`		| change working directory
`mb`		| make bookmark of current directory
`qb`		| list bookmarks
`{cnt}gb`	| jump to bookmark `cnt`
`mf`		| mark file
`mt`		| mark target
`mm`		| move marked file to marked target
`mc`		| copy marked file to marked target
`%`			| create a new file
`d`			| delete a file
`R`			| rename a file

## window

`<c-w> s`	| create new horizontal split (`v` for vertical split)
`<c-w> h`	| focus left window (also works for `hjkl`)
`<c-w> H`	| move current window left (also works for `HJKL`)
`<c-w> =`	| set all windows to proportionally equal sizes
`<c-w> +`	| increase window vertical height. (`-` for decrease)
`<c-w> >`	| increase window horizontal height (`<` for decrease)

# searching

`:grep s **`| recursively search all subdirectories for the string "s"
`:vim s **`	| recursively search all subdirectories for the string "s"
`:copen`	| open quickfix list to show all results of the search

# unicode input

`<c-l>`		| start latex-style input

