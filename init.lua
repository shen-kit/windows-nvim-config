-- disable netrw for nvim-tree to work
vim.g.loaded_newrw = 1
vim.g.loaded_netrwPlugin = 1


require('keybinds')
require('plugins')
require('opts')
require('plugin_config.nvim_tree')
require('plugin_config.lsp_config')
require('plugin_config.completions')
require('plugin_config.nvim_comment')
require('plugin_config.wilder')

vim.cmd.colorscheme('tokyonight')
