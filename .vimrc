source ~/.configfiles/a.vim
syntax on			"syntax highlighing
set number			" turn on line numbers
set ts=4			" set tab spacing to 4
"set autoindent
set ruler			" show cursor position all the time
setlocal wrap
setlocal linebreak
set expandtab
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl
au BufNewFile,BufRead *.cl setf opencl
au BufNewFile,BufRead *.gradle setf groovy
au BufRead,BufNewFile *.cc set syntax=cpp.doxygen
set textwidth=72     " set the max text width to 72 columns
set formatoptions-=t " but don't automagically return to the next line
    
" ignore files with the following extenstions when doing autocompete
" within vim, use case: when splitting the window
" example:
" set wildignore+=*.pdf,*.o,*.obj,*.jpg,*.png
set wildignore+=*.class

com! SCO call SpellCheckOff()
com! SC call SpellCheckOn()
com! PM call WordProcessorMode()

"a function to enter word processor mode
"www.drbunsen.org/writing-in-vim.html
func! WordProcessorMode()
	set formatoptions+=t       " tell vim to automagically return
                               " to the next line as I type
	setlocal formatoptions+=1  " break on prev word, not hard linebreak
	"gj and gk move the cusor up and down one display line
	"as opposed to one physical line
	map j gj
	map k gk
	setlocal spell spelllang=en_us	"turn on english spell checking
	hi clear SpellBad
	hi SpellBad cterm=underline
	hi SpellBad ctermfg=red
	map z z=
"	set thesaurus+=$HOME/.vim/thesaurus/mthesaur.txt  " set a thesaurus
"	set complete+=s   " look up synonyms for words
	set formatprg=par " use par to format paragraphs
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

colorscheme solarized " on lee2.cs.uno.edu, this line causes
                      " automatic splitting the window for opening
                      " any file. wierd
:command MD set background=dark
:command ML set background=light

" source the file to set the default background color of vim
" this file is in $HOME to keep files that are constantly modified
" out of my git repository.
source ~/.viColors.vim
