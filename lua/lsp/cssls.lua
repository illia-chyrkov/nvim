local M = {}

M.settings = {
  css = {
    lint = {
      unknownAtRules = 'ignore',
    },
  },
  scss = {
    lint = {
      unknownAtRules = 'ignore',
    },
  },
}

M.on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = true
  client.server_capabilities.documentRangeFormattingProvider = true
  require("lsp_signature").on_attach(client, bufnr)
end

return M
