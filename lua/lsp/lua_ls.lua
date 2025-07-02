return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc', '.git' },
  telemetry = { enabled = false },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
    },
  },
}
