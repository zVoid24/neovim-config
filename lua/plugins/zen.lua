return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      width = 0.65,
    },
    plugins = {
      twilight = { enabled = true },
    },
  },
  keys = {
    { "<leader>zz", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
  },
}
