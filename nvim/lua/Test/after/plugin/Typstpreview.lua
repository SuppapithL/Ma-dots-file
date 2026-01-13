require("typst-preview").setup({
    preview = {
        max_width = 80, -- Maximum width of the preview window (columns)
        ppi = 144, -- The PPI (pixels per inch) to use for PNG export (high value will affect the performance)
        position = "right", -- The position of the preview window relative to the code window
    },
    statusline = {
        enabled = true, -- Show statusline
        compile = { -- Last compilation status
            ok = { icon = "", color = "#b8bb26" },
            ko = { icon = "", color = "#fb4943" },
        },
        page_count = { -- Page count
            color = "#d5c4e1",
        },
    },
})

vim.keymap.set("n", "<leader>ts", function()
  require("typst-preview").start()
end, { desc = "Start Typst preview" })

vim.keymap.set("n", "<leader>tq", function()
  require("typst-preview").stop()
end, { desc = "Stop Typst preview" })

vim.keymap.set("n", "<leader>tn", function()
  require("typst-preview").next_page()
end, { desc = "Next page" })

vim.keymap.set("n", "<leader>tp", function()
  require("typst-preview").prev_page()
end, { desc = "Previous page" })

vim.keymap.set("n", "<leader>tr", function()
  require("typst-preview").refresh()
end, { desc = "Refresh preview" })

vim.keymap.set("n", "<leader>tgg", function()
  require("typst-preview").first_page()
end, { desc = "First page" })

vim.keymap.set("n", "<leader>tG", function()
  require("typst-preview").last_page()
end, { desc = "Last page" })
