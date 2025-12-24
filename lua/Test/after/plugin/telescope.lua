local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader><tab><tab>', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<Leader><tab>f', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")})
end)

