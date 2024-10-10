lvim.plugins = {
    { "rose-pine/neovim",     name = "rose-pine" },
    {
        "sho-87/kanagawa-paper.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    { "oxfist/night-owl.nvim" },
    { "rebelot/kanagawa.nvim" },
    {
        "ggandor/leap.nvim",
        enabled = true,
        keys = {
            { "s",  mode = { "n", "x", "o" }, desc = "Leap Forward to" },
            { "S",  mode = { "n", "x", "o" }, desc = "Leap Backward to" },
            { "gs", mode = { "n", "x", "o" }, desc = "Leap from Windows" },
        },
        config = function(_, opts)
            local leap = require("leap")
            for k, v in pairs(opts) do
                leap.opts[k] = v
            end
            leap.add_default_mappings(true)
            vim.keymap.del({ "x", "o" }, "x")
            vim.keymap.del({ "x", "o" }, "X")
        end,
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            menu = {
                width = vim.api.nvim_win_get_width(0) - 4,
            },
            settings = {
                save_on_toggle = true,
            },
        },
        keys = function()
            local keys = {
                {
                    "<leader>a",
                    function()
                        require("harpoon"):list():add()
                    end,
                    desc = "Harpoon File",
                },
                {
                    "<C-e>",
                    function()
                        local harpoon = require("harpoon")
                        harpoon.ui:toggle_quick_menu(harpoon:list())
                    end,
                    desc = "Harpoon Quick Menu",
                },
                {
                    "<C-k>",
                    function()
                        require("harpoon"):list():select(1)
                    end,
                    desc = "Harpoon File 1",
                },
                {
                    "<C-l>",
                    function()
                        require("harpoon"):list():select(2)
                    end,
                    desc = "Harpoon File 2",
                },
                {
                    "<C-,>",
                    function()
                        require("harpoon"):list():select(3)
                    end,
                    desc = "Harpoon File 3",
                },
                {
                    "<C-.>",
                    function()
                        require("harpoon"):list():select(4)
                    end,
                    desc = "Harpoon File 4",
                }
            }
            return keys
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },
    {
        "tpope/vim-fugitive",
        cmd = {
            "G",
            "Git",
            "Gdiffsplit",
            "Gread",
            "Gwrite",
            "Ggrep",
            "GMove",
            "GDelete",
            "GBrowse",
            "GRemove",
            "GRename",
            "Glgrep",
            "Gedit"
        },
        ft = { "fugitive" }
    },
    {
        "folke/zen-mode.nvim",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    }
}

-- table.insert(lvim.plugins, {
--   "zbirenbaum/copilot-cmp",
--   event = "InsertEnter",
--   dependencies = { "zbirenbaum/copilot.lua" },
--   config = function()
--     vim.defer_fn(function()
--       require("copilot").setup() -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
--       require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
--     end, 100)
--   end,
-- )
