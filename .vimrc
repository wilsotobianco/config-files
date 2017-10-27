" Initialize {{{1
    "====================================================
    set nocompatible              " be iMproved, required
    filetype off                  " required
"}}}
"===================================================
" Vundle {{{1
    "====================================================
    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')
    
    
    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'
    
    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    Plugin 'tpope/vim-sensible'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'
    Plugin 'kien/ctrlp.vim'
    Plugin 'scrooloose/syntastic'
    Plugin 'cschlueter/vim-wombat'
    Plugin 'benmills/vimux'
    Plugin 'Townk/vim-autoclose'
    Plugin 'bling/vim-airline'
    Plugin 'godlygeek/tabular'
    Plugin 'plasticboy/vim-markdown'
    
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList          - list configured plugins
    " :PluginInstall(!)    - install (update) plugins
    " :PluginSearch(!) foo - search (or refresh cache first) for foo
    " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
    "
        " Neocomplete {{{2
        "====================================================
            let g:neocomplete#enable_at_startup = 1
            let g:neocomplete#enable_auto_select = 1
            let g:neocomplete#enable_auto_delimiter=1
            let g:neocomplete#enable_smart_case = 1
            let g:neocomplete#sources#syntax#min_keyword_length = 3
            let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
            "Space to select items: 
            inoremap <expr><Tab> pumvisible() ? neocomplete#close_popup() : "\<Tab>"
            " Enable omni completion.
            autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
            autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
            autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
            autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
            autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
            
            " Enable heavy omni completion.
            if !exists('g:neocomplete#sources#omni#input_patterns')
                let g:neocomplete#sources#omni#input_patterns = {}
            endif
            if !exists('g:neocomplete#force_omni_input_patterns')
                let g:neocomplete#force_omni_input_patterns = {}
            endif
            " let g:neocomplete#force_omni_input_patterns.python ='\h\w*\|[^. \t]\.\w*'
            let g:neocomplete#sources#omni#input_patterns.python='\h\w*\|[^. \t]\.\w*'
            let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
            let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
            let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
        "}}}
        "====================================================
        " Syntastic {{{2
            let g:syntastic_enable_signs = 1
            let g:syntastic_auto_loc_list=1
            let g:syntastic_check_on_open = 1
        "====================================================
        "}}}
        "====================================================
    "}}}
    "====================================================
"Look and Feel{{{1
    "====================================================
	"Basics/Misc{{{2
	"===================================================
	    set history=100
        set cursorline
        set rnu
        set number
    "}}}
	"Tabbing and Spaces{{{2
	"===================================================
	    set ts=4
	    set sts=4
	    set shiftwidth=4
	    set expandtab
	    set autoindent
    "}}}
	"Remappings{{{2
	"===================================================
        nmap <Space> za
    "}}}
	
"}}}
" vim: foldmethod=marker foldmarker={{{,}}} ts=4 sw=4 expandtab:
