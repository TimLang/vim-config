if has("gui_running")
    set guioptions=egmrt
endif

set guifont=Monaco:h12
"set guifont=Menlo:h12
" syntax highlighting
set background=dark
" you can use `dark` or `light` as your background
color mango
"
"colorscheme mustang 
" set guifontwide=WenQuanYi\ Zen\ Hei:h12:cGBK
" 设定文件浏览器目录为当前目录
set bsdir=buffer
" 设置编码
set enc=utf-8

"no swp files
set noswapfile
"能使用鼠标
set mouse=a
"自动缩进
set ai
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set cursorline              "为光标所在行加下划线
set smarttab                "使得退格键也能有4tab的效果
set smartindent             "智能缩进

set autowrite  " Automatically write a file when leaving a modified buffer
set ignorecase              "检索时忽略大小写
" 设置文件编码
set fenc=utf-8
" 设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
" 设置开启语法高亮
syntax on
"显示行号
set number
" 查找结果高亮度显示
set hlsearch
" tab宽度
set tabstop=2
set cindent shiftwidth=2
set autoindent shiftwidth=2
filetype plugin indent on

"paste mode on terminal vim
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

map <F6> :TagbarToggle<CR>
" 把 F7 映射到 启动MRU插件
map <F7> :MRU<CR>
" 把 F8 映射到 启动NERDTree插件
map <F8> :NERDTree<CR>
" 把 F9 映射到 启动CommandT插件
map <F9> :CommandT<CR>
" 把 CTRL-S 映射为 保存,因为这个操作做得太习惯了
nnoremap <C-S> <C-C>:w<CR>
inoremap <C-S> <C-C>:w<CR>
" 把ctrl+x ctrl+o 字典补全简化为ctrl+x
inoremap<C-k> <C-X><C-K>

"javascript代码补全，使用ctrl+x o"
autocmd FileType javascrīpt set omnifunc=javascrīptcomplete#CompleteJS

autocmd FileType javascrīpt set sw=4
autocmd FileType javascrīpt set ts=4
autocmd FileType javascrīpt set sts=4

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
" SnipMate
autocmd FileType python set ft=python.django
autocmd FileType html set ft=htmldjango.html

autocmd User Rails Rnavcommand service         app/services                           -glob=**/*                    -suffix=.rb
" 打开javascript折叠
let b:javascript_fold=1
" " 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1
"The following variables control certain syntax highlighting plugins. You can add them to your .vimrc to enable their features.
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"node.js 字典"
au FileType nodejs set dictionary+=$HOME/.vim/dict/node.dict
"javascript 字典"
au FileType javascript set dictionary+=$HOME/.vim/dict/javascript.dict

nnoremap <silent> <leader>ff :call g:Jsbeautify()<cr>
let mapleader=","


filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'posva/vim-vue'
"解决中文输入法的问题
Plugin 'vim-scripts/fcitx.vim'
Plugin 'pangloss/vim-javascript'
"Plugin "taglist.vim"
Plugin 'jsbeautify'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
"Plugin 'hallettj/jslint.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'wincent/Command-T'
Plugin 'Lokaltog/vim-powerline'
"Plugin 'drmingdrmer/xptemplate'
Plugin 'danro/rename.vim'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdcommenter'
"snipmate dependencies
"Plugin 'tomtom/tlib_vim'
"ack better performance than grep
Plugin 'mileszs/ack.vim'
"html/xml edit
Plugin 'sukima/xmledit'
Plugin 'vim-scripts/xml.vim'
"MRU provides an easy access to a list of recently opend/edited files{
Plugin 'vim-scripts/mru.vim'
"html plugins
Plugin 'mattn/emmet-vim'
"git plugins
Plugin 'motemen/git-vim'
"popular git plugins
Plugin 'tpope/vim-fugitive'

"ruby debugger
Plugin 'astashov/vim-ruby-debugger'

"ctags, how to use: ctags -e --language-force=ruby  --exclude=.git --exclude='*.log' -R * `bundle show --paths`
Plugin 'vim-scripts/ctags.vim'
"tagbar outline plugins
Plugin 'majutsushi/tagbar'

"snipmate requires snippets
"dependencies
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
"easymotion
Plugin 'Lokaltog/vim-easymotion'
"coffeescript
Plugin 'kchmck/vim-coffee-script'

Plugin 'vim-scripts/bufexplorer.zip'

"simple next move: ]b, [f
Plugin 'tpope/vim-unimpaired'

"repeat .
Plugin 'tpope/vim-repeat'
"Minibufferexpoler
"Plugin fholgado/minibufexpl.vim"

"c && c++
Plugin 'vim-scripts/c.vim'
"es6
Plugin 'isRuslan/vim-es6'
"react
Plugin 'mxw/vim-jsx'
Plugin 'justinj/vim-react-snippets'
Plugin 'SirVer/ultisnips'


"elixir plugins
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'TimLang/vim-phoenix'
Plugin 'tpope/vim-projectionist'

"weixin
Plugin 'chemzqm/wxapp.vim'

"typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
"PaperColor Theme
Plugin 'NLKNguyen/papercolor-theme'

"elm
Plugin 'lambdatoast/elm.vim'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'fatih/vim-go'

"Python
"Plugin 'vim-scripts/python.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'jmcomets/vim-pony'

"Plugin 'tweekmonster/django-plus.vim'
"Plugin 'mjbrownie/vim-htmldjango_omnicomplete'
"Plugin 'vim-scripts/django.vim'

call vundle#end()
"YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string


"weixin
nmap <leader>r <Plug>WxappReload

noremap <C-W><C-U> :CtrlPMRU<CR>
nnoremap <C-W>u :CtrlPMRU<CR>

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

"elixir web framework phoenix

"supertabg:SuperTabRetainCompletionType的值缺省为1，意为记住你上次的补全方式，直到使用其它的补全命令改变它；如果把它设成2，意味着记住上次的补全方式，直到按ESC退出插入模式为止；如果设为0，意味着不记录上次的补全方式。
"g:SuperTabDefaultCompletionType的值设置缺省的补全方式，缺省为CTRL-P。
""
let g:SuperTabRetainCompletionType = 2

"git configuration
map <leader>gs :GitStatus<cr>
map <leader>gc :GitCommit<cr>
map <leader>ga :GitAdd<cr>
map <leader>gp :GitPush<cr>
map <leader>gl :GitPull<cr>
filetype plugin indent on

"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
let Powerline_symbols='compatible'
"}

"taglist{
let Tlist_Auto_Open = 0
"}

"MRU{
let MRU_Max_Entries = 50
"}

"emmet-vim
let g:user_emmet_leader_key = '<c-d>'   "设置为ctrl+d 扩展
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall
"
"}

" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

"move to last edited
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"coffeescript settings
"au BufNewFile,BufReadPost *.coffee setl foldmethod=indent
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
"ruby default indent
au BufNewFile,BufReadPost *.rb setl shiftwidth=2 expandtab

"--------------------------------------------------------
"" highline current line & column
" DOES NOT WORK with colorscheme solarized and blackboard
" "--------------------------------------------------------
set cursorline
set cursorcolumn
highlight cursorline term=underline cterm=underline ctermbg=0 gui=NONE guibg=Grey40
if has("autocmd")
    " current line
    au WinLeave * set nocursorline
    au WinEnter * set cursorline
    " current column
    au WinLeave * set nocursorcolumn
    au WinEnter * set cursorcolumn
endif

" 编译并运行
func! Compile_Run_Code()
    exec "w"
    if &filetype == "c"
        exec "!gcc % -o %< -lm && ./%<"
    elseif &filetype == "cpp"
        exec "!g++ % -o %< && ./%<"
    elseif &filetype == "java"
        exec "!javac %"
        exec "!java %<"
    elseif &filetype == 'py'
        exec "!python %"
        exec "!python %<"
    elseif &filetype == "php"
        exec "!php %:t"
    elseif &filetype == "ruby"
        exec "!ruby %:t"
    elseif &filetype == "coffee"
        exec "!coffee %:t"
    elseif &filetype == "javascript"
        exec "!node %:t"
    elseif &filetype == "sh"
        exec "!bash %:t"
    endif
endfunc

nnoremap <silent> <leader>rr :call Compile_Run_Code()<cr>

"C,C++的调试
map <F10> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc

"Django
let g:last_relative_dir = ''
nnoremap \1 :call RelatedFile ("models.py")<cr>
nnoremap \2 :call RelatedFile ("views.py")<cr>
nnoremap \3 :call RelatedFile ("urls.py")<cr>
nnoremap \4 :call RelatedFile ("admin.py")<cr>
nnoremap \5 :call RelatedFile ("tests.py")<cr>
nnoremap \6 :call RelatedFile ( "templates/" )<cr>
nnoremap \7 :call RelatedFile ( "templatetags/" )<cr>
nnoremap \8 :call RelatedFile ( "management/" )<cr>
nnoremap \0 :e settings.py<cr>
nnoremap \9 :e urls.py<cr>

fun! RelatedFile(file)
    #This is to check that the directory looks djangoish
    if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
        exec "edit %:h/" . a:file
        let g:last_relative_dir = expand("%:h") . '/'
        return ''
    endif
    if g:last_relative_dir != ''
        exec "edit " . g:last_relative_dir . a:file
        return ''
    endif
    echo "Cant determine where relative file is : " . a:file
    return ''
endfun

fun SetAppDir()
    if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
        let g:last_relative_dir = expand("%:h") . '/'
        return ''
    endif
endfun
autocmd BufEnter *.py call SetAppDir()
