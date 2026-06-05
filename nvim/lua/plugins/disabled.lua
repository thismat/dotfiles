return {
  {
    "folke/snacks.nvim",
    --@type sncaks.Config
    opts = {
      animate = {
        enabled = false,
      },
      scroll = {
        enabled = false,
      },
      indent = {
        animate = {
          enabled = false,
        },
        enabled = true,
        char = "/",
        scope = {
          enabled = false,
          underline = true,
          char = "-",
        },
        chunk = {
          enabled = true,
        },
      },
    },
  },
}
