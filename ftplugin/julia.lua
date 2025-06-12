vim.cmd 'set colorcolumn=92'
vim.keymap.set('n', '<C-[>', '<Plug>SlimeLineSend', { desc = 'Run Julia line' })
vim.keymap.set('x', '<C-[>', '<Plug>SlimeRegionSend', { desc = 'Run Julia region' })
