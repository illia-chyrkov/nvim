vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = function()
  require("nvim-tree.api").tree.open()
end })

vim.api.nvim_create_autocmd("BufWritePre", {
  -- pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  command = "silent Neoformat",
})