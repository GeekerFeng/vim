"======================================================================
"
" init_leaderf.vim - 
"
" Created by skywind on 2020/03/01
" Last Modified: 2020/03/01 04:43:07
"
"======================================================================


"----------------------------------------------------------------------
" keymap
"----------------------------------------------------------------------
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <c-n> :cclose<cr>:Leaderf --nowrap mru --regexMode<cr>
noremap <m-p> :cclose<cr>:Leaderf! --nowrap function<cr>
noremap <m-P> :cclose<cr>:Leaderf! --nowrap buftag<cr>
noremap <m-n> :cclose<cr>:Leaderf! --nowrap buffer<cr>
noremap <m-m> :cclose<cr>:Leaderf --nowrap tag<cr>
let g:Lf_MruMaxFiles = 2048
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

noremap <m-g> :Leaderf --nowrap tasks<cr>
inoremap <m-g> <esc>:Leaderf --nowrap tasks<cr>

if has('gui_running')
	noremap <c-f12> :Leaderf --nowrap tasks<cr>
	inoremap <c-f12> <esc>:Leaderf --nowrap tasks<cr>
endif


"----------------------------------------------------------------------
" LeaderF
"----------------------------------------------------------------------
let g:Lf_RootMarkers = ['.project', '.root', '.svn']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 1
let g:Lf_HideHelp = 1
let g:Lf_NoChdir = 1

let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
			\ }

let g:Lf_MruFileExclude = ['*.so', '*.exe', '*.py[co]', '*.sw?', '~$*', '*.bak', '*.tmp', '*.dll']
let g:Lf_MruMaxFiles = 2048
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

let g:Lf_NormalMap = {
        \ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
		\ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<cr>']],
		\ "Mru": [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<cr>']],
		\ "Tag": [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<cr>']],
		\ "BufTag": [["<ESC>", ':exec g:Lf_py "bufTagExplManager.quit()"<cr>']],
		\ "Function": [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<cr>']],
		\ }

if (exists('*popup_create') && has('patch-8.1.2000')) || has('nvim-0.4')
	let g:Lf_WindowPosition = 'popup'
endif

let g:Lf_PreviewInPopup = 1
let g:Lf_RecurseSubmodules = 1

"----------------------------------------------------------------------
" filer
"----------------------------------------------------------------------
let g:Lf_FilerShowPromptPath = 1
let g:Lf_FilerInsertMap = { '<Tab>': 'open_current', '<CR>': 'open_current',
	\ '<BS>': 'open_parent_or_backspace', '<up>': 'up', '<down>': 'down'}
let g:Lf_FilerNormalMap = {'i': 'switch_insert_mode', '<esc>': 'quit', 
	\ '~': 'goto_root_marker_dir', 'M': 'mkdir', 'T': 'create_file' }
" let g:Lf_FilerOnlyIconHighlight = 1


"----------------------------------------------------------------------
" keymap
"----------------------------------------------------------------------
nnoremap <leader>ff :<c-u>Leaderf file<cr>
nnoremap <leader>fe :<c-u>Leaderf filer<cr>
nnoremap <leader>fb :<c-u>Leaderf buffer<cr>
nnoremap <leader>fm :<c-u>Leaderf mru<cr>
nnoremap <leader>fg :<c-u>Leaderf gtags<cr>
nnoremap <leader>fr :<c-u>Leaderf rg<cr>
nnoremap <leader>fw :<c-u>Leaderf window<cr>
nnoremap <leader>fn :<c-u>Leaderf function<cr>
nnoremap <leader>ft :<c-u>Leaderf tag<cr>
nnoremap <leader>fu :<c-u>Leaderf bufTag<cr>
nnoremap <leader>fs :<c-u>Leaderf self<cr>
nnoremap <leader>fc :<c-u>Leaderf colorscheme<cr>
nnoremap <leader>fy :<c-u>Leaderf cmdHistory<cr>
" nnoremap <leader>fh :<c-u>Leaderf help<cr>
nnoremap <leader>fj :<c-u>Leaderf jumps<cr>
nnoremap <leader>fp :<c-u>Leaderf snippet<cr>
nnoremap <leader>fq :<c-u>Leaderf quickfix<cr>
nnoremap <leader>fa :<c-u>Leaderf tasks<cr>

inoremap <c-x><c-j> <c-\><c-o>:Leaderf snippet<cr>

nnoremap <leader>fd :exec 'Leaderf filer ' . shellescape(expand('%:p:h'))<cr>

