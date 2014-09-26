source ~/configfiles/a.vim
syntax on			"syntax highlighing
set number			"turn on line numbers
set ts=4			"set tab spacing to 4
"set autoindent
set ruler			"show cursor position all the time
setlocal wrap
setlocal linebreak
set expandtab
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl
au BufNewFile,BufRead *.cl setf opencl
au BufRead,BufNewFile *.cc set syntax=cpp.doxygen
    
com! SCO call SpellCheckOff()
com! SC call SpellCheckOn()
com! PM call WordProcessorMode()

"a function to enter word processor mode
"www.drbunsen.org/writing-in-vim.html
func! WordProcessorMode()
	set textwidth=72				"these two lines set the max text width
	set formatoptions+=t			"and tell vim to automagically return to the next 
									"line as I type
	setlocal formatoptions+=1		"break on prev word, not hard linebreak
	setlocal noexpandtab
	"gj and gk move the cusor up and down one display line
	"as opposed to one physical line
	map j gj
	map k gk
	setlocal spell spelllang=en_us	"turn on english spell checking
	hi clear SpellBad
	hi SpellBad cterm=underline
	hi SpellBad ctermfg=red
	map z z=
"	set thesaurus+=$HOME/.vim/thesaurus/mthesaur.txt	"set a thesaurus
"	set complete+=s 				"look up synonyms for words
	set formatprg=par				"use par to format paragraphs (gq is the command)
endfu

"turn on spell check
func! SpellCheckOn()
	setlocal spell spelllang=en_us	"turn on english spell checking
	hi clear SpellBad
	hi SpellBad cterm=underline
	hi SpellBad ctermfg=red
	map z z=
endfu
com! SC call SpellCheckOn()

"turn off spell check
func! SpellCheckOff()
	set nospell						"turn off english spell checking
endfu

" enable setting title
set title

" configure title to look like: Vim /path/to/file
"set titlestring=vim:\ %-25.45F\ %a%r%m titlelen=70
" configure title to look like: VIM: file
set titlestring=VIM:\ %f 


" set up support for 256 color mode
set t_Co=256

colorscheme solarized

:command MD set background=dark
:command ML set background=light

source ~/.viColors.vim
