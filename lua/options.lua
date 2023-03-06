-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Скрывать командную строку по дефолту
vim.o.cmdheight = 0

-- Подсвечивать текущую строку
vim.opt.cursorline = true

-- Поддержка цветов
vim.opt.termguicolors = true

-- Табуляция
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Нумерация строк
vim.wo.number = true
vim.wo.relativenumber = true

-- Отображение единой статусной строки
vim.opt.laststatus = 3

-- TODO: Сворачивание кусков кода
-- vim.o.foldcolumn = '1'
-- vim.o.foldlevel = 99
-- vim.o.foldlevelstart = 99
-- vim.o.foldenable = true
-- vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

-- <space> as <leader>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Настройки темы
vim.cmd[[colorscheme nord]]
vim.g.nord_contrast = false
vim.g.nord_borders = true
vim.g.nord_disable_background = true
vim.g.nord_italic = true
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = true
require('nord').set()

-- CMP colors
vim.cmd('syntax on')
vim.cmd('highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080')
vim.cmd('highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6')
vim.cmd('highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6')
vim.cmd('highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE')
vim.cmd('highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE')
vim.cmd('highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE')
vim.cmd('highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0')
vim.cmd('highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0')
vim.cmd('highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4')

-- Gutter icons
local signs = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Information = " "
}
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end

-- Hide ~ in empty lines sidebar
vim.wo.fillchars='eob: '

-- Spell checking
-- vim.opt.spell = true
vim.opt.spelllang = { 'en_us', 'ru_ru', 'uk' }

-- Хоткеи на ру расскладке
vim.opt.langmap = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'

-- use local prettier
vim.g.neoformat_try_node_exe = 1 