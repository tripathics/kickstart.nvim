---@type LazySpec
return {
  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    config = function()
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'rose-pine-main'
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
  },
  'EdenEast/nightfox.nvim',
  'ellisonleao/gruvbox.nvim',
}
