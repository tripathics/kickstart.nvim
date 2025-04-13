-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Use nerd font (font with beautiful icons)
vim.g.have_nerd_font = true

-- [[ Basic setup ]]
require 'config.options' -- setting options
require 'config.keymaps' -- keymaps
require 'config.autocmds' -- autocmds

-- [[ Plugin manager install ]]
require 'config.lazy' -- lazy plugin manager

-- [[ Configure and install plugins ]]
require('lazy').setup {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  require 'plugins.nightfox',
  require 'plugins.tokyonight',
  require 'plugins.which-key',
  require 'plugins.telescope',

  -- LSP Plugins
  require 'plugins.lsp.lazydev', -- configures Lua LSP for your Neovim config, runtime and plugins
  require 'plugins.lsp.main-lsp-config',
  require 'plugins.lsp.autoformat',
  require 'plugins.lsp.autocompletion',

  require 'plugins.todo-comments',
  require 'plugins.mini',
  require 'plugins.nvim-treesitter',

  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',
  require 'plugins.neo-tree',
  require 'plugins.gitsigns', -- adds gitsigns recommend keymaps

  -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
  -- you can continue same window with `<space>sr` which resumes last telescope search
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
