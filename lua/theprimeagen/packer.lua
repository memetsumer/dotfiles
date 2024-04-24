-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {'edluffy/hologram.nvim'}
    use 'windwp/nvim-ts-autotag'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- TreeSitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Theme Settings
    use {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {}
    }

    -- UndoTree
    use "mbbill/undotree"
    -- Fugitive
    use "tpope/vim-fugitive"

    use "jose-elias-alvarez/null-ls.nvim"
    -- use { 'mhartington/formatter.nvim' }
    use "MunifTanjim/prettier.nvim"

    -- LSP Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }

    -- LuaLine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
    use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'

    -- Comment Lines
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

end)
