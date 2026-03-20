---@type LazySpec
return {
  'theprimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    -- set keymaps
    vim.keymap.set('n', '<leader>m', function()
      harpoon:list():add()
      vim.notify 'Added to harpoon list'
    end, { desc = 'Add to harpoon list' })

    vim.keymap.set('n', '<c-p>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list(), {
        border = 'rounded',
        title = ' ⇁ Harpoon ',
        title_pos = 'center',
      })
    end, { desc = 'Open harpoon menu' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<leader>gp', function()
      harpoon:list():prev()
      harpoon:list()
    end, { desc = '[g]oto [p]rev in harpoon ls' })
    vim.keymap.set('n', '<leader>gn', function()
      harpoon:list():next()
    end, { desc = '[g]oto [n]ext buffer in harpoon ls' })

    -- Jump between first 4 buffers within harpoon list
    vim.keymap.set('n', '<leader>g1', function()
      harpoon:list():select(1)
    end, { desc = '[g]oto buffer [1] in harpoon ls' })
    vim.keymap.set('n', '<leader>g2', function()
      harpoon:list():select(2)
    end, { desc = '[g]oto buffer [2] in harpoon ls' })
    vim.keymap.set('n', '<leader>g3', function()
      harpoon:list():select(3)
    end, { desc = '[g]oto buffer [3] in harpoon ls' })
    vim.keymap.set('n', '<leader>g4', function()
      harpoon:list():select(4)
    end, { desc = '[g]oto buffer [4] in harpoon ls' })
  end,
}
