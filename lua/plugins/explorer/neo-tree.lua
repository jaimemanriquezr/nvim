-- neo-tree
-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- Neo-tree is a Neovim plugin to browse the file system

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  config = function()
    vim.diagnostic.config {
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = '',
          [vim.diagnostic.severity.WARN] = '',
          [vim.diagnostic.severity.INFO] = '',
          [vim.diagnostic.severity.HINT] = '󰌵',
        },
      },
    }

    require('neo-tree').setup {
      window = {
        position = 'left',
        width = 20,
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    }
  end,
}
