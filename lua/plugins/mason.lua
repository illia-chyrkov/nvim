require('mason').setup({
  ensure_installed = {
    "cssls", "eslint", "graphql", "html", "jsonls", "tsserver", "emmet_ls", 
    -- "tailwindcss", "vuels", "volar", "prismals"
  },
  automatic_installation = true,
})