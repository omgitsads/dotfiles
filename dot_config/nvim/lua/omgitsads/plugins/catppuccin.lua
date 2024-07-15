return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "frappe",
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true
        }
      })
      vim.cmd("colorscheme catppuccin")
    end
  }
}
