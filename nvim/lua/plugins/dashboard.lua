return {
    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            dashboard.section.header.val = {
                "     _                _                    _    ",
                "    | |              (_)                  | |   ",
                "  __| | _____   _____ _ _ __ ___  ___  ___| | __",
                " / _` |/ _ \\ \\ / / __| | '_ ` _ \\/ __|/ _ \\ |/ /",
                "| (_| |  __/\\ V /\\__ \\ | | | | | \\__ \\  __/   < ",
                " \\__,_|\\___| \\_/ |___/_|_| |_| |_|___/\\___|_|\\_\\",
            }

            dashboard.section.footer.val = {
                "cc (C) devsimsek, smsk.dev",
                "",
                "type :q to bail, <leader>ff to find stuff, <leader>e to explore",
            }

            dashboard.section.buttons.val = {
                dashboard.button("ff", "  " .. "Find files", ":Telescope find_files<CR>"),
                dashboard.button("fr", "  " .. "Recent files", ":Telescope oldfiles<CR>"),
                dashboard.button("fg", "  " .. "Live grep", ":Telescope live_grep<CR>"),
                dashboard.button("e", "  " .. "File explorer", ":NvimTreeToggle<CR>"),
                dashboard.button("q", "  " .. "Quit", ":qa<CR>"),
            }

            dashboard.config.layout = {
                { type = "padding", val = 2 },
                dashboard.section.header,
                { type = "padding", val = 1 },
                dashboard.section.buttons,
                { type = "padding", val = 1 },
                dashboard.section.footer,
            }

            alpha.setup(dashboard.config)
        end,
    },
}
