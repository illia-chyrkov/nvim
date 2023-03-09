local cmp = require'cmp'
local lspkind = require'lspkind'

cmp.setup({
  snippet = {
    expand = function(args)
      require'luasnip'.lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<Esc>'] = cmp.mapping.close(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
  }),
  sources = {
    -- { name = 'nvim_lsp' }, -- For nvim-lsp
    -- { name = 'ultisnips' }, -- For ultisnips user.
    -- { name = 'nvim_lua' }, -- for nvim lua function
    { name = 'path' }, -- for path completion
    -- { name = 'buffer', keyword_length = 4 }, -- for buffer word completion
    -- { name = 'omni' },
    -- { name = 'emoji', insert = true, }, -- emoji completion
    -- { name = 'nvim_lsp_signature_help' },
    -- { name = 'cmp_tabnine' },
    { name = 'luasnip' },
    { name = 'spell' },
  },
  completion = {
    keyword_length = 1,
    completeopt = "menu,noselect"
  },
  view = {
    entries = 'custom',
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol_text",
      menu = ({
        nvim_lsp = "[LSP]",
        ultisnips = "[US]",
        nvim_lua = "[Lua]",
        path = "[Path]",
        buffer = "[Buffer]",
        emoji = "[Emoji]",
          omni = "[Omni]",
      }),
    }),
  },
})