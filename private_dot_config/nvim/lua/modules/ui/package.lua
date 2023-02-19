local package = require('core.pack').package
local conf = require('modules.ui.config')

package({ 'glepnir/zephyr-nvim', config = conf.zephyr })
package({'folke/tokyonight.nvim', lazy=false ,config = function ()
  require("tokyonight").setup({
  style = "storm",
  styles = {
    functions = { italic = true },
  },
  vim.cmd[[colorscheme tokyonight]]
})

end})

package({ 'glepnir/dashboard-nvim', config = conf.dashboard })

package({
  'nvim-tree/nvim-tree.lua',
  cmd = 'NvimTreeToggle',
  config = conf.nvim_tree,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
})

package({
  'nvim-lualine/lualine.nvim',
  lazy=false,
  config= function ()
    require("lualine").setup({
      options = {
        theme = "tokyonight",
    },
})

  end
})

package({ 'akinsho/nvim-bufferline.lua', version="v3.*" ,config = conf.nvim_bufferline, dependencies = { 'nvim-tree/nvim-web-devicons'} })