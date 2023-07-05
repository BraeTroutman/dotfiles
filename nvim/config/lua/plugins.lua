-- This file can be loaded by calling `lua require('plugins')` from your init.vim

require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-tree/nvim-web-devicons',
        config = function()
            require('nvim-web-devicons').setup()
        end
    }

    use 'arcticicestudio/nord-vim'
    vim.cmd([[ colorscheme nord ]])

    -- Unless you are still migrating, remove the deprecated commands from v1.x
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

    use "majutsushi/tagbar"

    use {
        "nvim-lualine/lualine.nvim",
        event = "VimEnter",
        config = function()
            require("lualine").setup({})
        end,
        requires = { "nvim-tree/nvim-web-devicons" },
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = { "c", "go", "lua", "yaml", "julia" },
                sync_install = false,
                auto_install = true,
                highlight = {
                    enable = true,
                },
            }
        end,
    }

    use {
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons',
        config = function()
            require('bufferline').setup()
        end,
    }

    use 'neovim/nvim-lspconfig'

    use 'williamboman/nvim-lsp-installer'

    use 'williamboman/mason.nvim'

    use 'williamboman/mason-lspconfig.nvim'

    use 'folke/neodev.nvim'

    use {
        "folke/which-key.nvim",
        event = "VimEnter",
        config = function()
            require("plugins.whichkey").setup()
        end,
    }
end)
