func! myspacevim#before() abort
    "let g:neomake_enabled_c_makers = ['clang']
    nnoremap jk <esc>
    let mapleader=","
    set ignorecase
    set shortmess+=T  "dont display 'xxxxx Press ENTER or type command to continuer'
    set mouse=v


    " Gtags
    set csprg=gtags-cscope
    cscope add ./GTAGS
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>


    nnoremap <unique> <leader>gk <ESC>:n /tmp/klog<cr>:!adb shell dmesg >/tmp/klog <cr>
    nnoremap <unique> <leader>gl <ESC>:n /tmp/A.logcat<cr>:!adb logcat -d >/tmp/A.logcat <cr>

endf



func! myspacevim#after() abort
    iunmap jk
    nmap <silent> <tab> :bn!<CR>
    nmap <silent> <s-tab> :bp!<CR>
    nnoremap <c-j> <c-w>j
    nnoremap <c-k> <c-w>k
    nnoremap <c-h> <c-w>h
    nnoremap <c-l> <c-w>l

    nnoremap <c-d> <c-w>+
    nnoremap <c-g> <c-w>-
    nnoremap <c-p> <c-w><
    nnoremap <c-n> <c-w>>

 
    " set guifont
    "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 6
    "set guifont=DejaVu\ Sans\ Mono\ 12
    "set guifont =DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 11

 
    " ======================================================== 
    " ShowMarks
    " ======================================================== 

    " For marks a-z
    hi clear ShowMarksHLl
    hi ShowMarksHLl term=bold cterm=none ctermbg=none gui=none guibg=LightBlue
    " For marks A-Z
    hi clear ShowMarksHLu
    hi ShowMarksHLu term=bold cterm=bold ctermbg=LightRed ctermfg=DarkRed gui=bold guibg=LightRed guifg=DarkRed
    " For all other marks
    hi clear ShowMarksHLo
    hi ShowMarksHLo term=bold cterm=bold ctermbg=LightYellow ctermfg=DarkYellow gui=bold guibg=LightYellow guifg=DarkYellow
    " For multiple marks on the same line.
    hi clear ShowMarksHLm
    hi ShowMarksHLm term=bold cterm=none ctermbg=LightBlue gui=none guibg=SlateBlue


endf
