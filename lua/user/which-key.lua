-- Git Keymaps
lvim.builtin.which_key.mappings["g"] = {
    name = "Git",
    b = { "<cmd>Telescope git_branches<cr>", "Git branches" },
    s = { "<cmd>Git status<cr>", "Git Status" },
    c = { "<cmd>Git commit<cr>", "Git Commit" },
    p = { "<cmd>Git push<cr>", "Git Push" },
    d = { "<cmd>Git diff<cr>", "Git Diff" },
}
