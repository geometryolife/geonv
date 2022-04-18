vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
-- Disable the default `s` key
vim.api.nvim_set_keymap('', 's', '<NOP>', {noremap = true, silent = true})

vim.g.mapleader = ' '
-- print(vim.inspect(vim.g.mapleader))
-- print(os.date())

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Command-line-mode is swapped with repeat-line-search
keymap('', ';', ':', opts)
keymap('', ':', ';', opts)

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

-- Insert-mode cursor movement
keymap('i', '<M-0>', '<Home>', opts)
keymap('i', '<M-a>', '<End>', opts)
keymap('i', '<M-h>', '<Left>', opts)
keymap('i', '<M-j>', '<Down>', opts)
keymap('i', '<M-k>', '<Up>', opts)
keymap('i', '<M-l>', '<Right>', opts)
keymap('i', '<C-a>', '<Home>', opts)
keymap('i', '<C-e>', '<End>', opts)
keymap('i', '<C-p>', '<Up>', opts)
keymap('i', '<C-n>', '<Down>', opts)
keymap('i', '<C-b>', '<Left>', opts)
keymap('i', '<C-f>', '<Right>', opts)
keymap('i', '<M-b>', '<Esc>bi', opts)
keymap('i', '<M-f>', '<Esc>ea', opts)

-- Press space twice to jump to the next '<++>' and edit it
keymap('', '<Leader><Leader>', '<Esc>/<++><CR>:nohlsearch<CR>c4l', opts)

-- Open a terminal window
keymap('', '<Leader>/', ':set splitbelow<CR>:split<CR>:term<CR>', opts)

-- Open the `init.lua` file anytime
keymap('n', '<Leader>rc', ':e ~/.config/nvim/init.lua<CR>', opts)

--Enter digraph
keymap('i', '<M-m>', '<C-k>', opts)

-- Window Movement
keymap('n', '<Leader>h', '<C-w>h', opts)
keymap('n', '<Leader>j', '<C-w>j', opts)
keymap('n', '<Leader>k', '<C-w>k', opts)
keymap('n', '<Leader>l', '<C-w>l', opts)

-- Split window
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

-- Find and replace
keymap('', '\\s', ':%s//g<Left><Left>', opts);

vim.api.nvim_command('noremap <expr> ss col(".") == 1 ? "$" : "0"')
vim.api.nvim_command('vnoremap <expr> ss col(".") == 1 ? "$h" : "0"')

--keymap('<++>', '<++>', '<++>', opts)
