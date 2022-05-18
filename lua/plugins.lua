return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  -- language server protocol
  use 'neovim/nvim-lspconfig'
  use 'kyazdani42/nvim-web-devicons'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- scheme
  --use 'tjdevries/colorbuddy.vim'
  --use 'Th3Whit3Wolf/onebuddy'
  --use 'Th3Whit3Wolf/one-nvim'
  --use "rebelot/kanagawa.nvim"
  --use({
  --	"catppuccin/nvim",
	--  as = "catppuccin"
  --})
  --use 'sainnhe/edge'
  --use 'sainnhe/everforest'
  --use 'tanvirtin/monokai.nvim'
  use 'sainnhe/sonokai'
  --use 'tomasiser/vim-code-dark' 
  --use 'sainnhe/gruvbox-material'
  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Bufferline
  use 'famiu/bufdelete.nvim'
  use {
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = {
        "kyazdani42/nvim-web-devicons",
    },
  }

  -- nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  use 'hrsh7th/nvim-cmp'
  -- vsnip
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  -- lspkind
  use 'onsails/lspkind-nvim'

  use 'windwp/nvim-autopairs'
  
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

  -- lspsaga.nvim 
  use { 'tami5/lspsaga.nvim' }

  -- telescale
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-telescope/telescope-dap.nvim',
  }
  use {'nvim-telescope/telescope-ui-select.nvim' }
  use 'RishabhRD/popfix'
  use 'hood/popui.nvim'

  -- dap
  use {
    'mfussenegger/nvim-dap',
  }
  use {
    'theHamsta/nvim-dap-virtual-text',
    requires = 'mfussenegger/nvim-dap',
  }
  use {
    "rcarriga/nvim-dap-ui",
    requires = "mfussenegger/nvim-dap",
  }

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- term
  use {"akinsho/toggleterm.nvim"}

  -- symbols-outline
  use 'simrat39/symbols-outline.nvim'

  -- test
  use { "rcarriga/vim-ultest", requires = {"vim-test/vim-test"}, run = ":UpdateRemotePlugins" }

  -- lsp progressbar
  use 'j-hui/fidget.nvim'

  -- rust-tools
  use 'simrat39/rust-tools.nvim'
end)
