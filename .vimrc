
filetype off                  " required
" vim-plug 插件管理
call plug#begin('~/.vim/plugged')
" 补全工具
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" git监控
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" 在VIM的编辑窗口树状显示文件目录
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

"  高亮vue  jade
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'
Plug 'wavded/vim-stylus'
Plug 'vim-scripts/nginx.vim'

" 显示行末的空格；
"	Plug 'ShowTrailingWhitespace'

" %增强标签跳转
Plug 'vim-scripts/matchit.zip'

" 快速移动"
Plug 'easymotion/vim-easymotion'


" 模版定义工具 自定义html模版
" Plug 'SirVer/ultisnips'

" 在输入()，""等需要配对的符号时，自动帮你补全剩余半个
Plug 'AutoClose'
" html／xml tags关闭
Plug 'alvan/vim-closetag'
" surround配对外挂, 轻松在word两边添加() {} [] <> '' "
Plug 'tpope/vim-surround'

" vim自动补全
" Plug 'Valloric/YouCompleteMe'

" 注释插件
Plug 'scrooloose/nerdcommenter'

" gtag
" Plug 'gtags.vim'

" taglist 依赖于ctag
" Plug 'taglist.vim'

" vim angular 定位函数
" Plug 'vim-angular'

" vimwiki
Plug 'vimwiki/vimwiki'

" ascll 图
Plug 'vim-scripts/DrawIt'

" 异步任务
Plug 'skywind3000/asyncrun.vim'

" 全局搜索 先 brew install ack 安装ack, ag和ack一样，不过ag更快
" Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'

" 状态栏增强
" "Plug 'vim-airline/vim-airline'
" "Plug 'vim-airline/vim-airline-themes'

" 文件查找
Plug 'kien/ctrlp.vim'

" markdown
Plug 'godlygeek/tabular' " 文本过滤和更优雅的对齐
Plug 'plasticboy/vim-markdown'

" 批量编辑
Plug 'terryma/vim-multiple-cursors'

" 代码格式化
Plug 'Chiel92/vim-autoformat'

" 批处理
Plug 'tpope/vim-repeat'

" vim timing
Plug 'vim-scripts/timing.vim'

" 文本浏览器w3m
" Plug 'yuratomo/w3m.vim'

call plug#end()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"  高亮vue  jade
Plugin 'posva/vim-vue'
Plugin 'digitaltoad/vim-pug'
Plugin 'wavded/vim-stylus'
Plugin 'vim-scripts/nginx.vim'

" 显示行末的空格；
"	Plugin 'ShowTrailingWhitespace'

" %增强标签跳转
Plugin 'vim-scripts/matchit.zip'

" 快速移动"
Plugin 'easymotion/vim-easymotion'

" 模版定义工具 自定义html模版
" Plugin 'SirVer/ultisnips'

" 在输入()，""等需要配对的符号时，自动帮你补全剩余半个
Plugin 'AutoClose'
" html／xml tags关闭
Plugin 'alvan/vim-closetag'
" surround配对外挂, 轻松在word两边添加() {} [] <> '' "
Plugin 'tpope/vim-surround'

" vim自动补全
" Plugin 'Valloric/YouCompleteMe'


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

" 全局搜索 先 brew install ack 安装ack, ag和ack一样，不过ag更快
" Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'

" 状态栏增强
" "Plugin 'vim-airline/vim-airline'
" "Plugin 'vim-airline/vim-airline-themes'

" 文件查找
Plugin 'kien/ctrlp.vim'

" markdown
Plugin 'godlygeek/tabular' " 文本过滤和更优雅的对齐
Plugin 'plasticboy/vim-markdown'

" 批量编辑
Plugin 'terryma/vim-multiple-cursors'

" 代码格式化
Plugin 'Chiel92/vim-autoformat'

" 批处理
Plugin 'tpope/vim-repeat'

" vim timing
Plugin 'vim-scripts/timing.vim'

" 文本浏览器w3m
" Plugin 'yuratomo/w3m.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.vue,*.jade"

let mapleader=';'
" nerdtree config
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
nmap <Leader>2 :NERDTreeToggle<CR>
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
set hidden
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

" 开启自动断行
" set wrap
" 光标到行首和行尾时可以继续移动
" set whichwrap="h,l"

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

" 设置分屏尺寸
map <Leader>+ :resize +20<CR>
map + :vertical resize +20<CR>
map <Leader>- :resize -20<CR>
map - :vertical resize -20<CR>

" 让配置变更立即生效
" autocmd BufWritePost $MYVIMRC scource $MYVIMRC

" tab buffer切换
map gt :tabn<CR>
map gT :tabp<CR>
map s :bp<CR>
map S :bn<CR>


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
map <Leader>n <Plug>(easymotion-next)
map <Leader>p <Plug>(easymotion-prev)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_use_smartsign_us = 1 " US layout With this option set, v will match both v and V, but V will match V only. Default: 0.
" nmap s <Plug>(easymotion-s2)
" nmap t <Plug>(easymotion-t2)

" 显示末尾空格和删除
match ErrorMsg '\s\+$'

" airline"
" "let g:airline_powerline_fonts = 1

" markdown
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

" ag， ag和ack操作一样，ag速度更快
" map <Leader>g :copen<CR><Esc>:AsyncRun Ag -i
map <Leader>g :AsyncRun Ag -i 
map <Leader>5 :call asyncrun#quickfix_toggle(8)<CR>

" ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules|dist)$',
  \ 'file': '\v\.(exe|so|dll|png|mp*|jpeg|jpg)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_working_path_mode = 'ra'

" 便于更新vimrc
nmap ,s :source /Users/lihaibo/.vimrc<CR>
nmap ,v :e /Users/lihaibo/.vimrc<CR>

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-m>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key=";6"

" autoformat
" let g:formatdef_my_html="js-beautify" " npm install js-beautify 配置参考.jsbeautifyrc
" let g:formatters_html=["my_html"]
" au BufWrite *.html :Autoformat " 保存时自动格式化html代码

" w3m
let g:w3m#disable_default_keymap = 1
" git annotate
map ga :AsyncRun git annotate 
map ;$ :%s/\s\+$//<CR>

