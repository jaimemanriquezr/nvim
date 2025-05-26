-- indent-blankline
-- https://github.com/lukas-reineke/indent-blankline.nvim
return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    indent = {
      char = '▏',
    },
  },
  keys = {
    { '<leader>b', '<cmd>IBLToggle<cr>', desc = 'Toggles indent-blankline on and off' },
  },
}
