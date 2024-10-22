let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <silent> <C-S> <Cmd>w
inoremap <silent> <M-k> <Cmd>m .-2==gi
inoremap <silent> <M-j> <Cmd>m .+1==gi
inoremap <silent> <expr> <BS> v:lua.MiniPairs.bs()
cnoremap <expr> <BS> v:lua.MiniPairs.bs()
inoremap <C-W> u
inoremap <C-U> u
tnoremap <silent>  <Cmd>wincmd h
nnoremap <silent>  h
tnoremap <silent> <NL> <Cmd>wincmd j
nnoremap <silent> <NL> j
tnoremap <silent>  <Cmd>wincmd k
nnoremap <silent>  k
tnoremap <silent>  <Cmd>wincmd l
nnoremap <silent>  l
snoremap <silent>  <Cmd>w
nnoremap <silent>  <Cmd>w
xnoremap <silent>  <Cmd>w
nmap  d
tnoremap <silent>  
nnoremap <silent>  <Cmd>noh
tnoremap <silent>  <Cmd>close
nnoremap  s" <Cmd>Telescope registers
nnoremap  sq <Cmd>Telescope quickfix
nnoremap  sR <Cmd>Telescope resume
nnoremap  so <Cmd>Telescope vim_options
nnoremap  sm <Cmd>Telescope marks
nnoremap  sM <Cmd>Telescope man_pages
nnoremap  sl <Cmd>Telescope loclist
nnoremap  sk <Cmd>Telescope keymaps
nnoremap  sj <Cmd>Telescope jumplist
nnoremap  sH <Cmd>Telescope highlights
nnoremap  sh <Cmd>Telescope help_tags
nnoremap  sD <Cmd>Telescope diagnostics
nnoremap  sd <Cmd>Telescope diagnostics bufnr=0
nnoremap  sC <Cmd>Telescope commands
nnoremap  sc <Cmd>Telescope command_history
nnoremap  sb <Cmd>Telescope current_buffer_fuzzy_find
nnoremap  sa <Cmd>Telescope autocommands
nnoremap  gs <Cmd>Telescope git_status
nnoremap  gc <Cmd>Telescope git_commits
nnoremap  fr <Cmd>Telescope oldfiles
nnoremap  fg <Cmd>Telescope git_files
nnoremap  fb <Cmd>Telescope buffers sort_mru=true sort_lastused=true
nnoremap  , <Cmd>Telescope buffers sort_mru=true sort_lastused=true
nnoremap  : <Cmd>Telescope command_history
nmap  E  fE
nmap  e  fe
nnoremap  c, :BaconList
nnoremap  c! :BaconLoad:w:BaconNext
nnoremap <silent>  	[ <Cmd>tabprevious
nnoremap <silent>  	d <Cmd>tabclose
nnoremap <silent>  	] <Cmd>tabnext
nnoremap <silent>  		 <Cmd>tabnew
nnoremap <silent>  	f <Cmd>tabfirst
nnoremap <silent>  	o <Cmd>tabonly
nnoremap <silent>  	l <Cmd>tablast
nnoremap <silent>  wd c
nnoremap <silent>  | v
nnoremap <silent>  - s
nnoremap <silent>  w 
nnoremap <silent>  uI <Cmd>InspectTree
nnoremap <silent>  qq <Cmd>qa
nnoremap <silent>  xq <Cmd>copen
nnoremap <silent>  xl <Cmd>lopen
nnoremap <silent>  fn <Cmd>enew
nnoremap <silent>  l <Cmd>Lazy
nnoremap <silent>  K <Cmd>norm! K
nnoremap <silent>  ur <Cmd>nohlsearch|diffupdate|normal! 
nnoremap <silent>  bD <Cmd>:bd
nnoremap <silent>  ` <Cmd>e #
nnoremap <silent>  bb <Cmd>e #
nnoremap  cs <Cmd>Trouble symbols toggle
nnoremap  xX <Cmd>Trouble diagnostics toggle filter.buf=0
nnoremap  xx <Cmd>Trouble diagnostics toggle
nnoremap  xQ <Cmd>Trouble qflist toggle
nnoremap  xL <Cmd>Trouble loclist toggle
nnoremap  cS <Cmd>Trouble lsp toggle
nnoremap  st <Cmd>TodoTelescope
nnoremap  sT <Cmd>TodoTelescope keywords=TODO,FIX,FIXME
nnoremap  xT <Cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}
nnoremap  xt <Cmd>Trouble todo toggle
nnoremap  cm <Cmd>Mason
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
vnoremap <silent> < <gv
vnoremap <silent> > >gv
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'' : '@'
nnoremap <silent> H <Cmd>bprevious
nnoremap <silent> L <Cmd>bnext
onoremap <silent> <expr> N 'nN'[v:searchforward]
xnoremap <silent> <expr> N 'nN'[v:searchforward]
nnoremap <silent> <expr> N 'nN'[v:searchforward].'zv'
xnoremap <silent> <expr> Q mode() ==# 'V' ? ':normal! @=reg_recorded()' : 'Q'
nnoremap Y y$
nnoremap <silent> [b <Cmd>bprevious
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap <silent> ]b <Cmd>bnext
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap <silent> gcO OVcx<Cmd>normal gccfxa<BS>
nnoremap <silent> gco oVcx<Cmd>normal gccfxa<BS>
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
xnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
xnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
onoremap <silent> <expr> n 'Nn'[v:searchforward]
xnoremap <silent> <expr> n 'Nn'[v:searchforward]
nnoremap <silent> <expr> n 'Nn'[v:searchforward].'zv'
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
tnoremap <silent> <C-_> <Cmd>close
tnoremap <silent> <C-/> <Cmd>close
tnoremap <silent> <C-L> <Cmd>wincmd l
tnoremap <silent> <C-K> <Cmd>wincmd k
tnoremap <silent> <C-J> <Cmd>wincmd j
tnoremap <silent> <C-H> <Cmd>wincmd h
snoremap <silent> <C-S> <Cmd>w
nnoremap <silent> <C-S> <Cmd>w
xnoremap <silent> <C-S> <Cmd>w
vnoremap <silent> <M-k> :m '<-2gv=gv
vnoremap <silent> <M-j> :m '>+1gv=gv
nnoremap <silent> <M-k> <Cmd>m .-2==
nnoremap <silent> <M-j> <Cmd>m .+1==
nnoremap <silent> <C-Right> <Cmd>vertical resize +2
nnoremap <silent> <C-Left> <Cmd>vertical resize -2
nnoremap <silent> <C-Down> <Cmd>resize -2
nnoremap <silent> <C-Up> <Cmd>resize +2
nnoremap <silent> <C-K> k
nnoremap <silent> <C-J> j
nnoremap <silent> <C-H> h
xnoremap <silent> <expr> <Up> v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> <Up> v:count == 0 ? 'gk' : 'k'
xnoremap <silent> <expr> <Down> v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> <Down> v:count == 0 ? 'gj' : 'j'
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nmap <C-W><C-D> d
nnoremap <silent> <C-L> l
inoremap <silent>  <Cmd>w
inoremap  u
inoremap  u
inoremap <silent>  <Cmd>noh
inoremap <expr> " v:lua.MiniPairs.closeopen('""', "[^\\].")
cnoremap <expr> " v:lua.MiniPairs.closeopen('""', "[^\\].")
inoremap <expr> ' v:lua.MiniPairs.closeopen("''", "[^%a\\].")
cnoremap <expr> ' v:lua.MiniPairs.closeopen("''", "[^%a\\].")
inoremap <expr> ( v:lua.MiniPairs.open("()", "[^\\].")
cnoremap <expr> ( v:lua.MiniPairs.open("()", "[^\\].")
inoremap <expr> ) v:lua.MiniPairs.close("()", "[^\\].")
cnoremap <expr> ) v:lua.MiniPairs.close("()", "[^\\].")
inoremap <silent> , ,u
inoremap <silent> . .u
inoremap <silent> ; ;u
inoremap <expr> [ v:lua.MiniPairs.open("[]", "[^\\].")
cnoremap <expr> [ v:lua.MiniPairs.open("[]", "[^\\].")
inoremap <expr> ] v:lua.MiniPairs.close("[]", "[^\\].")
cnoremap <expr> ] v:lua.MiniPairs.close("[]", "[^\\].")
inoremap <expr> ` v:lua.MiniPairs.closeopen("``", "[^\\].")
cnoremap <expr> ` v:lua.MiniPairs.closeopen("``", "[^\\].")
inoremap <expr> { v:lua.MiniPairs.open("{}", "[^\\].")
cnoremap <expr> { v:lua.MiniPairs.open("{}", "[^\\].")
inoremap <expr> } v:lua.MiniPairs.close("{}", "[^\\].")
cnoremap <expr> } v:lua.MiniPairs.close("{}", "[^\\].")
let &cpo=s:cpo_save
unlet s:cpo_save
set autowrite
set clipboard=unnamedplus
set cmdheight=0
set completeopt=menu,menuone,noselect
set confirm
set expandtab
set fillchars=diff:╱,eob:\ ,fold:\ ,foldclose:,foldopen:,foldsep:\ 
set formatexpr=v:lua.require'lazyvim.util'.format.formatexpr()
set formatoptions=jcroqlnt
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep
set helplang=en
set ignorecase
set jumpoptions=view
set laststatus=3
set noloadplugins
set mouse=a
set packpath=/usr/share/nvim/runtime
set pumblend=10
set pumheight=10
set runtimepath=~/.config/nvim,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/dressing.nvim,~/.local/share/nvim/lazy/crates.nvim,~/.local/share/nvim/lazy/friendly-snippets,~/.local/share/nvim/lazy/nvim-snippets,~/.local/share/nvim/lazy/cmp-path,~/.local/share/nvim/lazy/cmp-buffer,~/.local/share/nvim/lazy/nvim-cmp,~/.local/share/nvim/lazy/telescope-fzf-native.nvim,~/.local/share/nvim/lazy/telescope.nvim,~/.local/share/nvim/lazy/mini.icons,~/.local/share/nvim/lazy/nui.nvim,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/neo-tree.nvim,~/.local/share/nvim/lazy/conform.nvim,~/.local/share/nvim/lazy/mini.pairs,~/.local/share/nvim/lazy/flash.nvim,~/.local/share/nvim/lazy/mini.ai,~/.local/share/nvim/lazy/nvim-treesitter-textobjects,~/.local/share/nvim/lazy/ts-comments.nvim,~/.local/share/nvim/lazy/trouble.nvim,~/.local/share/nvim/lazy/lualine.nvim,~/.local/share/nvim/lazy/gitsigns.nvim,~/.local/share/nvim/lazy/todo-comments.nvim,~/.local/share/nvim/lazy/which-key.nvim,~/.local/share/nvim/lazy/indent-blankline.nvim,~/.local/share/nvim/lazy/nvim-lint,~/.local/share/nvim/lazy/cmp-nvim-lsp,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/nvim-ts-autotag,~/.local/share/nvim/lazy/persistence.nvim,~/.local/share/nvim/lazy/schemastore.nvim,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/moonbow.nvim,~/.local/share/nvim/lazy/Lazyvim,~/.local/share/nvim/lazy/vim-fugitive,~/.local/share/nvim/lazy/dashboard-nvim,~/.local/share/nvim/lazy/nvim-bacon,~/.local/share/nvim/lazy/tokyonight.nvim,~/.local/share/nvim/lazy/LazyVim,/usr/share/nvim/runtime,/usr/share/nvim/runtime/pack/dist/opt/matchit,/usr/lib64/nvim,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/cmp-path/after,~/.local/share/nvim/lazy/cmp-buffer/after,~/.local/share/nvim/lazy/indent-blankline.nvim/after,~/.local/share/nvim/lazy/cmp-nvim-lsp/after
set scrolloff=4
set sessionoptions=buffers,curdir,tabpages,winsize,help,globals,skiprtp,folds
set shiftround
set shiftwidth=4
set shortmess=tcTIWlCoFO
set noshowmode
set sidescrolloff=8
set smartcase
set smartindent
set spelloptions=noplainbuffer
set splitbelow
set splitkeep=screen
set splitright
set statusline=\ 
set tabstop=4
set termguicolors
set timeoutlen=300
set undofile
set undolevels=10000
set updatetime=200
set virtualedit=block
set wildmode=longest:full,full
set window=53
set winminwidth=5
" vim: set ft=vim :
