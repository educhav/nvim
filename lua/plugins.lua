vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function()
        use 'wbthomason/packer.nvim'

        use 'kyazdani42/nvim-web-devicons'
        use 'akinsho/nvim-bufferline.lua'
        use 'hoob3rt/lualine.nvim'

        use 'kyazdani42/nvim-tree.lua'
        use 'lewis6991/gitsigns.nvim' -- KEYBINDINGS FOR BLAME

        use 'tpope/vim-commentary'
        use 'tpope/vim-surround'
        use 'windwp/nvim-autopairs'
        use 'folke/zen-mode.nvim'

        use 'norcalli/nvim-colorizer.lua'
        use 'tiagovla/tokyodark.nvim'

        use 'nvim-lua/popup.nvim'
        use 'nvim-lua/plenary.nvim'
        use 'nvim-telescope/telescope.nvim'

        -- LSP
        use 'neovim/nvim-lspconfig'
        use 'glepnir/lspsaga.nvim'
        use 'hrsh7th/nvim-compe'
        use 'kabouzeid/nvim-lspinstall'
        use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

        -- Dashboard
        use 'glepnir/dashboard-nvim'

end)
