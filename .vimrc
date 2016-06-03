map <F5> <Esc>:set nu<CR>   "映射F5显示行号，参考"vim 按键映射"（http://www.pythonclub.org/vim/map-basic）
map <C-F5> <Esc>:set nonu<CR>   "映射Ctrl+F5为不显示行号

" 显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif
syntax enable
" 设置配色方案
"colorscheme torte
"colorscheme murphy
"colorscheme desert 
"colorscheme elflord
"colorscheme ron
"colorscheme darkblue
"colorscheme  delek
"colorscheme  koehler
"colorscheme  peachpuff 
"colorscheme  zellner
"colorscheme  morning
"colorscheme  shine
"colorscheme  pablo
"colorscheme  evening
"colorscheme  slate
colorscheme  solarized
set background=dark
"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif


"/usr/share/vim/vim74/colors/
"blue.vim      default.vim  desert.vim   evening.vim  morning.vim  pablo.vim      README.txt  shine.vim  torte.vim
"darkblue.vim  delek.vim    elflord.vim  koehler.vim  murphy.vim   peachpuff.vim  ron.vim     slate.vim  zellner.vim



"autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
"autocmd InsertEnter * se cul    " 用浅色高亮当前行  

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置当文件被改动时自动载入
set autoread
set nu
set showcmd         " 输入的命令显示出来，看的清楚些

set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
"set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
set foldcolumn=0
set foldmethod=indent 
set foldlevel=3 

set novisualbell    " 不要闪烁(不明白)

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
set foldenable      " 允许折叠  
set foldmethod=manual   " 手动折叠  

"记录历史的行数    
set history=1000

"自动对齐    
set autoindent
set cindent

"智能选择对齐方式    
set smartindent

"tab为4个空格    
set tabstop=4

"当前行之间交错时使用4个空格    
set shiftwidth=4

"设置匹配模式，输入做括号会出现右括号    
set showmatch

"高亮查找  
set hlsearch

"粘贴插入
set paste

"快速匹配    
set incsearch

"禁止生成临时文件
set nobackup
set noswapfile

"搜索忽略大小写
set ignorecase

filetype plugin indent on 
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

""""""""""""SuperTab"""""""""""""""""
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"""""""""""""设置开启ctags"""""""""""""   
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
map <C-F12> :!ctags-exuberant -R .<CR><CR>

"第一个命令里的分号是必不可少的。这个命令让vim首先在当前目录里寻找tags文件，如果没有找到
"tags文件，或者没有找到对应的目标，就到父目录 中查找，一直向上递归。因为tags文件中记录的>路径总是相对于tags文件所在的路径，所以要使用第二个设置项来改变vim的当前目录。 
set tags=tags;
set autochdir

"""""""""""""""""Taglist设置"""""""""""""""""         
map <F4> : Tlist<CR>  ""按下F4就可以呼出了
let Tlist_Auto_Open = 0  "在启动VIM后，自动打开taglist窗口
let Tlist_Ctags_Cmd = '/usr/bin/ctags'  "设定ctags的位置
let Tlist_Use_Right_Window=1 " 1为让窗口显示在右边，0为显示在左边
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表，设置为1时不同时显示>多个文件的tag，只显示当前文件的
let Tlist_File_Fold_Auto_Close=1 "同时显示多个文件中的tag时，taglist只显示当前文件tag，>其他文件的函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动退出vim
"let Tlist_Use_SingleClick= 1    " 缺省情况下，在双击一个tag时，才会跳到该tag定义的位置
"let Tlist_Process_File_Always=0  "是否一直处理tags.1:处理;0:不处理

""""""""""""""""""""""winManage"""""""""""""""""""
"let g:winManagerWindowLayout='FileExplorer|TagList'
"let g:winManagerWindowLayout='TagList'
let g:winManagerWindowLayout='FileExplorer'
nmap wm :WMToggle<cr>

"""""""""""""""""""""VisualMark"""""""""""""""""""
"mm

"""""""""""""""""""""""cscope设置""""""""""""""""""    
"set cscopequickfix=s-,c-,d-,i-,t-,e-  
"if has("cscope")  
"set csprg=/usr/bin/cscope  
"set csto=1  
"set cst  
"set nocsverb  
" add any database in current directory   
"if filereadable("cscope.out")  
"   cs add cscope.out  
"endif  
"set csverb  
"endif  

"nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"""""""""""""""""""""MiniBufExplorer""""""""""""""""""""""""""
let g:miniBufExplMapCTabSwitchBufs = 1
"C-Tab / C-S-Tab

"let g:miniBufExplMapWindowNavVim = 1
"C-w,h,j,k,I

let g:miniBufExplMapWindowNavArrows = 1
"C-Arrows
"""""""""""""""""""""A""""""""""""""""""""""""""
nnoremap <silent> <F12> :A<CR>
"A,AS,AV,AT

"""""""""""""""""""""Grep"""""""""""""""""""""""
nnoremap <silent> <F3> :Grep<CR>
"F3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1,"\#########################################################################") 
		call append(line("."), "\# File Name: ".expand("%")) 
		call append(line(".")+1, "\# Author: Zhang Yong") 
		call append(line(".")+2, "\# mail: cumt_zhangyong@163.com") 
		call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
		call append(line(".")+4, "\#########################################################################") 
		call append(line(".")+5, "\#!/bin/bash") 
		call append(line(".")+6, "") 
	else 
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	> File Name: ".expand("%")) 
		call append(line(".")+1, "\# Author: Zhang Yong") 
		call append(line(".")+2, "\# mail: cumt_zhangyong@163.com") 
		call append(line(".")+3, "	> Created Time: ".strftime("%c")) 
		call append(line(".")+4, " ************************************************************************/") 
		call append(line(".")+5, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include <stdio.h>")
		call append(line(".")+7, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+6, "#include <stdio.h>")
		call append(line(".")+7, "")
	endif
	"	if &filetype == 'java'
	"		call append(line(".")+6,"public class ".expand("%"))
	"		call append(line(".")+7,"")
	"	endif
	"新建文件后，自动定位到文件末尾
	autocmd BufNewFile * normal G
endfunc 

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"设置hidden属性
set hidden
