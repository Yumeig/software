" ============================== Keyboard Settings ==============================
" === N/O/V ===
map H ^
map L $
nmap s <nop>
nmap S <nop>
" Select All、Save、Refresh
map <C-a> <Esc>ggVG
map <C-s> :w!<CR>
map <C-r> :source $MYVIMRC<CR>
" clipboard to vim
vmap <C-c> "*y<Esc>
" map <C-v> "*p
imap <C-v> <C-r>*
" <C-r>==:redo | u==:undo
map <C-y> :redo<CR>
map <C-z> :undo<CR>
" change line
map <C-Up> ddkP
map <C-Down> ddp

" Tabpage.txt
map tw :tabnew<CR>
map tj :tabnext<CR>
map tk :tabprevious<CR>
map <LEADER>w :close!<CR>
" Split windows
map sj :set nosplitbelow<CR>:split<CR>
map sl :set nosplitright<CR>:vsplit<CR>
" Vertical Horizontah
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K
" Rotate windows
map srv <C-w>b<C-w>H
map srh <C-w>b<C-w>K
" Switch split windows
map <Space>h <C-w>h
map <Space>j <C-w>j
map <Space>k <C-w>k
map <Space>l <C-w>l
" Change split winodws resize
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" Search character
" map = n
" map - N
map <LEADER><CR> :nohlsearch<CR>
" Spell check
map sp :set spell!<CR>

" === Insert mode ===
" imap [ []<Esc>i
" imap { {}<Esc>i
" imap ( ()<Esc>i
" Matching keyword
" imap <Tab> <C-n>
" imap <S-Tab> <C-p>

