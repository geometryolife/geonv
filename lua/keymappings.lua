vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '
-- print(vim.inspect(vim.g.mapleader))

vim.api.nvim_set_keymap('', 's', '<NOP>', {noremap = true, silent = true})
-- Disable the default `s` key
-- keymap('n', 's', '<NOP>', opts)
-- vim.api.nvim_del_keymap('','s')

print(os.date())

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Command-line-mode is swapped with repeat-line-search
keymap('', ';', ':', opts)
keymap('', ':', ';', opts)

--Enter digraph
--keymap('i', '<C-m>', '<C-k>', opts)
--keymap('i', '<CR>', '<CR>', opts)
keymap('i', '<M-m>', '<C-k>', opts)

-- Press space twice to jump to the next '<++>' and edit it
keymap('', '<Leader><Leader>', '<Esc>/<++><CR>:nohlsearch<CR>c4l', opts)

-- Open a terminal window
-- keymap('', '<Leader>/', ':set splitbelow<CR>:split<CR>:resize +10<CR>:term<CR>', opts)
keymap('', '<Leader>/', ':set splitbelow<CR>:split<CR>:term<CR>', opts)

-- Open the `init.lua` file anytime
keymap('n', '<Leader>rc', ':e ~/.config/nvim/init.lua<CR>', opts)

-- Esc, Save, Quit
keymap('i', 'kj', '<Esc>', opts)
keymap('n', 'S', ':w<CR>', opts)
keymap('n', 'Q', ':q<CR>', opts)
keymap('n', ',q', ':q!<CR>', opts)
keymap('n', '<Leader>q', '<C-w>j:q<CR>', opts)

-- Cursor Movement
keymap('', 'H', '0', opts)
keymap('', 'J', '5j', opts)
keymap('', 'K', '5k', opts)
keymap('', 'L', '$', opts)
-- keymap('', '<expr> ss', 'col(".") == 1 ? "$" : "0"', opts)
vim.api.nvim_command('noremap <expr> ss col(".") == 1 ? "$" : "0"')
vim.api.nvim_command('vnoremap <expr> ss col(".") == 1 ? "$h" : "0"')

-- Insert-mode and Command-line-mode cursor movement
keymap('!', '<M-a>', '<End>', opts)
keymap('!', '<M-0>', '<Home>', opts)
keymap('!', '<M-h>', '<Left>', opts)
keymap('!', '<M-j>', '<Down>', opts)
keymap('!', '<M-k>', '<Up>', opts)
keymap('!', '<M-l>', '<Right>', opts)
keymap('i', '<C-a>', '<Home>', opts)
keymap('i', '<C-e>', '<End>', opts)
keymap('i', '<C-p>', '<Up>', opts)
keymap('i', '<C-n>', '<Down>', opts)
keymap('i', '<C-b>', '<Left>', opts)
keymap('i', '<C-f>', '<Right>', opts)
keymap('i', '<M-b>', '<Esc>bi', opts)
keymap('i', '<M-f>', '<Esc>ea', opts)

-- Find match
keymap('i', '<C-j>', '<C-n>', opts)
keymap('i', '<C-k>', '<C-p>', opts)
--keymap('<++>', '<++>', '<++>', opts)

-- Window Movement
keymap('n', '<Leader>h', '<C-w>h', opts)
keymap('n', '<Leader>j', '<C-w>j', opts)
keymap('n', '<Leader>k', '<C-w>k', opts)
keymap('n', '<Leader>l', '<C-w>l', opts)

keymap('n', 'sh', ':set nosplitright<CR>:vsplit<CR>', opts)
keymap('n', 'sj', ':set splitbelow<CR>:split<CR>', opts)
keymap('n', 'sk', ':set nosplitbelow<CR>:split<CR>', opts)
keymap('n', 'sl', ':set splitright<CR>:vsplit<CR>', opts)

-- Resize current window
keymap('n', '<M-H>', ':vertical resize -5<CR>', opts)
keymap('n', '<M-J>', ':resize -5<CR>', opts)
keymap('n', '<M-K>', ':resize +5<CR>', opts)
keymap('n', '<M-L>', ':vertical resize +5<CR>', opts)

-- Highlight the search
vim.api.nvim_set_keymap('n', '<Leader><CR>', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- Explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':Lexplore<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- Better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- Switch buffer
vim.api.nvim_set_keymap('n', '<Leader>bn', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>bp', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line or block of text in visual mode
vim.api.nvim_set_keymap('x', '<S-Up>', ':move \'<-2<CR>gv-gv\'', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<S-Down>', ':move \'>+1<CR>gv-gv\'', {noremap = true, silent = true})

-- Set wrap
vim.api.nvim_set_keymap('n', '<Leader>sw', ':set wrap!<CR>', {noremap = true, silent = true})

-- vim-table-mode
vim.api.nvim_set_keymap('n', '<Leader>tm', ':TableModeToggle<CR>', opts)

-- Find and replace
keymap('', '\\s', ':%s//g<Left><Left>', opts);

-- fzf
keymap('n', '<Leader>ff', ':FZF<CR>', opts)
keymap('n', '<Leader>fa', ':Ag<CR>', opts)
keymap('n', '<Leader>bb', ':Buffers<CR>', opts)
keymap('n', '<Leader>fgf', ':GFiles<CR>', opts)
keymap('n', '<Leader>fgs', ':GFiles?<CR>', opts)
keymap('n', '<Leader>sc', ':Color<CR>', opts)
keymap('n', '<Leader>fll', ':Lines<CR>', opts)
keymap('n', '<Leader>fbl', ':BLines<CR>', opts)
keymap('n', '<Leader>fh', ':History<CR>', opts)
keymap('n', '<Leader>fc', ':History:<CR>', opts)
keymap('n', '<Leader>f/', ':History/<CR>', opts)
keymap('n', '<Leader>mp', ':Maps<CR>', opts)
keymap('n', '<Leader>mc', ':Commands<CR>', opts)

function GeoCompileRun()
  print("Hello World!")
end

vim.api.nvim_exec(
[[
noremap <Leader>rt :call CompileTest()<CR>
function! CompileTest()
  execute "w"
  if &filetype == 'rust'
    set splitbelow
    split
    set nosplitbelow
    resize -15
    term cargo test
  endif
endfunction
]],true)

local  result = vim.api.nvim_exec(
[[
noremap <Leader>rr :call CompileRunGcc()<CR>
noremap <M-r> :call CompileRunGcc()<CR>
function! CompileRunGcc()
	execute "w"
	if &filetype == 'c'
		if !isdirectory("build")
			execute "!mkdir build"
		endif
		execute "!gcc -o build/%< %"
		set splitbelow
		split
		set nosplitbelow
		resize -15
		autocmd TermOpen term://* startinsert
		:term time ./build/%<
	elseif &filetype == 'cpp'
		if !isdirectory("build")
			execute "!mkdir build"
		endif
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o build/%<"
		split
		resize -15
		:term time ./build/%<
	elseif &filetype =='lua'
		set splitbelow
		split
		set nosplitbelow
		resize -15
		autocmd TermOpen term://* startinsert
		:term lua %
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		set splitbelow
		split
		set nosplitbelow
		resize -15
		autocmd TermOpen term://* startinsert
		:term bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		" exec "MarkdownPreview"
		execute "InstantMarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		CocCommand flutter.run
	elseif &filetype == 'go'
		set splitbelow
		split
		set nosplitbelow
		:term go run .
	elseif &filetype == 'rust'
		set splitbelow
		split
		set nosplitbelow
		resize -15
		term cargo run
		" execute "!cargo run"
	endif
endfunction]],
true)
