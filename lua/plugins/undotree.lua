return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<cr>', { desc = '[u]ndotree toggle' })
  end,
  -- keys = { -- load the plugin only when using it's keybinding:
  --   { '<leader>u', '<cmd>UndotreeToggle<cr>' },
  -- },
}
