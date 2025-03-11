-- Git Keymaps
-- lvim.builtin.which_key.mappings["g"] = {
--     name = "Git",
--     a = { "<cmd>Gwrite<cr>", "Git Add" },
--     b = { "<cmd>Telescope git_branches<cr>", "Git branches" },
--     B = { "<cmd>Git blame", "Git Brlame" },
--     s = { "<cmd>Git status<cr>", "Git Status" },
--     S = { "<cmd>Gstatus<cr>", "Git Status" },
--     c = { "<cmd>Git commit<cr>", "Git Commit" },
--     p = { "<cmd>Git pull<cr>", "Git Pull" },
--     P = { "<cmd>Git push<cr>", "Git Push" },
--     r = { "<cmd>Gread<cr>", "Git Read(git checkout FILE)" },
--     d = { "<cmd>Git diff<cr>", "Git Diff" },
--     l = { "<cmd>Gclog<cr>", "Git Log" },
-- }

lvim.builtin.which_key.mappings["f"] = {
    "<cmd>Telescope git_files<cr>", "find files"
}

lvim.builtin.which_key.mappings["z"] = {
    "<cmd>ZenMode<cr>", "ZenMode"
}
