require('mason').setup()
require('mason-lspconfig').setup()

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover)
  end
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- automatically setup all installed servers
-- DO NOT manually set-up any servers or they will be set-up twice!
require('mason-lspconfig').setup_handlers {
  function (server_name)
    require('lspconfig')[server_name].setup {
      capabilities = capabilities
    }
  end
}
