-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`
vim.api.nvim_command 'augroup neovim_terminal'
vim.api.nvim_command 'autocmd!'
vim.api.nvim_command 'autocmd TermOpen * startinsert'
vim.api.nvim_command 'autocmd TermOpen * :set nonumber norelativenumber'
vim.api.nvim_command 'autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>'
vim.api.nvim_command 'augroup END'

-- Highlight when yanking (copying) text
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Open Neotree (and a Terminal, maybe) when starting Neovim
-- vim.api.nvim_command 'augroup neovim_start'
-- vim.api.nvim_command 'autocmd!'
-- -- vim.api.nvim_command 'autocmd VimEnter * execute "Neotree"'
-- -- vim.api.nvim_command 'autocmd VimEnter * wincmd l'
-- --vim.api.nvim_command 'autocmd VimEnter * execute "12split | terminal"'
-- --vim.api.nvim_command 'autocmd VimEnter * wincmd k'
-- vim.api.nvim_command 'augroup END'
