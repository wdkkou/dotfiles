---@diagnostic disable: undefined-global
vim.api.nvim_set_keymap('n', '<ESC><ESC>', ':nohlsearch<CR>', { noremap = true, silent = true })
-- bnext を <C-l> に割り当てる
vim.api.nvim_set_keymap('n', '<C-l>', ':bnext<CR>', { noremap = true, silent = true })
-- bprev を <C-h> に割り当てる
vim.api.nvim_set_keymap('n', '<C-h>', ':bprev<CR>', { noremap = true, silent = true })
