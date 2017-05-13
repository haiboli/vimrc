
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
"	Plugin 'ShowTrailingWhitespace'

" html标签跳转
Plugin 'vim-scripts/matchit.zip'

" 快速移动"
Plugin 'easymotion/vim-easymotion'

" 模版定义工具 自定义html模版
" Plugin 'SirVer/ultisnips'

" 在输入()，""等需要配对的符号时，自动帮你补全剩余半个
Plugin 'AutoClose'

" html／xml tags关闭
Plugin 'alvan/vim-closetag'

" vim自动补全
Plugin 'Valloric/YouCompleteMe'

" 在VIM的编辑窗口树状显示文件目录
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" 注释插件
Plugin 'scrooloose/nerdcommenter'

" gtag
" Plugin 'gtags.vim'

" taglist 依赖于ctag
" Plugin 'taglist.vim'

" vim angular 定位函数
" Plugin 'vim-angular'

" vimwiki
Plugin 'vimwiki/vimwiki'

" ascll 图
Plugin 'vim-scripts/DrawIt'

" 异步任务
Plugin 'skywind3000/asyncrun.vim'

" 全局搜索 先 brew install ack 安装ack
Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.vue"

" nerdtree config
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map ;2 :NERDTreeToggle<CR>
" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

set modelines=0		" CVE-2007-2438
set showmatch " 高亮显示对应的括号
set matchtime=5 " 对应括号高亮的时间
set number " 显示行号
set relativenumber " 显示行号
set cindent  " C风格的对齐方式
" set autoindent " 新增行跟前一行使用相同的缩进格式
set confirm " 在处理未保存或只读文件的时候，弹出确认
set expandtab " 输入tab自动转成space 对应的space数量由tabstop=x 决定
set tabstop=2 " 设置tab键宽
syntax on " 自动语法高亮
set nocompatible
filetype plugin on

set cursorline " 行高亮
" hi CursorLine   cterm=NONE ctermbg=white ctermfg=white guibg=white guifg=white

set cursorcolumn " 列高亮

set softtabstop=2 " shifiwidth和tabstop混合，设置时，tab以该值为准

set shiftwidth=2 " 统一缩进为2  影响缩进空格数

set hlsearch " 搜索逐字符高亮

set incsearch " 增量搜索，边搜边查询

set ignorecase " 忽略大小写

" 自动识别文件格式
set fileformats=unix,dos,mac

" 自动识别编码 注意：编码之间不要留空格。 cp936对应于gbk编码。 ucs-bom对应于windows下的文件格式
setglobal fileencodings=ucs-bom,utf-8,cp936,

" set gdefault " 行内替换

" set wildmenu " vim 自身命令行模式智能补全

set autowrite " 切换buffer时自动保存当前文件

" 显示首尾空格
" set list
" set listchars=tab:>-,trail:-

" 鼠标设置
set completeopt=preview,menu
set clipboard+=unnamed
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 设置折叠
set foldmethod=marker " indent marker 常用

" 光标到行首和行尾时可以继续移动
set whichwrap="h,l"

" 缓冲区通配符配置
set wildmenu wildmode=full
set wildchar=<Tab> wildcharm=<C-Z>

" 插入模式下移动
" imap <c-j> <down>
" imap <c-k> <up>
" imap <c-l> <right>
" imap <c-h> <left>

" 移动文本
" nmap <c-j> ddp
" nmap <c-k> dd<up><up>p

" vim 和 剪贴板复制问题
" vmap +y :w !pbcopy<CR><CR>
" nmap +p :r !pbpaste<CR><CR>

" 管理端html 一键配置
imap `d <esc>2dhi<div class=""<esc>i
imap `a <esc>2dhi<a href="#"><esc>F"la
imap `i <esc>2dhi<input type="text" data-ng-model="" placeholder=""/><esc>2F=la
imap `b <esc>2dhi<button title="" placeholder=""><esc>f=la

" 全选
" map <c-a> <esc>ggVG$

" 不要进入vim的Ex模式
nnoremap Q <nop>

" for ycm
let mapleader=";"
" 设置分屏尺寸
map <Leader>+ :resize +20<CR>
map + :vertical resize +20<CR>
map <Leader>- :resize +20<CR>
map - :vertical resize +20<CR>

" 让配置变更立即生效
" autocmd BufWritePost $MYVIMRC scource $MYVIMRC

syntax enable
let g:solarized_termcolors=256
let g:solarized_visibility="normal"
set background=dark
colorscheme solarized

" scrooloose/nerdcommenter配置
" 添加您自己的自定义格式
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" 对齐逐行注释分隔符左对齐而不是下面的代码缩进
let g:NERDDefaultAlign = 'left'
" 默认情况下在注释分隔符后添加空格
let g:NERDSpaceDelims = 1
" 使用紧凑语法进行预处理的多行注释
" let g:NERDCompactSexyComs = 1
" 允许注释和反转空行（在注释区域时非常有用）
let g:NERDCommentEmptyLines = 1
" 取消注释时去除末尾空格
let g:NERDTrimTrailingWhitespace = 1

" vimwiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': '/Users/lihaibo/vimwiki',
\ 'path_html': 'Users/lihaibo/vimwiki/html/',
\ 'html_header': 'Users/lihaibo/vimwiki/template/header.tpl',}]

" 解决YCM和ultisnips的冲突
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" easymotion 配置
let g:EasyMotion_do_mapping = 0 " Disable default mapping
map <Leader>/ <Plug>(easymotion-sn)
omap <Leader>/ <Plug>(easymotion-tn)
map <c-n> <Plug>(easymotion-next)
map <c-p> <Plug>(easymotion-prev)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_use_smartsign_us = 1 " US layout With this option set, v will match both v and V, but V will match V only. Default: 0.
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

" 显示末尾空格和删除
match ErrorMsg '\s\+$'

" ack 快捷键
map <Leader>g :Ack -i 
