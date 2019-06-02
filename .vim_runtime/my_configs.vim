" �ر�NERDTree��ݼ�
" map <leader>t :NERDTreeToggle<CR>
" ��ʾ�к�
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" �Ƿ���ʾ�����ļ�
let NERDTreeShowHidden=1
" ���ÿ��
let NERDTreeWinSize=31
" ���ն�����vimʱ������NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" ����һ���ļ�����ʾ
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" ��ʾ��ǩ�б�
let NERDTreeShowBookmarks=1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "?",
    \ "Staged"    : "?",
    \ "Untracked" : "?",
    \ "Renamed"   : "?",
    \ "Unmerged"  : "�T",
    \ "Deleted"   : "?",
    \ "Dirty"     : "?",
    \ "Clean"     : "??",
    \ "Unknown"   : "?"
    \ }
" Show the line number
set nu
" Auto open NERDTree when enter vim
" Use vim, not vim ./dir
autocmd vimenter * NERDTree
" NERDTree config
 map <F2> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

let Tlist_Show_One_File=1
let Tlist_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Process_File_Always=1
let Tlist_WinHeight=10
let Tlist_WinWidth=30
let Tlist_Use_Horiz_Window=0
nmap <F3> :Tlist<CR>
colorschem murphy
nmap ; :
nmap <Leader>y :!echo --==<C-R><C-w>==-- ;ici <C-R><C-W><CR>
