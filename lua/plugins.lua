local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.api.nvim_command('set rtp+=~/.fzf')
vim.api.nvim_command('let g:NERDSpaceDelims = 1')
vim.api.nvim_command('let g:go_doc_keywordprg_enabled = 0')

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use({
    'NTBBloodbath/doom-one.nvim',
    config = function()
        require('doom-one').setup({
            cursor_coloring = false,
            terminal_colors = false,
            italic_comments = false,
            enable_treesitter = true,
            transparent_background = false,
            pumblend = {
                enable = true,
                transparency_amount = 20,
            },
            plugins_integrations = {
                neorg = true,
                barbar = true,
                bufferline = false,
                gitgutter = false,
                gitsigns = true,
                telescope = false,
                neogit = true,
                nvim_tree = true,
                dashboard = true,
                startify = true,
                whichkey = true,
                indent_blankline = true,
                vim_illuminate = true,
                lspsaga = false,
            },
        })
    end,
})
  -- use 'kyazdani42/nvim-tree.lua'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      -- 'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  -- use 'hrsh7th/vim-vsnip'
  -- use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons', config function() require("bufferline").setup{} end}
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons', config = function() require("bufferline").setup{} end}

  use 'fatih/vim-go'
  -- Tree-Sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- Markdown
  use 'instant-markdown/vim-instant-markdown'
  use 'dhruvasagar/vim-table-mode'
  -- Rust
  use 'rust-lang/rust.vim'
  -- Status line
  --use 'glepnir/galaxyline.nvim'
  -- This is a requirement, which implements some useful window management items for neovim
  -- use 'nvim-lua/plenary.nvim'
  --use 'nvim-lua/popup.nvim'
  --use {
  --  'nvim-telescope/telescope.nvim',
  --  requires = { {'nvim-lua/plenary.nvim'} }
  --}
  --use 'nvim-telescope/telescope-media-files.nvim'
  --use 'glepnir/lspsaga.nvim'
  --use 'kosayoda/nvim-lightbulb'
  --use 'mfussenegger/nvim-jdtls'
  --use 'mfussenegger/nvim-dap'
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use "rebelot/kanagawa.nvim"
  use 'preservim/nerdcommenter'
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  -- fzf
  use 'junegunn/fzf.vim'
  --use 'junegunn/fzf'
  --use 'norcalli/nvim-colorizer.lua'
  --use {'kevinhwang91/nvim-bqf'}
  -- Learning Lua
  --use 'nanotee/nvim-lua-guide'
  -- Text Navigation
  --use 'unblevable/quick-scope'
  -- Have the file system follow you around
  --use 'airblade/vim-rooter'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

