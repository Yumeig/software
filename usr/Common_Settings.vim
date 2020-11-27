" ============================== Common Settings ==============================
" 不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocompatible
" let $LANG = 'en'  "set message language
" set langmenu=en   "set menu's language of gvim. no spaces beside '='
" set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
" 光标上次位置
augroup resCur
	autocmd!
	autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END
" 退出模式保存
" au Insertleave * :write
" Don't use ALT keys for menus
set winaltkeys=no
" Close GUI Options
if has('nvim')
	try
		call rpcnotify(1, 'Gui', 'Option', 'Tabline', 0)
		call rpcnotify(1, 'Gui', 'Option', 'Popupmenu', 0)
	catch
	endtry
endif
" Popupmenu maximum number
set pumheight=20
" Support vim7.4 #993
set termguicolors

" TextEdit might fail if hidden is not set.
set hidden
" 设置字体
" set guifont=Consolas:h11
" 开启高亮
syntax on
" 文件类型检测
filetype on
" 行号间距
" set signcolumn=yes
" 显示绝对行号
set number
" 显示相对行号
set relativenumber
" 显示光标行
set cursorline
" 自动换行
set wrap
" 显示命令
set showcmd
" 命令行自动完成操作
set wildmenu
" 补全
set completeopt=longest,menu
" 忽略大小写
set ignorecase
" 智能大小写
set smartcase
" 智能缩进
set smartindent
" Tab缩进字符数
set tabstop=4
" 缩进级别字符数
set shiftwidth=4
" Tab缩进为空格
" set expandtab
" Tab转为多少空格
" set softtabstop=4
" 显示隐藏符号
set list
" 滚动可视5行
set scrolloff=5
" 搜索时跳到第一个匹配的结果
set incsearch
" 匹配高亮
set showmatch
" 去掉错误提示声音
set noeb
" 设置历史记录
set history=100

set noundofile
set noswapfile
set nobackup
"set undodir=$TEMP/un~/
"set directory=$TEMP/swp/
"set backupdir=$TEMP/backup/

" https://vim.fandom.com/wiki/Disable_automatic_comment_insertion
autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" au FileType c,cpp setlocal comments-=:// comments+=f://

