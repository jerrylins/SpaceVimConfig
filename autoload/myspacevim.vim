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
endf

