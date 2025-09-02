require 'config.options'
require 'config.keymaps'
require 'config.autocmds'
require 'config.lazy'
require 'config.lsp'
require('luasnip.loaders.from_vscode').lazy_load { paths = './lua/snippets' }
