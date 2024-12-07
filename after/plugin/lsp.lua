require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tsserver", "pyright" },
  automatic_installation = true,
})

local lspconfig = require("lspconfig")
require("mason-lspconfig").setup_handlers({
  function(server_name)
    lspconfig[server_name].setup {}
  end
})

