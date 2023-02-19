local config = {}

function config.dashboard()
  local db = require('dashboard')
  db.setup({
    theme = 'hyper',
    config = {
      week_header = {
        enable = true,
      },
      shortcut = {
        { desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          desc = ' Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Apps',
          group = 'DiagnosticHint',
          action = 'Telescope app',
          key = 'a',
        },
        {
          desc = ' dotfiles',
          group = 'Number',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      },
    },
  })
end

function config.nvim_bufferline()
  vim.opt.termguicolors = true
  require('bufferline').setup({
    options = {
      --separator_style = 'thick',
      numbers = 'ordinal',
      modified_icon = '✥',
      buffer_close_icon = '',
      always_show_bufferline = false,
      diagnostics = 'nvim_lsp',
      diagnostics_indicator = function(_, level, _, _)
        local icon = level:match('error') and ' ' or ' '
        return ' ' .. icon
      end,
    },
  })
end

function config.nvim_tree()
  require('nvim-tree').setup({
    disable_netrw = false,
    hijack_cursor = true,
    hijack_netrw = true,
    remove_keymaps = { 's' },
    update_focused_file = {
      enable = true,
    },
  })
end

return config
