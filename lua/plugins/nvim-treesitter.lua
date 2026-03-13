---@type LazySpec
return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  branch = 'main',
  config = function()
    local parsers = {
      'angular',
      'bash',
      'c',
      'cpp',
      'css',
      'diff',
      'git_config',
      'git_rebase',
      'gitcommit',
      'gitattributes',
      'html',
      'javascript',
      'luadoc',
      'markdown',
      'markdown_inline',
      'python',
      'scss',
      'typescript',
      'tsx',
      'vimdoc',
      'query',
    }
    require('nvim-treesitter').install(parsers)

    -- Enable highlighting via FileType autocommand (New in main branch)
    vim.api.nvim_create_autocmd('FileType', {
      group = vim.api.nvim_create_augroup('kickstart-treesitter-highlight', { clear = true }),
      callback = function(args)
        local buf, filetype = args.buf, args.match

        local language = vim.treesitter.language.get_lang(filetype)
        if not language then
          return
        end

        -- check if parser exists and load it
        if not vim.treesitter.language.add(language) then
          return
        end
        -- enables syntax highlighting and other treesitter features
        vim.treesitter.start(buf, language)

        -- enables treesitter based folds
        -- for more info on folds see `:help folds`
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo.foldmethod = 'expr'

        -- enables treesitter based indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
