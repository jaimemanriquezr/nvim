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

-- https://www.reddit.com/r/neovim/comments/1ct2w2h/comment/l4bgvn1/
-- Disable highlighting when moving away from search
vim.api.nvim_create_autocmd('CursorMoved', {
	group = vim.api.nvim_create_augroup('auto-hlsearch', { clear = true }),
	callback = function()
		if vim.v.hlsearch == 1 and vim.fn.searchcount().exact_match == 0 then
			vim.schedule(function()
				vim.cmd.nohlsearch()
			end)
		end
	end,
})

-- https://vi.stackexchange.com/questions/37421/how-to-remove-neovim-trailing-white-space/37427#37427
-- Remove trailing whitespace
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
	pattern = { '*' },
	callback = function()
		local save_cursor = vim.fn.getpos '.'
		pcall(function()
			vim.cmd [[%s/\s\+$//e]]
		end)
		vim.fn.setpos('.', save_cursor)
	end,
})
