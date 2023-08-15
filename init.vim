set nocompatible
call plug#begin()
if has('nvim')
    Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'mhinz/vim-signify'
else
    Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
    Plug 'Shougo/denite.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/ZoomWin'
Plug 'szw/vim-tags'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'preservim/nerdtree'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'voldikss/vim-floaterm'
Plug 'elzr/vim-json'
Plug 'adrian5/oceanic-next-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'joshdick/onedark.vim'
Plug 'github/copilot.vim'
Plug 'rebelot/kanagawa.nvim'

call plug#end()
au BufNewFile,BufRead *.json setlocal filetype=json
au BufNewFile,BufRead *.js setlocal filetype=javascript
au BufNewFile,BufRead *.jsx setlocal filetype=javascript.jsx
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" Clipboard {{{
set clipboard+=unnamedplus
" }}} Clipboard
"
set tabstop=2       " number of visual spaces per TAB MOBILE
set softtabstop=-1   " number of spaces in tab when editing
set shiftwidth=0    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
set tags=./tags;/
set splitbelow
set splitright
set number relativenumber
let g:vim_json_syntax_conceal = 0
set spelllang=en,cjk
set spellsuggest=best,9
" set spell
set updatetime=100
" Copilot
let g:copilot_filetypes = {
    \ 'gitcommit': v:true,
    \ 'markdown': v:true,
    \ 'yaml': v:true
    \ }
 autocmd BufReadPre *
     \ let f=getfsize(expand("<afile>"))
     \ | if f > 100000 || f == -2
     \ | let b:copilot_enabled = v:false
     \ | endif
let g:python3_host_prog = '/usr/local/bin/python3'
" ============================================================================ "
" ===                                UI                                    === "
" ============================================================================ "
" Set floating window to be slightly transparent
set winbl=0
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors     " enable true colors support
syntax on
" let g:onedark_termcolors = 256
" let g:onedark_terminal_italics = 1
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" set background=light
colorscheme kanagawa
" hi LineNr cterm=bold ctermfg=121 guifg=Green gui=bold guibg=#000b00
" hi LineNrAbove guifg=DarkGreen guibg=#000b00
" hi LineNrBelow guifg=DarkGreen guibg=#000b00
" hi CursorLineNr cterm=bold ctermfg=121 guifg=Green gui=bold guibg=#000b00
" hi Pmenu ctermfg=0 ctermbg=13 gui=bold guibg=DarkGreen
" hi PmenuSel ctermfg=242 ctermbg=0 guibg=#000b00
" hi Normal guifg=#abb2bf
" hi NonText guifg=#61afef
" hi Label guifg=#abb2bf
" hi Conceal guibg=DarkGreen
" hi Visual guibg=#61afef guifg=Black
" hi Statement guifg=#c678dd gui=none
" hi Identifier guifg=#e5c07b
" hi Function guifg=#61afef
" hi PreProc guifg=#c678dd
" hi Constant guifg=#98c379
" hi Boolean guifg=#ffa0a0
" hi Number guifg=#ffa0a0
" hi Type guifg=#e06c75 gui=none
" hi Special guifg=#c678dd
" hi Comment guifg=#0a5408 gui=bold
" hi Todo guibg=DarkGreen guifg=White
" hi Keyword guifg=#61afef
" hi MatchParen guibg=DarkGreen
" hi typescriptBraces guifg=#abb2bf
" hi typescriptAssign guifg=#56b6c2
" hi typescriptBinaryOp guifg=#56b6c2
" hi typescriptArrowFunc guifg=#c678dd
" hi typescriptMember guifg=#abb2bf
" hi typescriptVariable guifg=#c678dd
" hi typescriptOperator guifg=#c678dd
" hi Error           ctermfg=204 guifg=White
" hi String          ctermfg=114 guifg=#98c379
" hi Constant        ctermfg=38 guifg=#56b6c2
" hi Character       ctermfg=114 guifg=#98c379
" hi Number          ctermfg=173 guifg=#d19a66
" hi Boolean         ctermfg=173 guifg=#d19a66
" hi Float           ctermfg=173 guifg=#d19a66
" hi Function        ctermfg=39 guifg=#61afef
" hi Identifier      ctermfg=204 guifg=#e06c75
" hi Conditional     ctermfg=170 guifg=#c678dd
" hi Statement       ctermfg=170 guifg=#c678dd
" hi Repeat          ctermfg=170 guifg=#c678dd
" hi Label           ctermfg=170 guifg=#c678dd
" hi Operator        ctermfg=170 guifg=#c678dd
" hi Keyword         ctermfg=170 guifg=#c678dd
" hi Exception       ctermfg=170 guifg=#c678dd
" hi Include         ctermfg=39 guifg=#61afef
" hi PreProc         ctermfg=180 guifg=#e5c07b
" hi Define          ctermfg=170 guifg=#c678dd
" hi Macro           ctermfg=170 guifg=#c678dd
" hi PreCondit       ctermfg=180 guifg=#e5c07b
" hi StorageClass    ctermfg=180 guifg=#e5c07b
" hi Type            ctermfg=180 guifg=#e5c07b
" hi Structure       ctermfg=180 guifg=#e5c07b
" hi Typedef         ctermfg=180 guifg=#e5c07b
" hi Tag             guifg=#abb2bf
" hi Special         ctermfg=39 guifg=#61afef
" hi SpecialChar     ctermfg=173 guifg=#d19a66
" hi Delimiter       guifg=#abb2bf
" hi SpecialComment  ctermfg=59 guifg=#5c6370
" hi Debug           guifg=#abb2bf
" hi jsonKeyword     ctermfg=204 guifg=#e06c75
" hi deniteSource_grepFile cterm=bold ctermfg=121 guifg=#abb2bf gui=bold
" ============================================================================ "
" ===                           PLUGIN SETUP                               === "
" ============================================================================ "
" Wrap in try/catch to avoid errors on initial install before plugin is available
try
" === Denite setup ==="
" Use ripgrep for searching current directory for files
" By default, ripgrep will respect rules in .gitignore
"   --files: Print each file that would be searched (but don't search)
"   --glob:  Include or exclues files for searching that match the given glob
"            (aka ignore .git files)
"
call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
" Use ripgrep in place of "grep"
call denite#custom#var('grep', 'command', ['rg'])
" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])
" Recommended defaults for ripgrep via Denite docs
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
" Remove date from buffer list
call denite#custom#var('buffer', 'date_format', '')
" Custom options for Denite
"   split                       - Use floating window for Denite
"   start_filter                - Start filtering on default
"   auto_resize                 - Auto resize the Denite window height automatically.
"   source_names                - Use short long names if multiple sources
"   prompt                      - Customize denite prompt
"   highlight_matched_char      - Matched characters highlight
"   highlight_matched_range     - matched range highlight
"   highlight_window_background - Change background group in floating window
"   highlight_filter_background - Change background group in floating filter window
"   winrow                      - Set Denite filter window to top
"   vertical_preview            - Open the preview window vertically
let s:denite_options = {'default' : {
\ 'split': 'horizontal',
\ 'start_filter': 1,
\ 'auto_resize': 1,
\ 'source_names': 'short',
\ 'prompt': '? ',
\ 'highlight_matched_char': 'Special',
\ 'highlight_window_background': 'FloatShadowThrough',
\ 'highlight_filter_background': 'FloatShadowThrough',
\ }}
" Loop through denite options and enable them
function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction
call s:profile(s:denite_options)
catch
  echo 'Denite not installed. It should work after running :PlugInstall'
endtry
" === Coc.nvim === "
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Use <C-@> on vim
" inoremap <silent><expr> <c-@> coc#refresh()
" inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : /"\<Tab>"
" inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : /"\<S-Tab>"
"Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
let g:coc_global_extensions = ['coc-tsserver', 'coc-eslint', 'coc-json', 'coc-css', 'coc-prettier', 'coc-html', 'coc-html-css-support', 'coc-htmlhint', 'coc-cssmodules', 'coc-stylelintplus', 'coc-stylelint']
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" === NERDTree === "
" Show hidden files/directories
let g:NERDTreeShowHidden = 1
" Remove bookmarks and help text from NERDTree
let g:NERDTreeMinimalUI = 1
" Display relative numbers 
let NERDTreeShowLineNumbers=1
" Automatically hide tree when open a file "
let g:NERDTreeQuitOnOpen = 1
autocmd FileType nerdtree setlocal relativenumber
" === echodoc === "
" Enable echodoc on startup
let g:echodoc#enable_at_startup = 1
" === vim-javascript === "
" Enable syntax highlighting for JSDoc
let g:javascript_plugin_jsdoc = 1
" === javascript-libraries-syntax === "
let g:used_javascript_libs = 'underscore,requirejs,chai,jquery'
" === GO-syntax-highlight === "
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_functions_calls = 1
let g:go_highlight_operators = 1
" === lightline + git === "
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'filename': 'LightlineFilename',
      \ }
      \ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'gitbranch_path'), ':h:h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction
" ============================================================================ "
" ===                             KEY MAPPINGS                             === "
" ============================================================================ "
map <C-\> :tab split<CR>:exec("tag \".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" tnoremap <C-\><C-\> <C-\><C-N>
" === Denite shorcuts === "
"   ;         - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
nmap ; :Denite buffer<CR>
nnoremap <leader>t :DeniteProjectDir file/rec<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR>
" Define mappings while in 'filter' mode
"   <C-o>         - Switch to normal mode inside of search results
"   <Esc>         - Exit denite window in any mode
"   <CR>          - Open currently selected file in any mode
"   <C-t>         - Open currently selected file in a new tab
"  <C-v>         - Open currently selected file a vertical split
"   <C-h>         - Open currently selected file in a horizontal split
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o>
  \ <Plug>(denite_filter_update)
  inoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  inoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  inoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  inoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  inoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction
" Define mappings while in denite window
"   <CR>        - Opens currently selected file
"   q or <Esc>  - Quit Denite window
"   d           - Delete currenly selected file
"   p           - Preview currently selected file
"   <C-o> or i  - Switch to insert mode inside of filter prompt
"   <C-t>       - Open currently selected file in a new tab
"   <C-v>       - Open currently selected file a vertical split
"   <C-h>       - Open currently selected file in a horizontal split
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-o>
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction
" === Nerdtree shorcuts === "
"  <leader>n - Toggle NERDTree on/off
"  <leader>f - Opens current file location in NERDTree
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
"   <Space> - PageDown
"   -       - PageUp
noremap <Space> <PageDown>
noremap - <PageUp>
" Quick window switching
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
" === coc.nvim === "
"   <leader>dd    - Jump to definition of current symbol
"   <leader>dr    - Jump to references of current symbol
"   <leader>dj    - Jump to implementation of current symbol
"   <leader>ds    - Fuzzy search current project symbols
nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)
nnoremap <silent> <leader>ds :<C-u>CocList -I -N --top symbols<CR>
" === vim-better-whitespace === "
"   <leader>y - Automatically remove trailing whitespace
nmap <leader>y :StripWhitespace<CR>
" === Search shorcuts === "
"   <leader>h - Find and replace
"   <leader>/ - Claer highlighted search terms while preserving history
map <leader>h :%s///<left><left>
nmap <silent> <leader>/ :nohlsearch<CR>
" === Easy-motion shortcuts ==="
"   <leader>w - Easy-motion highlights first word letters bi-directionally
map <leader>w <Plug>(easymotion-bd-w)
" Allows you to save files you opened without write permissions via sudo
cmap w!! w !sudo tee %
" === vim-jsdoc shortcuts ==="
" Generate jsdoc for function under cursor
nmap <leader>z :JsDoc<CR>
" Delete current visual selection and dump in black hole buffer before pasting
" Used when you want to paste over something without it getting copied to
" Vim's default buffer
vnoremap <leader>p "_dP
" ============================================================================ "
" ===                                 MISC.                                === "
" ============================================================================ "
" Copy Paths/File Name
command! CopyPath let @+ = expand('%')
command! CopyFile let @+ = expand('%:t')
" CocCommand Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" Automaticaly close nvim if NERDTree is only thing left open
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" === Search === "
" ignore case when searching
set ignorecase
" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase
" Automatically re-read file if a change was detected outside of vim
set autoread
" Enable spellcheck for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell
" Set backups
if has('persistent_undo')
  set undofile
  set undolevels=3000
  set undoreload=10000
endif
set backupdir=~/.local/share/nvim/backup " Don't put backups in current dir
set backup
set noswapfile
" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif
" DiffSaved "
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
