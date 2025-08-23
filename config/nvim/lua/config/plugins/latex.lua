return {
    {
        "lervag/vimtex",
        lazy = false,
        config = function()
            vim.g.vimtex_view_method = "zathura"
            vim.g.vimtex_view_general_viewer = 'zathura'
            vim.g.vimtex_compiler_method = "latexmk"

            -- Keymaps for VimTeX
            vim.keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<CR>", { desc = "Compile LaTeX" })
            vim.keymap.set("n", "<leader>lv", "<cmd>VimtexView<CR>", { desc = "View PDF" })
            vim.keymap.set("n", "<leader>lc", "<cmd>VimtexClean<CR>", { desc = "Clean aux files" })
        end
    }
}
