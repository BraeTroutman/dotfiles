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
                ensure_installed = { "c", "go", "lua", "yaml", "julia", "org" },
                sync_install = false,
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = {'org'},
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

    use 'williamboman/mason.nvim'

    use 'williamboman/mason-lspconfig.nvim'

    use 'folke/neodev.nvim'

    use 'mfussenegger/nvim-dap'

    use {
        'ray-x/go.nvim',
        config = function()
            require("go").setup()
        end,
    }

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {}
        end,
    }

    use {
        'nvim-orgmode/orgmode',
        config = function()
            require('orgmode').setup_ts_grammar()
            require('orgmode').setup{
                org_agenda_files = {"~/notes/**/*.org", "~/src/forks/osd-fleet-manager/TODO.org"},
                org_default_notes_file = "~/notes/index.org",
            }
        end,
    }

    use 'dhruvasagar/vim-table-mode'

    use {
        'renerocksai/telekasten.nvim',
        requires = {'nvim-telescope/telescope.nvim'},
        config = function()
            require('telekasten').setup {
                home = vim.fn.expand("~/notes/kast"),
            }
        end
    }

end)
