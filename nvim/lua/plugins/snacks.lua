return {
  "folke/snacks.nvim",
  opts = {
    notifier = {
      enabled = true,
      timeout = 5000,
      width = { min = 20, max = 0.3 },
      height = { min = 1, max = 0.6 },
      margin = { top = 0, right = 1, bottom = 1 },
      padding = true,
      sort = { "level", "added" },
      level = vim.log.levels.WARN,
      style = "minimal",
    },
  },
}
