vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '
-- print(vim.inspect(vim.g.mapleader))

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Command-line-mode is swapped with repeat-line-search
keymap('', ';', ':', opts)
keymap('', ':', ';', opts)

-- Press space twice to jump to the next '<++>' and edit it
keymap('', '<Leader><Leader>', '<Esc>/<++><CR>:nohlsearch<CR>c4l', opts)

-- Esc, Save, Quit
keymap('i', 'kj', '<Esc>', opts)
keymap('n', 'S', ':w<CR>', opts)
keymap('n', 'Q', ':q<CR>', opts)

-- Cursor Movement
keymap('', 'H', '0', opts)
keymap('', 'J', '5j', opts)
keymap('', 'K', '5k', opts)
keymap('', 'L', '$', opts)

-- Insert mode cursor movement
keymap('i', '<M-a>', '<End>', opts)
keymap('i', '<M-0>', '<Home>', opts)
keymap('i', '<M-h>', '<Left>', opts)
keymap('i', '<M-j>', '<Down>', opts)
keymap('i', '<M-k>', '<Up>', opts)
keymap('i', '<M-l>', '<Right>', opts)
keymap('i', '<C-a>', '<Home>', opts)
keymap('i', '<C-e>', '<End>', opts)

-- Press Space twice to jump to the next '<++>' and edit it
keymap('', '<Leader><Leader>', '<Esc>/<++><CR>:nohlsearch<CR>c4l', opts)

-- Window Movement
keymap('n', '<Leader>h', '<C-W>h', opts)
keymap('n', '<Leader>j', '<C-W>j', opts)
keymap('n', '<Leader>k', '<C-W>k', opts)
keymap('n', '<Leader>l', '<C-W>l', opts)

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
