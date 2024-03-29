vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }



 use 'nvim-telescope/telescope-fzy-native.nvim'
 use 'nvim-telescope/telescope-file-browser.nvim'
 use({
     'gruvbox-community/gruvbox',
     as = 'gruvbox',
     config = function()
         vim.cmd.colorscheme('gruvbox')
     end
 })

  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use('nvim-treesitter/nvim-treesitter-context')
  use('theprimeagen/harpoon')
  use('theprimeagen/vim-be-good')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use({ "akinsho/git-conflict.nvim", tag = "*" })

	use("f-person/git-blame.nvim")

  -- use('github/copilot.vim');
  use {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        default_keybindings = false,
        default_bindings = false,
        suggestion = {
          auto_trigger = false,
          keymap = {
            next = "<C-j>",
            prev = "<C-k>",
            accept = "<C-w>",
            dismiss = "<C-e>",
          }
        },
      })
    end,
  }


  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
end)
