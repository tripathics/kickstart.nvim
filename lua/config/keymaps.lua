-- [[ Basic Keymaps ]]
-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- cd into curreet file parent dir
vim.keymap.set('n', '<leader>.', function()
  vim.cmd 'cd %:p:h'
  vim.notify(vim.fn.getcwd())
end, { desc = 'Change directory to the directory containing the current file' })

-- buffer keymaps
vim.keymap.set('n', '<leader>bh', '<cmd>hide<CR>', { desc = '[B]uffer: [h]ide current' })

-- Terminal keymaps
vim.keymap.set('n', '<leader>tt', function()
  vim.cmd.tabnew()
  vim.cmd.term()
end, { desc = '[T]erminal: Open in [t]ab' })

vim.keymap.set('n', '<leader>ts', function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd 'J'
  vim.api.nvim_win_set_height(0, 10)
end, { desc = '[T]erminal: Open [s]mall' })
