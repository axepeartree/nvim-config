require('kanagawa').setup({
    keywordStyle = { italic = false },
    commentStyle = { italic = false },
    statementStyle = { italic = false },
    typeStyle = { italic = false },
    functionStyle = { italic = false },
    dimInactive = false,
})

vim.cmd('colorscheme kanagawa')
