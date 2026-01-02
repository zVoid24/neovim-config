return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require("telescope")
      telescope.setup({})
      telescope.load_extension("file_browser")
    end,
    keys = {
      -- Open folder browser at current file's directory
      {
        "<leader>fb",
        function()
          local telescope = require("telescope")
          local fb = telescope.extensions.file_browser
          fb.file_browser({
            path = vim.fn.expand("%:p:h"),
            cwd = vim.fn.expand("%:p:h"),
            respect_gitignore = false,
            hidden = true,
            grouped = true,
            previewer = false,
            initial_mode = "normal",
          })
        end,
        desc = "Browse files (folder view)",
      },
    },
  },
}
