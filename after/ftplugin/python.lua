vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.colorcolumn = '72'
vim.o.expandtab = true

vim.keymap.set('n', '<F9>', ':w | !clear; python3 %<CR>', { desc = 'Run Python script' })
