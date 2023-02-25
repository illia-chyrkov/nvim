local lspconfig = require("lspconfig")

local handlers = {}

local function on_attach(client, bufnr)
  require("lsp_signature").on_attach(client, bufnr)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.tsserver.setup {
  capabilities = require('lsp.tsserver').capabilities,
  handlers = require('lsp.tsserver').handlers,
  on_attach = require('lsp.tsserver').on_attach,
  settings = require('lsp.tsserver').settings,
}

lspconfig.cssls.setup {
  capabilities = capabilities,
  handlers = handlers,
  on_attach = require('lsp.cssls').on_attach,
  settings = require('lsp.cssls').settings,
}

lspconfig.eslint.setup {
  capabilities = capabilities,
  handlers = handlers,
  on_attach = require('lsp.eslint').on_attach,
  settings = require('lsp.eslint').settings,
}

lspconfig.jsonls.setup {
  capabilities = capabilities,
  handlers = handlers,
  on_attach = on_attach,
  settings = require('lsp.jsonls').settings,
}

-- lspconfig.tailwindcss.setup {
--   capabilities = require('lsp.tailwindcss').capabilities,
--   filetypes = require('lsp.tailwindcss').filetypes,
--   handlers = handlers,
--   init_options = require('lsp.tailwindcss').init_options,
--   on_attach = require('lsp.tailwindcss').on_attach,
--   settings = require('lsp.tailwindcss').settings,
-- }

-- lspconfig.vuels.setup {
--   filetypes = require('lsp.vuels').filetypes,
--   handlers = handlers,
--   init_options = require('lsp.vuels').init_options,
--   on_attach = on_attach,
-- }

for _, server in ipairs {
  "emmet_ls", "graphql", "html",
  -- "volar", "prismals"
} do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = handlers,
  }
end
