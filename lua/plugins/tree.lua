require('nvim-tree').setup({
  sort_by = 'case_sensitive',
  git = {
    enable = true,
  },
  view = {
    side = "left",
    width = 30,
    hide_root_folder = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  -- filters = {
  --   dotfiles = true,
  -- }
})