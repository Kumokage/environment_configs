-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        requires = { { 'nvim-lua/plenary.nvim' } },
    }

    -- Thema
    use {
        'ribru17/bamboo.nvim',
        config = function()
            require('bamboo').setup {
                transparent = true
            }
            require('bamboo').load()
        end,
    }
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

            -- Formaters as LSP
            { 'jose-elias-alvarez/null-ls.nvim' },
            { 'jay-babu/mason-null-ls.nvim' },

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
    use { "lewis6991/gitsigns.nvim" }

    -- markdown preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- Obsidian
    use({
        "epwalsh/obsidian.nvim",
        tag = "*",
        requires = { "nvim-lua/plenary.nvim", },
    })


    -- Database
    use {
        "tpope/vim-dadbod",
        opt = true,
        requires = {
            "kristijanhusak/vim-dadbod-ui",
            "kristijanhusak/vim-dadbod-completion",
        },
        cmd = {
            "DBUIToggle",
            "DBUI",
            "DBUIAddConnection",
            "DBUIFindBuffer",
            "DBUIRenameBuffer",
            "DBUILastQueryInfo"
        },
    }

    -- Latex
    use { 'lervag/vimtex' }

    -- Test jupyter plugins
    use { 'dccsillag/magma-nvim',
        run = ':UpdateRemotePlugins',
        requires = {
            'kana/vim-textobj-user',
            'kana/vim-textobj-line',
            'GCBallesteros/vim-textobj-hydrogen',
            'GCBallesteros/jupytext.vim',
        }
    }

    -- PlantUML
    use { 'weirongxu/plantuml-previewer.vim',
        requires = {
            'https://github.com/aklt/plantuml-syntax',
            'tyru/open-browser.vim'
        }
    }

    -- Pomodoro
    use({
        "epwalsh/pomo.nvim",
        tag = "*", -- Recommended, use latest release instead of latest commit
        requires = {
            -- Optional, but highly recommended if you want to use the "Default" timer
            "rcarriga/nvim-notify",
        },
        config = function()
            require("pomo").setup({})
        end,
    })

    -- Useless plugins
    use 'eandrju/cellular-automaton.nvim'
end)
