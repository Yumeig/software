autocmd fileType markdown imap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd fileType markdown imap ,n ---<Enter><Enter>
autocmd fileType markdown imap ,b **** <++><Esc>F*hi
autocmd fileType markdown imap ,s ~~~~ <++><Esc>F~hi
autocmd fileType markdown imap ,i ** <++><Esc>F*i
autocmd fileType markdown imap ,d `` <++><Esc>F`i
autocmd fileType markdown imap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd fileType markdown imap ,h ====<Space><++><Esc>F=hi
autocmd fileType markdown imap ,p ![](<++>) <++><Esc>F[a
autocmd fileType markdown imap ,a [](<++>) <++><Esc>F[a
autocmd fileType markdown imap ,1 #<Space><Enter><++><Esc>kA
autocmd fileType markdown imap ,2 ##<Space><Enter><++><Esc>kA
autocmd fileType markdown imap ,3 ###<Space><Enter><++><Esc>kA
autocmd fileType markdown imap ,4 ####<Space><Enter><++><Esc>kA
autocmd fileType markdown imap ,l --------<Enter>
" autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
" search <++> and change write
" :help F
