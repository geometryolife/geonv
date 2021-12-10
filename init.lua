-- Set buffer-scoped local-options
-- <Tab> behavior
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Esc, Save, Quit
keymap('i', 'kj', '<Esc>', opts)
keymap('n', 'S', ':w<CR>', opts)
keymap('n', 'Q', ':q<CR>', opts)

-- Cursor Movement
keymap('', 'H', '5h', opts)
keymap('', 'J', '5j', opts)
keymap('', 'K', '5k', opts)
keymap('', 'L', '5l', opts)

-- Press Space twice to jump to the next '<++>' and edit it
keymap('', '<Leader><Leader>', '<Esc>/<++><CR>:nohlsearch<CR>c4l', opts)

-- Window
keymap('n', '<Leader>h', '<C-W>h', opts)
keymap('n', '<Leader>j', '<C-W>j', opts)
keymap('n', '<Leader>k', '<C-W>k', opts)
keymap('n', '<Leader>l', '<C-W>l', opts)

-- Plugins
require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
end)
