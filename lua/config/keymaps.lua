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

vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

-- cd into current file parent dir
vim.keymap.set('n', '<leader>.', function()
  vim.cmd 'cd %:p:h'
  vim.notify(vim.fn.getcwd())
end, { desc = 'Change directory to the directory containing the current file' })

-- scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down and go to center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up and go to center' })

-- buffer keymaps
vim.keymap.set('n', '<leader>bh', '<cmd>hide<CR>', { desc = 'Current [B]uffer: [h]ide current' })
vim.keymap.set('n', '<leader>bo', '<cmd>only<CR>', { desc = 'Current[B]uffer: [o]only current' })

-- Terminal keymaps
vim.keymap.set('n', '<leader>tt', function()
  vim.cmd.tabnew()
  vim.cmd.term()
end, { desc = 'Open a [t]erminal in new [t]ab' })

vim.keymap.set('n', '<leader>ts', function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd 'J'
  vim.api.nvim_win_set_height(0, 15)
end, { desc = 'Open a [t]erminal [s]mall' })

-- [[ Disable some troubling keymaps ]]
vim.keymap.set('n', 'q:', '<nop>')
vim.keymap.set('n', 'q/', '<nop>')
vim.keymap.set('n', 'q?', '<nop>')
