require'nvim-treesitter'.setup {
ensure_installed = {"help", "javascript", "typescript", "c","lua", "rust"},
sync_install = false,
auto_install = true,
highlight = {
enable = true,
disable = { "latex" },
additional_vim_regex_highlighting =false,
},
}
