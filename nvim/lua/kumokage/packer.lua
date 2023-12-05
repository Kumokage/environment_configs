-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Thema
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    -- vs-code like icons
    use("nvim-tree/nvim-web-devicons")

    -- Navigation with tmux
    use("christoomey/vim-tmux-navigator")

    -- Toogle window max and back
    use("szw/vim-maximizer")

    -- surround with tags and other staff
    use("tpope/vim-surround")

    -- auto comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- nice status line
    use("nvim-lualine/lualine.nvim")

    -- autoclosing
    use("windwp/nvim-autopairs")
    use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
            }
        end
    })

    -- Nice colors for code
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- Go fast between files
    use("theprimeagen/harpoon")

    -- undotree
    use("mbbill/undotree")

    -- use git from command tool
    use("tpope/vim-fugitive")

    -- LSP with all cool stuff
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- git status line
    use { "lewis6991/gitsigns.nvim", config = function()
        require('gitsigns').setup()
    end
    }
end)
