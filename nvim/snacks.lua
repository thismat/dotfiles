return {
  "folke/snacks.nvim",
  opts = {
    notifier = {
      enabled = true,
      timeout = 2000,
      width = { min = 20, max = 0.3 }, -- max 30% of screen width
      height = { min = 1, max = 0.6 },
      margin = { top = 0, right = 1, bottom = 1 }, -- hug bottom-right
      padding = false, -- remove inner padding
      sort = { "level", "added" },
      level = vim.log.levels.WARN, -- hide info noise
      style = "minimal", -- no border, no icons, very plain
    },
  },
}
