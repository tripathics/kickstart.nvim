-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

-- [[ Basic setup ]]
require 'config.options' -- setting options
require 'config.keymaps' -- keymaps
require 'config.autocmds' -- autocmds

-- [[ Plugin manager install ]]
require 'config.lazy' -- lazy plugin manager

-- [[ Configure and install plugins ]]
require('lazy').setup({
  'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically
  'tpope/vim-obsession', -- session management
  require 'plugins.themes',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.undotree',

  require 'plugins.gitsigns', -- adds gitsigns recommend keymaps
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

  -- require 'plugins.markdown-preview', -- markdown preview in browser
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = 'cd app && npm install',
  },

  require 'plugins.copilot',
}, {
  git = {
    url_format = 'git@github.com:%s.git',
  },
})

-- vim: ts=2 sts=2 sw=2 et
