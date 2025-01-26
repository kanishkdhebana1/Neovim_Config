function ColorMyPencils(color)
	color = color or "tokyonight-moon" -- Set default theme here
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- Set background to none for transparency
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- Set background to none for floating windows
end

return {

    -- Brightburn Theme
    {
        "erikbackman/brightburn.vim",
    },

    -- TokyoNight Theme
    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
        config = function()
            require("tokyonight").setup({
                style = "moon", -- Default style set to 'night'
                transparent = true, -- Transparent background enabled
                terminal_colors = true,
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                    sidebars = "transparent",
                    floats = "transparent",
                },
            })
        end
    },

    -- Mellow
    {
        "mellow-theme/mellow.nvim",
        name = "mellow",
        config = function()
                -- Configure global variables BEFORE loading the colorscheme
                vim.g.mellow_transparent = true        -- Enable transparency
                vim.g.mellow_italic_comments = true   -- Make comments italic
                vim.g.mellow_italic_keywords = true   -- Make keywords italic
                vim.g.mellow_bold_keywords = true     -- Make keywords bold

                -- Load the colorscheme
                vim.cmd.colorscheme("mellow")

                ColorMyPencils("mellow") -- Set default colorscheme to mellow
        end,
    },

    -- Rose Pine Theme
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true, -- Transparent background enabled for Rose Pine
                styles = {
                    italic = false,
                },
            })
        end
    },


    -- Kanagawa
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            require('kanagawa').setup({
                compile = false,             -- enable compiling the colorscheme
                undercurl = true,            -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true},
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = true,         -- do not set background color
                dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
                terminalColors = true,       -- define vim.g.terminal_color_{0,17}
                colors = {                   -- add/modify theme and palette colors
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                    end,
                theme = "dragon",              -- Load "wave" theme when 'background' option is not set
                background = {               -- map the value of 'background' option to a theme
                    dark = "dragon",           -- try "dragon" !
                    light = "lotus"
                },
            })
        end
    },
}
