-- Install lazy.nvim if not already installed
local boot = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(boot) then
  local link = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system({ 'git', 'clone', '--filter=blob:none', link, '--branch=stable', boot })
end
vim.opt.rtp:prepend(boot)

-- Preset options for lazy.nvim
local opts = {
  defaults = { lazy = true },

  performance = {
		rtp = {
			disabled_plugins = {
        '2html_plugin',
        'bugreport',
        'compiler',
        'editorconfig',
        'ftplugin',
        'getscript',
        'getscriptPlugin',
        'gzip',
        'health',
        'logipat',
        'man',
        'matchit',
        'matchparen',
        'netrw',
        'netrwFileHandlers',
        'netrwPlugin',
        'netrwSettings',
        'nvim',
        'optwin',
        'rplugin',
        'rrhelper',
        'shada',
        'spellfile',
        'spellfile_plugin',
        'synmenu',
        'syntax',
        'tar',
        'tarPlugin',
        'tohtml',
        'tutor',
        'vimball',
        'vimballPlugin',
        'zip',
        'zipPlugin',
			},
		},
  },
}

-- Protected call to prevent errors
local ok, lazy = pcall(require, 'lazy')
if not ok then
	return
end

-- Loading modules from specifications
lazy.setup ('modules', opts)