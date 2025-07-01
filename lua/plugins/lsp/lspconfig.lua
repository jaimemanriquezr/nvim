-- lazydev
-- https://github.com/folke/lazydev.nvim
return {
  {
    -- Main LSP Configuration
    'neovim/nvim-lspconfig',
    lazy = true,
    init = function()
      local lspConfigPath = require('lazy.core.config').options.root .. '/nvim-lspconfig'
      vim.opt.runtimepath:prepend(lspConfigPath)
    end,
  },
}
