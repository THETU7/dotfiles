local package = require('core.pack').package
local conf = require('modules.completion.config')

-- @info mason.nvim is optimized to load as little as possible during setup.
-- Lazy-loading the plugin, or somehow deferring the setup, is not recommended.
package({
  'williamboman/mason.nvim',
  config = conf.mason,
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    { 'williamboman/mason-lspconfig.nvim', config = conf.mason_lspconfig },
    {
      'neovim/nvim-lspconfig',
      config = function()
        require('modules.completion.lspconfig')
      end,
    },
    { 'jay-babu/mason-null-ls.nvim', config = conf.mason_nullls },
    {
      'jose-elias-alvarez/null-ls.nvim',
      config = function()
        require('modules.completion.null_ls_config')
      end,
    },
  },
  -- lazy = true,
  -- event = "VeryLazy",
})

--[[
package({
  'neovim/nvim-lspconfig',
  -- used filetype to lazyload lsp
  -- config your language filetype in here
  ft = { 'lua', 'rust', 'c', 'cpp' },
  config = conf.nvim_lsp,
})
--]]

package({
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  config = conf.nvim_cmp,
  dependencies = {
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-buffer' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'onsails/lspkind-nvim' },
    { 'windwp/nvim-autopairs', config = conf.auto_pairs },
  },
})

package({
  'L3MON4D3/LuaSnip',
  event = 'InsertCharPre',
  config = conf.lua_snip,
  dependencies = { 'rafamadriz/friendly-snippets' },
})

package({
  'windwp/nvim-ts-autotag',
  event = 'InsertEnter',
  config = function()
    require('nvim-ts-autotag').setup()
  end,
})
