reload "user.which-key"
reload "user.opt"
reload "user.plugins"

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
lvim.colorscheme = "rose-pine"

lvim.format_on_save.enabled = true
lvim.builtin.nvimtree.setup.filters.exclude = {}
require 'lspconfig'.astro.setup {}
require 'lspconfig'.gopls.setup {}
