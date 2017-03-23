:colors zenburn

execute pathogen#infect()
call pathogen#helptags()

set autoread            "altera o arquivo no vim caso seja alterado por uma fonte externa
set autoindent          "identação automática
set softtabstop=4       "makes backspacing over spaced out tabs work real nice
set expandtab           "expand tabs to spaces
set shiftwidth=4
set tabstop=4
set termencoding=utf-8
set nobackup
set fileencodings=ucs-bom,utf-8,default,latin1
set smartindent
set showmatch
set showcmd
set showmode
set number
set hlsearch
set paste
set cursorline
set virtualedit=all
set noswapfile
set laststatus=2
set foldmethod=indent
set ruler
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2

set statusline+=%f
set statusline+=%=        " Switch to the right side
set statusline+=%l:
set statusline+=%c

"gvim settings
if has("gui_running")
    set guioptions-=T " disable toolbar
    set guioptions-=m " disable menu
    set guioptions-=M " disable system menu
    set guioptions-=r " disable scrollbar (right)
    set guioptions-=R " disable scrollbar if there's split (right)
    set guioptions-=l " disable scrollbar (left)
    set guioptions-=L " disable scrollbar if there's split (left)
    set guioptions-=b " disable scrollbar (bottom)
    set guioptions-=h " disable scrollbar (top)
    set guioptions+=c " enable console choices
    map <silent> <S-Insert> "+p
    imap <silent> <S-Insert> <Esc>"+pa
endif


" Removing spaces
if v:version >= 700
    set list listchars=tab:>\ ,trail:.,extends:>,nbsp:_
else
    set list listchars=tab:>\ ,trail:.,extends:>
endif

"automatically remove all trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

" NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
let NERDChristmasTree = 1
command NTT NERDTreeToggle
command Ntt NERDTreeToggle

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 3

"CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.swp,*.swo,*env/*,*.pyc,*.pyo
let g:ctrlp_custom_ignore = {
 \ 'dir':  '\.git$\|\.sass-cache$|\.hg$\|\.svn$\|\.yardoc\|public$|log\|tmp$',
 \ 'file': '\.so$\|\env$|\.DS_Store$'
 \}

"JSHint
set runtimepath+=~/.vim/bundle/jshint2.vim/

" Jedi
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#show_call_signatures = "1"
"let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"


"YouCompleteMe settings
let g:ycm_key_list_select_completion = ['<TAB>', '<C-n>']
let g:ycm_key_list_previous_completion = ['<A-TAB>', '<C-p>']
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1


" Inicializacao
nmap P :put<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
