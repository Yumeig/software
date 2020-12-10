" ============================== Vim-plug ==============================
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/AppData/Local/nvim-data')

" === Theme ===
" Plug 'hardcoreplayers/dashboard-nvim'
" Plug 'hardcoreplayers/spaceline.vim'
" Plug 'ryanoasis/vim-devicons'	" Use the icon plugin for better behavior
" Plug 'theniceboy/eleline.vim'
Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'powerline/powerline'
" Plug 'dracula/vim'
" Plug 'crusoexia/vim-monokai'
Plug 'joshdick/onedark.vim'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" === Fuction ===
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'godlygeek/tabular'
" Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-slash'
Plug 'mg979/vim-visual-multi'
" Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
" Plug 'machakann/vim-sandwich'
Plug 'gcmt/wildfire.vim'
" Plug 'terryma/vim-expand-region'
Plug 'iamcco/markdown-preview.nvim'	" require download markdown-preview-win.exe
" Plug 'luochen1989/rainbow'
Plug 'majutsushi/tagbar'
" Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'Yggdroot/LeaderF"	" require pythen3
" Plug 'bling/vim-bufferline'
" Plug 'bagrat/vim-buffet'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'mattn/emmet-vim'
" Plug 'SirVer/ultisnips'	" require pythen
Plug 'honza/vim-snippets'

" Initialize plugin system
call plug#end()

colorscheme onedark
let g:lightline = {
	\ 'colorscheme': 'onedark',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'readonly', 'filename' ] ]
	\ },
	\ }

" ===
" === Startify
" ===
let g:startify_files_number = 8
let g:startify_lists = [
	\ { 'type': 'files',     'header': ['   MRU']            },
	\ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
	\ ]
let g:startify_bookmarks = [ '~/AppData/Local/nvim/init.vim' ]

" ===
" === NERDTree
" ===
nmap <silent> tt :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree
" let g:NERDTreeHidden=-1

" ===
" === nerdcommenter
" ===
let NERDSpaceDelims = 1
map <C-/> <plug>NERDCommenterToggle

" ===
" === Tabular
" ===
vmap t/ :Tabularize /

" ===
" === easymotion
" ===
" let g:EasyMotion_move_highlight = 0
" let g:EasyMotion_add_search_history = 0
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_do_shade = 0
let g:EasyMotion_smartcase = 1
" map n <Plug>(easymotion-next)
" map N <Plug>(easymotion-prev)
map ? <Plug>(easymotion-sn)
omap ? <Plug>(easymotion-tn)
map f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)
" map /l <Plug>(easymotion-bd-jk)
" nmap /l <Plug>(easymotion-overwin-line)
" map /w <Plug>(easymotion-bd-w)
" nmap /w <Plug>(easymotion-overwin-w)

" ===
" === autopairs
" ===

" ===
" === MarkdownPreview
" ===
" Need to install app, under the plugin dirctory
" add *.txt in the plugin folder mkdp.vim, Because it uses file detection.
autocmd fileType markdown map <M-c> <Plug>MarkdownPreview
let g:mkdp_browser = 'chrome'
let g:mkdp_port = '8888'

" ===
" === rainbow
" ===
" let g:rainbow_active = 0
" source ~/AppData/Local/nvim/usr/rainbow_main.vim

" ===
" === FZF
" ===
" You can use CTRL-J/K or CTRL-N/P to select up and down.
nmap <C-p> :Files<Space>~<CR>
" nmap <C-e> :Buffers<CR>
" let g:fzf_preview_window = ''

" ===
" === Tagber
" ===
" need to add ctags
nmap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '~/AppData/Local/nvim-data/ctags58/ctags.exe'

" ===
" === coc.nvim
" ===
" need Install nodejs >= 10.12
" you can install coc-marketplace, which can search and install extensions in coc.nvim directly.
" let g:coc_global_extensions = [
	" \ 'coc-marketplace',
	" \ 'coc-json',
	" \ 'coc-vimlsp',
	" \ 'coc-emmet',
	" \ 'coc-html',
	" \ 'coc-powershell',
	" \ 'coc-snippets']
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-y>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
map = <Plug>(coc-diagnostic-next-error)
map - <Plug>(coc-diagnostic-prev-error)

" = coc-snippets & vim-snippets
" imap <C-l> <Plug>(coc-snippets-expand)
" vmap <C-e> <Plug>(coc-snippets-select)
" let g:coc_snippet_next = '<c-e>'
" let g:coc_snippet_prev = '<c-n>'
" imap <C-e> <Plug>(coc-snippets-expand-jump)
" let g:snips_author = 'David Chen'
" autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc

" ===
" === emmet
" ===
" let g:user_emmet_mode='i'
" let g:user_emmet_install_global = 0
" autocmd fileType html,css EmmetInstall
" let g:user_emmet_expandabbr_key = '<Tab>'

" ===
" === ultisnips & vim-snippets
" ===
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-e>"
" let g:UltiSnipsJumpForwardTrigger="<c-e>"
" let g:UltiSnipsJumpBackwardTrigger="<c-n>"
" let g:UltiSnipsSnippetDirectories = [ "ultisnips", "~/AppData/Local/nvim-data/vim-snippets/UltiSnips/" ]

" ===
" === vim-visual-multi
" ===
let g:VM_leader                     = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps                       = {}
let g:VM_maps["Undo"]               = 'u'
let g:VM_maps["Redo"]               = '<C-y>'
let g:VM_maps['Find Under']         = '<C-d>'
let g:VM_maps['Find Subword Under'] = '<C-d>'
let g:VM_maps['Remove Region']      = '<C-d>'
let g:VM_maps['Skip Region']        = '<Space>'
let g:VM_maps["Select Cursor Down"] = '<C-j>'
let g:VM_maps["Select Cursor Up"]   = '<C-k>'


