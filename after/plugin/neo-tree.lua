require('neo-tree').setup({
    close_if_last_window = true,
    filesystem = {
        hijack_netrw_behavior = "open_current"
    },
    window = {
        position = "left",
        width = 35,
    },
    buffers = {
        follow_current_file = {
            enabled = true, -- This will find and focus the file in the active buffer every time
            leave_dirs_open = true, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
        group_empty_dirs = true, -- when true, empty folders will be grouped together
        show_unloaded = true,
    }
})

vim.cmd("Neotree filesystem reveal left")
