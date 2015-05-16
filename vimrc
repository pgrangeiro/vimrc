:colors zenburn

execute pathogen#infect()

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

"YouCompleteMe settings
let g:ycm_key_list_select_completion = ['<TAB>', '<C-n>']
let g:ycm_key_list_previous_completion = ['<A-TAB>', '<C-p>']
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

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

nmap P :put<CR>

" Inicializacao
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
