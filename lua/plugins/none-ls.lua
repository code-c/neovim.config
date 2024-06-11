return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
  },

  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettierd,
        require 'none-ls.code_actions.eslint_d', -- js formatting (requires set up in each project)
        require 'none-ls.diagnostics.eslint_d',
      },
    }
  end,
}
