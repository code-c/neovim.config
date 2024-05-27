--[[Dashboard Configurations]]
-- features a few setups for dashboard-vim and alpha-vim
return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.startify'

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    alpha.setup(dashboard.opts)
  end,

  -- 'nvimdev/dashboard-nvim',
  -- event = 'VimEnter',
  -- config = function()
  --   require('dashboard').setup {
  --           theme = 'doom',
  --           config = {
  --             header = {
  --               [[                                  __]],
  --               [[     ___     ___    ___   __  __ /\_\    ___ ___]],
  --               [[    / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\]],
  --               [[   /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \]],
  --               [[   \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
  --               [[    \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
  --             }, --your header
  --             center = {
  --               {
  --                 icon = ' ',
  --                 icon_hl = 'Title',
  --                 desc = 'Find File           ',
  --                 desc_hl = 'String',
  --                 key = 'b',
  --                 keymap = 'SPC f f',
  --                 key_hl = 'Number',
  --                 key_format = ' %s', -- remove default surrounding `[]`
  --                 action = 'lua print(2)',
  --               },
  --               {
  --                 icon = ' ',
  --                 desc = 'Find Dotfiles',
  --                 key = 'f',
  --                 keymap = 'SPC f d',
  --                 key_format = ' %s', -- remove default surrounding `[]`
  --                 action = 'lua print(3)',
  --               },
  --             },
  --             footer = {}, --your footer
  --           },
  --   }
  -- end,
  -- dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
