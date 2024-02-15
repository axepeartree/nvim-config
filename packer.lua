vim.cmd [[packadd packer.nvim]]

local status, plugin = pcall(require, "packer")
if not status then
    print('It looks like packer is not installed.')
    print('Make sure to git-clone the plugin into your nvim-data folder.')
else
    plugin.startup(function(use)
        -- packer manages itself
        use 'wbthomason/packer.nvim'
        -- colorscheme
        use 'rebelot/kanagawa.nvim'
        -- async lua
        use 'nvim-lua/plenary.nvim'
        -- grepping and finding files
        use {'nvim-telescope/telescope.nvim', tag = '0.1.5'}
        -- better UI
        use 'stevearc/dressing.nvim'
        -- file tree
        use {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v3.x",
            requires = { 
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons",
                "MunifTanjim/nui.nvim",
            }
        }
        -- language parser
        use {
            'nvim-treesitter/nvim-treesitter',
            run = function()
                local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
                ts_update()
            end,
        }
        -- LSP configuration
        use 'neovim/nvim-lspconfig'
        -- autocompletion
        use {
            'hrsh7th/nvim-cmp',
            requires = {
                'neovim/nvim-lspconfig',
                'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-path',
                'hrsh7th/cmp-cmdline',
                'hrsh7th/cmp-vsnip',
                'hrsh7th/vim-vsnip',
            }
        }
    end)
end
