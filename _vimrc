set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'

	" vue 高亮
	Plugin 'posva/vim-vue'

	" 显示行末的空格；
	Plugin 'ShowTrailingWhitespace'

	" 在输入()，""等需要配对的符号时，自动帮你补全剩余半个
	Plugin 'AutoClose'

	" html／xml tags关闭
	Plugin 'alvan/vim-closetag'

	" vim自动补全
	Plugin 'Valloric/YouCompleteMe'

	" 在VIM的编辑窗口树状显示文件目录
	Plugin 'scrooloose/nerdtree'
	Plugin 'Xuyuanp/nerdtree-git-plugin'

	" NERD出品的快速给代码加注释插件，选中，`ctrl+h`即可注释多种语言代码
	Plugin 'The-NERD-Commenter'

	" All of your Plugins must be added before the following line
	call vundle#end()            " required
	filetype plugin indent on    " required

" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" nerdtree config
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
cmap nt :NERDTreeToggle<CR>
" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

set modelines=0		" CVE-2007-2438
set showmatch " 高亮显示对应的括号
set number " 显示行号
set relativenumber " 显示行号
set cindent  " C风格的对齐方式
set autoindent " 自动对齐
set confirm " 在处理未保存或只读文件的时候，弹出确认
set expandtab " 输入tab自动转成space 对应的space数量由tabstop=x 决定
set tabstop=2 " 设置tab键宽
syntax on " 自动语法高亮

set cursorline " 行高亮
" hi CursorLine   cterm=NONE ctermbg=white ctermfg=white guibg=white guifg=white

set cursorcolumn " 列高亮

set softtabstop=2

set shiftwidth=2 " 统一缩进为2

set hlsearch

set whichwrap="b,s,h,l,k,j" " 光标到行首和行尾时可以继续移动

set incsearch " 搜索逐字符高亮

set ignorecase " 忽略大小写

set gdefault " 行内替换

set wildmenu " vim 自身命令行模式智能不全

set matchtime=5 " 对应括号高亮的时间

set autowrite " 切换buffer时自动保存当前文件

set completeopt=preview,menu

set clipboard+=unnamed

set mouse=a

set selection=exclusive

set selectmode=mouse,key

"插入模式下移动
" imap <c-j> <down>
" imap <c-k> <up>
" imap <c-l> <right>
" imap <c-h> <left>

"全选
map <c-a> <esc>ggVG$

"不要进入vim的Ex模式，太2333了
nnoremap Q <nop>

"for ycm
let mapleader=";"

" 让配置变更立即生效
" autocmd BufWritePost $MYVIMRC scource $MYVIMRC

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
