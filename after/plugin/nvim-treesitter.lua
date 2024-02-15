require 'nvim-treesitter.install'.compilers = { "cl" } -- windows only...
require('nvim-treesitter.configs').setup({
    ensure_installed = { 'rust' }
})
