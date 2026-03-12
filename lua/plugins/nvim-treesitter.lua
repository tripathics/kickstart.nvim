---@type LazySpec
return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    branch = 'main',
    config = function()
      --   local parsers = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'typescript', 'tsx' }
      --   require('nvim-treesitter').install(parsers)

      -- enables treesitter based folds
      vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.wo.foldmethod = 'expr'

      -- enables treesitter based indentation
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    event = 'BufReadPost',
    opts = {
      enable = true,
      multiwindow = false,
      max_lines = 2,
      min_window_height = 10,
      line_numbers = true,
      trim_scope = 'outer',
    },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
  },
}
