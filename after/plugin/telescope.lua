local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local themes = require('telescope.themes')

-- Define keymaps
vim.keymap.set('n', '<leader>pf', function() builtin.find_files(themes.get_dropdown()) end, {})
vim.keymap.set('n', '<C-p>', function() builtin.git_files(themes.get_dropdown()) end, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string(themes.get_dropdown({
        search = vim.fn.input("Grep > ")
    }))
end, {})
vim.keymap.set('n', '<leader>vh', function() builtin.help_tags(themes.get_dropdown()) end, {})
