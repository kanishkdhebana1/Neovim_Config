return {

    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },

    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    "eandrju/cellular-automaton.nvim",

    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",  -- Add nvim-nio as a dependency
        },
        config = function()
            -- Configure Neotest if needed
        end
    },
    {
        "nvim-neotest/nvim-nio",  -- Ensure nvim-nio is included
        config = function()
            -- Configure nvim-nio if needed
        end
    }
}

