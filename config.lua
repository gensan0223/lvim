reload "user.which-key"
reload "user.opt"
reload "user.plugins"

require 'lspconfig'.astro.setup {}
lvim.lsp.automatic_configuration.skipped_servers = { "tsserver" }

-- goplsのセットアップ
local lspconfig = require("lspconfig")

-- Masonによるgoplsのインストールとセットアップは自動で行われる
lvim.lsp.automatic_servers_installation = false -- 手動インストールする場合はfalse

lspconfig.gopls.setup {
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
}

-- フォーマッタの設定
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    { command = "goimports", filetypes = { "go" } },
}

-- 静的解析の設定
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    { command = "staticcheck", filetypes = { "go" } },
}


-- window move
lvim.keys.normal_mode["<C-Left>"] = "<C-w>h"
lvim.keys.normal_mode["<C-Down>"] = "<C-w>j"
lvim.keys.normal_mode["<C-Up>"] = "<C-w>k"
lvim.keys.normal_mode["<C-Right>"] = "<C-w>l"
lvim.keys.normal_mode["hy"] = "<C-w>h"
lvim.keys.normal_mode["hn"] = "<C-w>j"
lvim.keys.normal_mode["he"] = "<C-w>k"
lvim.keys.normal_mode["ho"] = "<C-w>l"

-- visual_mode
lvim.keys.visual_mode["kp"] = [["_dP]]

-- from Primeagen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- -- LSP Keymaps
lvim.lsp.buffer_mappings.normal_mode["gd"] = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go to Definition" }
lvim.lsp.buffer_mappings.normal_mode["gr"] = { "<cmd>lua vim.lsp.buf.references()<cr>", "Go to References" }
lvim.lsp.buffer_mappings.normal_mode["K"] = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover Documentation" }
lvim.lsp.buffer_mappings.normal_mode["<leader>rn"] = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename Symbol" }

-- -- Moving Lines
lvim.keys.normal_mode["<S-Down>"] = ":m .+1<CR>=="
lvim.keys.normal_mode["<S-Up>"] = ":m .-2<CR>=="
lvim.keys.visual_mode["<S-Down>"] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_mode["<S-Up>"] = ":m '<-2<CR>gv=gv"

lvim.transparent_window = true
-- lvim.colorscheme = "vim"
-- lvim.colorscheme = "kanagawa"
-- lvim.colorscheme = "rose-pine"
-- lvim.colorscheme = "lunaperche"
-- lvim.colorscheme = "everforest"
-- lvim.colorscheme = "gruvbox"
lvim.colorscheme = "nordfox"
-- lvim.colorscheme = "duskfox"

lvim.format_on_save.enabled = true
lvim.builtin.nvimtree.setup.filters.exclude = {}

-- harpoon
-- local harpoon = require("harpoon")
-- harpoon:setup()
-- vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
-- vim.keymap.set("n", "<C-k>", function() harpoon:list():select(1) end)
-- vim.keymap.set("n", "<C-l>", function() harpoon:list():select(2) end)
-- vim.keymap.set("n", "<C-,>", function() harpoon:list():select(3) end)
-- vim.keymap.set("n", "<C-.>", function() harpoon:list():select(4) end)
-- vim.keymap.set("n", "mk", function() harpoon:list():replace_at(1) end)
-- vim.keymap.set("n", "ml", function() harpoon:list():replace_at(2) end)
-- vim.keymap.set("n", "m,", function() harpoon:list():replace_at(3) end)
-- vim.keymap.set("n", "m.", function() harpoon:list():replace_at(4) end)
