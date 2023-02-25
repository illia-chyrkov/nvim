vim.o.timeout = true
vim.o.timeoutlen = 300

local wk = require("which-key")

wk.setup {
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  layout = {
    height = { min = 2, max = 25 }, -- min and max height of the columns
    width = { min = 30, max = 50 }, -- min and max width of the columns
    spacing = 4,
    align = "left",
  },
  ignore_missing = false,
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "},
  show_help = true,
  triggers = {"<leader>"}
}

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}

local mappings = {
  -- ignore
  ['1'] = 'which_key_ignore',
  ['2'] = 'which_key_ignore',
  ['3'] = 'which_key_ignore',
  ['4'] = 'which_key_ignore',
  ['5'] = 'which_key_ignore',
  ['6'] = 'which_key_ignore',
  ['7'] = 'which_key_ignore',
  ['8'] = 'which_key_ignore',
  ['9'] = 'which_key_ignore',

  -- single
  ['='] = { '<cmd>vertical resize +5<CR>',               'resize +5' },
  ['-'] = { '<cmd>vertical resize -5<CR>',               'resize +5' },
  ['v'] = { '<C-W>v',                                    'split right' },
  ['V'] = { '<C-W>s',                                    'split below' },
  ['`'] = { '<cmd>Trouble<CR>',                          'Trouble' },
  ['p'] = { '<cmd>PackerSync<CR>',                       'PackerSync' },
  ['t'] = { '<cmd>TodoQuickFix<CR>',                     'ToDo list' },
  -- ['m'] = { '<cmd>Mason<CR>',                            'LSP config' },
  -- ['q'] = { 'quicklist' },

  -- b = {
  --   name = 'Buffer',
  --   b = { '<cmd>BufferMovePrevious<CR>',                 'Move back' },
  --   c = { '<cmd>BufferCloseAllButCurrent<CR>',           'Close but current' },
  --   d = { '<cmd>BufferOrderByDirectory<CR>',             'Order by directory' },
  --   f = { '<cmd>bfirst<CR>',                             'First buffer' },
  --   l = { '<cmd>BufferCloseBuffersLeft<CR>',             'Close Left' },
  --   r = { '<cmd>BufferCloseBuffersRight<CR>',            'Close Right' },
  --   n = { '<cmd>BufferMoveNext<CR>',                     'Move next' },
  --   p = { '<cmd>BufferPick<CR>',                         'Pick Buffer' },
  -- },

  -- c = {
  --   name = 'LSP',
  --   a = { 'code action' },
  --   d = { '<cmd>TroubleToggle<CR>',                           'local diagnostics' },
  --   D = { '<cmd>Telescope diagnostics wrap_results=true<CR>', 'workspace diagnostics' },
  --   f = { 'format' },
  --   l = { 'line diagnostics' },
  --   r = { 'rename' },
  --   R = { 'structural replace' },
  --   t = { '<cmd>LspToggleAutoFormat<CR>',                     'toggle format on save' },
  -- },

  -- d = {
  --   name = 'Debug',
  --   a = { 'attach' },
  --   b = { 'breakpoint' },
  --   c = { 'continue' },
  --   d = { 'continue' },
  --   h = { 'visual hover' },
  --   i = { 'step into' },
  --   o = { 'step over' },
  --   O = { 'step out' },
  --   t = { 'terminate' },
  --   v = { 'log variable' },
  --   V = { 'log variable above' },
  -- },

  g = {
    name = 'Git',
    a = { '<cmd>!git add %:p<CR>',                                              'add current' },
    A = { '<cmd>!git add .<CR>',                                                'add all' },
    -- b = { '<cmd>lua require("internal.blame").open()<CR>',                      'blame' },
    -- B = { '<cmd>Telescope git_branches<CR>',                                    'branches' },
    -- c = {
    --   name = 'Conflict',
    --   b = {'<cmd>GitConflictChooseBoth<CR>',                                    'choose both'},
    --   n = {'<cmd>GitConflictNextConflict<CR>',                                  'move to next conflict'},
    --   o = {'<cmd>GitConflictChooseOurs<CR>',                                    'choose ours'},
    --   p = {'<cmd>GitConflictPrevConflict<CR>',                                  'move to prev conflict'},
    --   t = {'<cmd>GitConflictChooseTheirs<CR>',                                  'choose theirs'},
    -- },
    d = { '<cmd>DiffviewFileHistory<CR>', 'diff file' },
    g = { '<cmd>LazyGit<CR>',                                                   'lazygit' },
  },

  -- s = {
  --   name = 'Search',
  --   c = { '<cmd>Telescope colorscheme<CR>',                              'color schemes' },
  --   d = { '<cmd>lua require("plugins.telescope").edit_neovim()<CR>',     'dotfiles' },
  --   h = { '<cmd>Telescope oldfiles hidden=true<CR>',                     'file history' },
  --   H = { '<cmd>lua require("plugins.telescope").command_history()<CR>', 'command history' },
  --   s = { '<cmd>Telescope search_history theme=dropdown<CR>',            'search history' },
  -- },
}

wk.register(mappings, opts)