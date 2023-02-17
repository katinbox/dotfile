return {
    { "rose-pine/neovim", name = "rose-pine" },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        }
    },
    "nvim-lualine/lualine.nvim",
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
        dependencies = {
            "p00f/nvim-ts-rainbow",
            "nvim-treesitter/playground",
            "JoosepAlviste/nvim-ts-context-commentstring",
            "andymass/vim-matchup",
            "windwp/nvim-autopairs",
            "windwp/nvim-ts-autotag",
            "David-Kunz/markid",
        }
    },
    "mbbill/undotree",
    "nvim-tree/nvim-web-devicons",
    {
        "VonHeikemen/lsp-zero.nvim",
        dependencies = {
            -- LSP Support
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",

            -- Autocompletion
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-cmdline",

            -- Snippets
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
            { "tzachar/cmp-tabnine", build = "./install.sh" },
        }
    },
    "jose-elias-alvarez/null-ls.nvim",
    "max397574/better-escape.nvim",
    "akinsho/bufferline.nvim",
    "lukas-reineke/indent-blankline.nvim",
    {
        "glepnir/lspsaga.nvim",
        event = "BufRead",
        dependencies = { { "nvim-tree/nvim-web-devicons" } }
    },
    -- Better buffer closing
    "famiu/bufdelete.nvim",
    "lewis6991/gitsigns.nvim",
    "dinhhuy258/git.nvim",
    "rcarriga/nvim-notify",
    "yamatsum/nvim-cursorline",
    "numToStr/Comment.nvim",
    -- Auto rename tag html
    "AndrewRadev/tagalong.vim",
    -- Standalone UI for nvim-lsp progress
    "j-hui/fidget.nvim",
    -- Surround
    "kylechui/nvim-surround",
    -- Tmux
    "aserowy/tmux.nvim",
    -- Highlight color
    "brenoprata10/nvim-highlight-colors",
    -- Vim diff
    {
        "sindrets/diffview.nvim",
        build = "nvim-lua/plenary.nvim"
    },
    {
        "iamcco/markdown-preview.nvim",
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    "kevinhwang91/rnvimr",
    "ThePrimeagen/harpoon",
    "vimwiki/vimwiki"
}