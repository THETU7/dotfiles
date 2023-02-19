local package = require('core.pack').package
local conf = require('modules.editor.config')

package({
  'nvim-treesitter/nvim-treesitter',
  event = 'BufRead',
  run = ':TSUpdate',
  config = conf.nvim_treesitter,
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    {
      'glepnir/lspsaga.nvim',
      config = function()
        require('lspsaga').setup({})
      end,
    },
  },
})

package({
  'lukas-reineke/indent-blankline.nvim',
  event = 'BufRead',
  config = function()
    require('indent_blankline').setup({})
  end,
})
