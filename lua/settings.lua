-- Set buffer-scoped local-options
-- <Tab> behavior
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2

vim.o.ignorecase = true -- ignore case in search patterns
vim.o.smartcase = true -- smart case
vim.o.pumheight = 10 -- Popup menu height
vim.o.smartindent = true -- make indenting smarter again
vim.o.termguicolors = true -- set term gui colors (most terminals support this)
-- vim.o.showtabline = 2 -- always show tabs
vim.o.expandtab = true -- convert tabs to spaces
vim.o.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.o.tabstop = 2 -- insert 2 spaces for a tab
vim.o.smarttab = true -- Make tabbing smarter
-- vim.o.cursorline = true -- highlight the current line
vim.o.ruler = true -- Show the line and column number of the cursor position, separated by a comma
vim.o.number = true -- set numbered lines
-- vim.o.relativenumber = true -- set relative numbered lines
vim.o.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.o.scrolloff = 4 -- Minimal number of screen lines to keep above and below the cursor
vim.o.sidescrolloff = 8
vim.o.wrap = false -- display lines as one long line
vim.o.list = true
--vim.api.nvim_command('set listchars=tab:\|\ ,trail:▫')
vim.o.colorcolumn = "80"

-- vim.o.laststatus = 2 -- always display the status line
-- vim.o.backup = false -- creates a backup file
-- vim.o.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
-- vim.o.cmdheight = 2 -- more space in the neovim command line for displaying messages
-- vim.o.colorcolumn = "99999" -- fixes indentline for now
-- vim.o.completeopt = { "menuone", "noselect" }
-- vim.o.conceallevel = 0 -- So that `` is visible in markdown files
-- vim.o.encoding = "utf-8" -- The encoding displayed
-- vim.o.fileencoding = "utf-8" -- The encoding written to file
-- vim.o.foldmethod = "manual" -- folding, set to "expr" for treesitter based folding
-- vim.o.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
-- vim.o.guifont = "monospace:h17" -- the font used in graphical neovim applications
-- vim.o.hidden = true -- required to keep multiple buffers and open multiple buffers
-- vim.o.hlsearch = true -- highlight all matches on previous search pattern
-- vim.o.mouse = "a" -- allow the mouse to be used in neovim
-- vim.o.showmode = false -- we don't need to see things like -- INSERT -- anymore
-- vim.o.splitbelow = true -- force all horizontal splits to go below current window
-- vim.o.splitright = true -- force all vertical splits to go to the right of current window
-- vim.o.swapfile = false -- creates a swapfile
vim.o.timeoutlen = 500 -- time to wait for a mapped sequence to complete (in milliseconds)
-- vim.o.title = true -- set the title of window to the value of the titlestring
-- opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
-- vim.o.updatetime = 300 -- faster completion
-- vim.o.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
-- vim.o.numberwidth = 4 -- set number column width to 2 {default 4}
-- vim.o.spell = false -- spell checking
-- vim.o.spelllang = "en"
-- vim.o.spellfile = utils.join_paths(get_config_dir(), "spell", "en.utf-8.add")
-- vim.o.iskeyword = "+=-" -- treat dash separated words as a word text object
-- vim.o.undofile = true -- enable persistent undo
-- vim.o.undodir = utils.join_paths(get_cache_dir(), "undo") -- set an undo directory
-- vim.o.shortmess = "+=c" -- Don't pass messages to |ins-completion-menu|.
-- vim.o.formatoptions = "-=cro" -- Stop newline continuation of comments
-- vim.o.whichwrap = "+=<,>,[,]"
-- vim.o.background = "dark" -- tell vim what the background color looks like
