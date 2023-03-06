-- Автоустановка Packer'а на новые системы
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- TODO: Проверка орфографии

-- TODO: debugger (dap)
-- TODO: search (telescope)
-- TODO: refactor
-- TODO: jest (neotest)
-- TODO: session (session-manager)

-- TODO: nvim-treesitter-context
-- TODO: nvim-autopairs
-- TODO: nvim-toggleterm
-- TODO: zen-mode.nvim

-- TODO: database management
-- TODO: postman
-- TODO: ChatGPT

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  
  -- Зависимости для остальных модулей
  use 'nvim-lua/plenary.nvim'

  -- Красивые оповещения
  use {
    'rcarriga/nvim-notify',
    config = function()
      require('plugins.notify')
    end
  }

  -- Git подсказки
  use 'APZelos/blamer.nvim'
  use 'kdheepak/lazygit.nvim'

  -- Colors
  use {
    'folke/lsp-colors.nvim',
    config = function()
      require("lsp-colors").setup()
    end
  }

  -- Сигнатура
  use {
    "ray-x/lsp_signature.nvim",
  }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'lvimuser/lsp-inlayhints.nvim'
  use {
    'williamboman/mason.nvim',
    config = function()
      require('plugins.mason')
    end
  }
  use {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup()
    end
  }

  -- Форматирование кода (Prettier и т.д.)
  use 'sbdchd/neoformat'

  -- Theme
  use 'shaunsingh/nord.nvim'

  -- Smooth scrolling
  use {
    'declancm/cinnamon.nvim',
    config = function()
      require('cinnamon').setup()
    end
  }

  -- Красивые селекты и инпуты
  use {'stevearc/dressing.nvim'}

  -- Autocomplete
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require('plugins.cmp')
    end
  }

  -- Иконки
  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup({ default = true; })
    end
  }

  -- Подсветка синтаксиса
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('plugins.treesitter') 
    end
  }

  -- File explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
      opt = true
    },
    config = function()
      require('plugins.tree')
    end
  }

  -- Tabnine
  use {
    'tzachar/cmp-tabnine',
    after = "nvim-cmp",
    run='powershell ./install.ps1',
    -- run='./install.sh'
    requires = 'hrsh7th/nvim-cmp'
  }

  -- This tiny plugin adds vscode-like pictograms to neovim built-in lsp
  use('onsails/lspkind-nvim')

  -- Нижняя строка состояния
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    },
    config = function()
      require('plugins.lualine')
    end
  }

  -- Вкладки
  use {
    'akinsho/bufferline.nvim',
    config = function()
      require('plugins.bufferline')
    end
  }

  -- Индикация табов
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('plugins.indent-blankline')
    end
  }

  -- Боковая индикация для Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  -- История Git
  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  -- Нижняя панель собирающая все оповещения от LSP
  use {
    'folke/trouble.nvim',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('trouble').setup()
    end
  }

  -- Подсветка заголовоков (например для markdown)
  -- use {
  --   'lukas-reineke/headlines.nvim',
  --   config = function()
  --     require('plugins.headlines')
  --   end
  -- }

  -- TODO: Сворачивание блоков кода
  -- use {
  --   'kevinhwang91/nvim-ufo',
  --   requires = 'kevinhwang91/promise-async',
  --   config = function()
  --     require('ufo').setup({
  --       provider_selector = function(bufnr, filetype, buftype)
  --         return {'treesitter', 'indent'}
  --       end
  --     })
  --   end
  -- }

  -- Быстрое меню
  use {
    "folke/which-key.nvim",
    config = function()
      require('plugins.which-key')
    end
  }

  -- To do hilight
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup()
    end
  }

  -- Color highlight
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end
  }

  -- TODO: Снипеты
  use "L3MON4D3/LuaSnip"

  -- Комментарии
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('plugins.comment')
    end
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
