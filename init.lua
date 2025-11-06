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
require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'tpope/vim-obsession', -- Session management
  require 'plugins.themes',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.undotree',

  require 'plugins.vim-fugitive',

  -- LSP Plugins
  require 'plugins.lsp.lazydev', -- configures Lua LSP for your Neovim config, runtime and plugins
  require 'plugins.lsp.main-lsp-config',
  require 'plugins.lsp.autoformat',
  require 'plugins.lsp.autocompletion',

  require 'plugins.todo-comments',
  require 'plugins.mini',
  require 'plugins.nvim-treesitter',

  require 'plugins.neo-tree',
  require 'plugins.gitsigns', -- adds gitsigns recommend keymaps
  require 'plugins.markdown-preview', -- markdown preview in browser
}, {
  git = {
    url_format = 'git@github.com:%s.git',
  },
})

-- vim: ts=2 sts=2 sw=2 et
