" Enable true-color under tmux
map <Space> <leader>
if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
set termguicolors
set background=dark
let g:gruvbox_contrast_dark='hard'

" Plugins go inside this section
call plug#begin('~/.vim/plugged') " {{{

set tabstop=2
set shiftwidth=2
set expandtab


Plug 'tpope/vim-sensible'   " Very sensible defaults
"Plug 'rstacruz/vim-opinion' " Pretty sensible defaults

" Pretty colors {{{
Plug 'fwip/fairyfloss.vim'     " Very pretty
Plug 'morhetz/gruvbox'         " Colorscheme of choice
Plug 'tomasr/molokai'          " Other colors
Plug 'jacoborus/tender.vim'    " Other colors
Plug 'nanotech/jellybeans.vim' " Other colors
Plug 'AlessandroYorba/Despacio'
Plug 'sonjapeterson/1989.vim'  "
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" }}}

" tpope plugins {{{
Plug 'tpope/vim-endwise'     " Add 'end' automatically
Plug 'tpope/vim-eunuch'      " Unix commands
Plug 'tpope/vim-fugitive'    " Git integration
Plug 'tpope/vim-git'         " More git
Plug 'tpope/vim-repeat'      " Makes more stuff repeatable with '.'
Plug 'tpope/vim-surround'    " Easy change 'surrounding' characters
Plug 'tpope/vim-afterimage'  " Edit images in vim!
Plug 'tpope/vim-commentary'  " (Un)comment lines with 'gc'
" }}}

Plug 'gregsexton/gitv'       " Extra git support

Plug 'vim-scripts/Align'     " Easy alignment
Plug 'nathanaelkane/vim-indent-guides' " Visual indent guides

" Plug 'scrooloose/syntastic'   " Auto-detect and flag syntax errors  {{{
" let g:airline#extensions#syntastic#enabled = 1
" let g:syntastic_aggregate_errors = 1
" let g:syntastic_error_symbol = "\u2717"
" let g:syntastic_warning_symbol = "\u26A0"
" let g:syntastic_style_error_symbol = "\u2717"
" let g:syntastic_style_warning_symbol = "\u26A0"
"
" let g:syntastic_vim_checkers = ['vint']
" let g:syntastic_vim_vint_args = '--style'
" " }}}

Plug 'w0rp/ale'    " Async syntax checker {{{
let g:ale_history_log_output = 1
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '']
" }}}

"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}} " LSP client {{{

"" }}}

" Filetype support {{{
Plug 'jneen/ragel.vim'         " Better ragel support
Plug 'sheerun/vim-polyglot'    " A whole bunch of language packs (indentation + syntax)
Plug 'pangloss/vim-javascript' " Better JS support
Plug 'vim-scripts/bats.vim'                " Bash Automated Testing System
Plug 'fatih/vim-go'            " Go support {{{
  let g:go_fmt_command = "goimports"
  let g:go_def_mode = 'gopls'
" }}}
Plug 'Kuniwak/vint'            " Vim linter
Plug 'dart-lang/dart-vim-plugin'
Plug 'pest-parser/pest.vim'    " Peg syntax

Plug 'jakwings/vim-pony' " Pony syntax
"Plug 'gf3/peg.vim'       " PEG syntax


let g:rustfmt_autosave = 1

let g:dart_html_in_string=v:true

let g:elm_format_autosave = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1
Plug 'ElmCast/elm-vim'         " Elm support

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'othree/javascript-libraries-syntax.vim' " Angular stuff
"Plug 'davidhalter/jedi-vim'                   " Python completion

Plug 'rizzatti/dash.vim' " Dash (docs for Mac) integration
" }}}

" Navigation {{{
Plug 'justinmk/vim-sneak'    " Redefines 's' command as a sort of 2-character '/'
Plug 'wellle/targets.vim'    " Add a bunch of handy text objects

Plug 'christoomey/vim-tmux-navigator' " EZ bindings for vim&tmux
" }}}

Plug 'rking/ag.vim'                           " The silver searcher
Plug 'editorconfig/editorconfig-vim'          " support .editorconfig standards
Plug 'kshenoy/vim-signature'                  " Show marks in 'gutter'
Plug 'airblade/vim-gitgutter'                 " Show git diff in 'gutter'
Plug 'chrisbra/vim-diff-enhanced'             " Add diff options
Plug 'blueyed/vim-diminactive'                " Dims unfocused windows
"Plug 'ntpeters/vim-better-whitespace'         " Highlight trailing whitespace
Plug 'mattn/webapi-vim'                       " Web stuff
Plug 'mattn/gist-vim'                         " Quick post to gist
Plug 'Chiel92/vim-autoformat'                 " Formats code with external programs
"Plug 'ludovicchabant/vim-gutentags'           " Autogen tag files
"Plug 'ajh17/VimCompletesMe'                   " lightweight completion plugin on <Tab>
"Plug 'zxqfl/tabnine-vim'                      " Robust 'machine-learning' completion engine

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " FZF -FuZzyFinder

Plug 'Konfekt/FastFold'    " Better folding performance
Plug 'Konfekt/FoldText'    " More informative folds

Plug 'metakirby5/codi.vim' " Interactive shell in vim

" Plug 'vimwiki/vimwiki'     " Note taking {{{
" let g:vimwiki_list = [{'path': '~/Google Drive/vimwiki/',
      " \ 'syntax': 'markdown', 'ext': '.md'}]
" }}}
Plug 'google/vim-maktaba'
Plug 'google/vim-coverage'
" Also add Glaive, which is used to configure coverage's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'

Plug 'junegunn/goyo.vim'       " Distraction free
Plug 'junegunn/limelight.vim'  " Show only current paragaph

let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

Plug 'jgdavey/tslime.vim'

map <Leader>h :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
" Not currently in use {{{
" Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}} " Go auto-completion?
Plug 'dhruvasagar/vim-table-mode'                     " Formats tables nicely
" Plug 'guns/xterm-color-table.vim'                     " :XtermColorTable to show available colors
" Plug 'benekastah/neomake'                             " Like syntastic, but async in neovim
" Plug 'chrisbra/csv.vim'                               " CSV support, pretty handy.
" Plug 'scrooloose/nerdtree'                            " Explore directories
" Plug 'awk.vim'                                        " Better awk indentation?
" Plug 'unblevable/quick-scope'                         " Highlight targets for f and t.
" Plug 'bling/vim-airline'                              " Pretty status-bar
" Plug 'Shougo/unite.vim'                               " Does a lot! Haven't explored this enough yet
" Plug 'Shougo/unite-outline'                           " Generates a tag-bar style nav window
" Plug 'tsukkee/unite-tag'                              " Tags
" Plug 'Shougo/neomru.vim'                              " most recently used files
" Plug 'Shougo/neocomplete.vim'                         " Autocompletion. Haven't tested much.
" Plug 'Shougu/deoplete.nvim'                           " Auto-complete of the future
" Plug 'zchee/deoplete-jedi'                            " Python auto-completion
" }}}
call plug#end()

" }}}

" Glaive installs {{{
call glaive#Install()
" Optional: Enable coverage's default mappings on the <Leader>C prefix.
Glaive coverage plugin[mappings]
" }}}

" Use the pretty colorscheme
colorscheme fairyfloss
"colorscheme despacio
"colorscheme molokai
"colorscheme dichromatic
"colorscheme 1989
"colorscheme onehalfdark

" statusline config
set statusline=%f\ %m  "file
set statusline+=%=     "right-align
set statusline+=%l/%L  "line num
"set statusline+=\ %#Error#%{ALEGetStatusLine()}%#*  "ALE results

set grepprg=rg\ --vimgrep   " Use ripgrep, it's fast

let g:ragel_default_subtype = 'go'

" Bindings {{{
" Escape is too far away, my pinky would get sore!
" So I just jam jk to exit insert mode.
" inoremap jk <Esc>
" Update: I just rebound it to capslock in my OS
" Custom leader
let g:mapleader = ' '
nnoremap <SPACE> <Nop>
" map <Space> <leader>

" Tslime bindings
vmap <leader>ts <Plug>SendSelectionToTmux
nmap <leader>ts <Plug>NormalModeSendToTmux
nmap <leader>tv <Plug>SetTmuxVars

set relativenumber
set number

" space-F to format the file
nnoremap <leader>f :Autoformat<CR>
vnoremap <leader>f :Autoformat<CR>

" vim-wiki diary
nmap <leader>wj <Plug>VimwikiMakeDiaryNote

" Adjust scroll speed with the mouse (to 1, from 3)
noremap <ScrollWheelUp> <C-Y>
noremap <ScrollWheelDown> <C-E>

nmap <silent> <leader>d <Plug>DashSearch
" }}}

augroup vimrc
  autocmd BufNewFile,BufRead *.rl   set syntax=ragel
  autocmd BufNewFile,BufRead *.nf   set syntax=nextflow
  autocmd FileType crontab setlocal bkc=yes
augroup END


" augroup FormatOnWrite
"   "autocmd BufWrite * :Autoformat
"   autocmd FileType dart
"         \ autocmd! FormatOnWrite BufWrite <buffer> :Autoformat
" augroup END


" vim:foldmethod=marker:foldlevel=1
