local actions = require "telescope.actions"
require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules", ".git/", "cdk.out" },
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--hidden'
    }
  },
  pickers = {
    buffers = {
      mappings = { i = { ["<c-d>"] = actions.delete_buffer + actions.move_to_top, } }
    }
  }
}
require('telescope').load_extension "file_browser"

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>gg', builtin.live_grep)

require('telescope').load_extension('test_plug')
vim.api.nvim_set_keymap("n", "<leader>ph", "<Cmd>lua require('telescope').extensions.test_plug.coauthors()<CR>", { silent = true })
