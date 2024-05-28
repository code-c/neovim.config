-- [[ Import keymaps ]]
-- defines <leader> key and other keymaps
-- which should not be related to any plugins.
-- it must be called first to avoid setting a wrong leaderkey
require 'keymaps'

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
-- these are defined in the plugins directory
require('lazy').setup('plugins', {})

-- [[ Vim Options ]]
-- add custom vim options set in separate file in the Lua dir.
require 'vim-options'
