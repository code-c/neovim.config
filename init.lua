-- [[ My Config: Started from kickstart.nvim ]]

-- [[ Import keymaps ]]
-- these are ones that are not related to any plugin
-- defines <leader> key so it must be called first
require('keymaps')

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- [[ Install plugins ]]
-- these are defined in out plugins directory
-- plugins that dont require setup are set in init.lua
require("lazy").setup({{import = "plugins"}}, {})

-- [[ Import custom Vim Options ]]
require('vim-options')
