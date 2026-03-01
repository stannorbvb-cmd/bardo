return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#0f0e0b",
                bg_dark = "#0f0e0b",
                bg_highlight = "#9e977e",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#c9c7bf",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#C9C1A6",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#9e977e",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#b27575",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#d5aeae",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#bdbd89",
                -- green: Comments, strings, success states, git additions
                green = "#5a4f38",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#345e5e",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#938a5f",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#6d6d6d",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#c482c4",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
