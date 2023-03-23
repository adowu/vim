set nocompatible              " be iMproved, required
filetype off                  " required
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:godef_split=2
" 打开和关闭NERDTree快捷键
map <F10> :NERDTreeToggle<CR>
" 设置宽度
" let NERDTreeWinSize=25
nmap <F9> :TagbarToggle<CR>
let g:tagbar_width=25
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
Plugin 'fatih/vim-go'
 
Plugin 'majutsushi/tagbar'
 
Plugin 'scrooloose/nerdtree'
 
Plugin 'Valloric/YouCompleteMe'
"配色方案
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
"代码折叠插件
Plugin 'tmhedberg/SimpylFold'
"自动缩进
Plugin 'vim-scripts/indentpython.vim'
"在vim的normal模式下搜索文件
Plugin 'kien/ctrlp.vim'
"Ag 命令
Plugin 'rking/ag.vim'
" 状态栏美化工具
Plugin 'vim-airline/vim-airline' "https://github.com/vim-airlin    e/vim-airline
Plugin 'vim-airline/vim-airline-themes' "  https://github.com/v    im-airline/vim-airline-themes https://github.com/vim-airline/vi    m-airline/wiki/Screenshots
"python 美化工具
Plugin 'dense-analysis/ale'

Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

"vim markdown tools
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'

"Powerline状态栏
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"设置显示powerline
set laststatus=2
"设置分割窗口
set splitbelow
set splitright
"设置窗口移动快捷键
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"设置按F2启动NerdTree
map <F2> :NERDTreeToggle<CR>
"youcompleteme  默认tab  s-tab 和自动补全冲突
""let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
"关闭加载.ycm_extra_conf.py提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
"force recomile with syntastic
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
"nnoremap <leader>lo :lopen<CR> "open locationlist
"nnoremap <leader>lc :lclose<CR>    "close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"let g:ycm_autoclose_preview_window_after_completion=1
 
"隐藏目录树种的.pyc文件
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"

" 打开快捷检索方式
let g:ctrlp_map = '<c-p>'

let g:airline_powerline_fonts = 1
let g:airline_theme='deus'
let g:Powerline_symbols='fancy'
let Powerline_symbols='fancy'

" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

"python 语法高亮
let python_highlight_all=1
syntax on


"设置主题颜色，以及设置快捷键F5
set t_Co=256
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme molokai
endif
call togglebg#map("<F3>")
 
if &diff
    colors blue
endif
"开启代码折叠
set foldmethod=indent
set foldlevel=99
"设置快捷键为空格
nnoremap <space> za
"显示折叠代码的文档字符串
let g:SimpylFold_docstring_preview=1
"python代码缩进PEP8风格
au BufNewFile,BufRead *.py,*.pyw set tabstop=4
au BufNewFile,BufRead *.py,*.pyw set softtabstop=4
au BufNewFile,BufRead *.py,*.pyw set shiftwidth=4
au BufNewFile,BufRead *.py,*.pyw set expandtab
au BufNewFile,BufRead *.py,*.pyw set textwidth=79
au BufNewFile,BufRead *.py,*.pyw set autoindent
au BufNewFile,BufRead *.py,*.pyw set fileformat=unix
 
"对其他文件类型设置au命令
au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set softtabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set shiftwidth=2
"高亮显示行伟不必要的空白字符
highlight Whitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match Whitespace /\s\+$\ \+/
"设置行号显示
set nu
"设置utf-8编码
set encoding=utf-8
 
let python_highlight_all=1
syntax on
filetype plugin indent on
set backspace=indent,eol,start
set cursorline
set history=1000
set fileencodings=utf-8,gb18030,utf-16,big5
set hlsearch
set clipboard=unnamed
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
