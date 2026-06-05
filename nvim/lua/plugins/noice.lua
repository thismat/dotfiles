-- lua/plugins/noice.lua
return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      format = {
        cmdline = { view = "cmdline_popup" },
        search_down = { view = "cmdline" },
        search_up = { view = "cmdline" },
      },
    },
    views = {
      cmdline_popup = {
        border = { style = "none", padding = { 1, 1 } },
        filter_options = {},
        win_options = {
          winhighlight = "Normal:Normal,FloatBorder:Normal",
        },
      },
    },
  },
}
