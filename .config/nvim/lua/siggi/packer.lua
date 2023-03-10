vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- packer can manage itself
    use 'wbthomason/packer.nvim'
    -- use 'folke/tokyonight.nvim'
    use 'mhartington/oceanic-next'
     -- Highlights
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    
    -- Typescript highlighting
    -- use 'HerringtonDarkholme/yats.vim'
    -- or Plug 'leafgarland/typescript-vim'
    use 'yuezk/vim-js'
    use 'maxmellon/vim-jsx-pretty'
    use 'fsharp/vim-fsharp' 
    -- Fuzzy file finder 
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {{ 'nvim-lua/plenary.nvim' }} 
    }
    -- Filetree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    } 
    -- Git fugitive 
    use('tpope/vim-fugitive')

    -- LSP stuff
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
end)
