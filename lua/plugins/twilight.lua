return {
  "folke/twilight.nvim",
  opts = {
    dimming = {
      alpha = 0.25, -- lower = more dim
    },
    context = 15, -- lines of context around cursor
    treesitter = true,
    expand = {
      "function",
      "method",
      "class",
    },
  },
  keys = {
    { "<leader>tw", "<cmd>Twilight<cr>", desc = "Toggle Twilight" },
  },
}
