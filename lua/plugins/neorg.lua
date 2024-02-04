return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("neorg").setup {
            load = {
                ["core.defaults"] = {},  -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.dirman"] = {      -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            home = "~/Documents/neorg",
                            notes = "~/Documents/neorg/notes",
                            frontEnd = "~/Documents/neorg/frontEnd",
                            backEnd = "~/Documents/neorg/backEnd",
                            devOps = "~/Documents/neorg/devOps",
                        },
                        default_workspace = "home",
                    },
                },
            },
        }
    end,
}
